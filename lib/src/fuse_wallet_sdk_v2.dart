import 'dart:async';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:userop/userop.dart' hide ABI;
import 'package:web3dart/crypto.dart';

import 'package:fuse_wallet_sdk/src/constants/variables.dart';
import 'package:fuse_wallet_sdk/src/modules/modules.dart';

import 'constants/abis.dart';
import 'models/models.dart';
import 'utils/contracts.dart';
import 'utils/format.dart';

class FuseSDK {
  late SimpleAccount simpleAccount;

  late IClient client;

  final Dio _dio;

  FuseSDK(
    String publicApiKey,
    EthPrivateKey credentials, {
    IPresetBuilderOpts? opts,
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: Uri.https(Variables.STAGING_BASE_URL, '/api').toString(),
            headers: {
              'Content-Type': 'application/json',
            },
            queryParameters: {
              'apiKey': publicApiKey,
            },
          ),
        ) {
    _initializeModules();
  }

  static Future<FuseSDK> init(
    String publicApiKey,
    EthPrivateKey credentials, {
    bool withPaymaster = false,
    Map<String, dynamic>? paymasterContext,
  }) async {
    final FuseSDK fuseSDK = FuseSDK(
      publicApiKey,
      credentials,
    );
    final bundlerRpc =
        Uri.https(Variables.STAGING_BASE_URL, '/api/v0/bundler', {
      'apiKey': publicApiKey,
    }).toString();

    final paymasterRpc =
        Uri.https(Variables.STAGING_BASE_URL, '/api/v0/paymaster', {
      'apiKey': publicApiKey,
    }).toString();

    final paymasterMiddleware = withPaymaster
        ? verifyingPaymaster(
            paymasterRpc,
            paymasterContext ?? {},
          )
        : null;

    fuseSDK.simpleAccount = await SimpleAccount.init(
      credentials,
      bundlerRpc,
      opts: IPresetBuilderOpts()..paymasterMiddleware = paymasterMiddleware,
    );
    fuseSDK.client = await Client.init(bundlerRpc);

    return fuseSDK;
  }

  void _initializeModules() {
    _tradeModule = TradeModule(_dio);
    _explorerModule = ExplorerModule(_dio);
    _stakingModule = StakingModule(_dio);
    _nftModule = NftModule(_dio);
  }

  late ExplorerModule _explorerModule;
  late TradeModule _tradeModule;
  late StakingModule _stakingModule;
  late NftModule _nftModule;

  ExplorerModule get explorerModule => _explorerModule;

  TradeModule get tradeModule => _tradeModule;

  StakingModule get stakingModule => _stakingModule;

  NftModule get nftModule => _nftModule;

  Future<ISendUserOperationResponse> transferToken(
    EthereumAddress tokenAddress,
    EthereumAddress recipientAddress,
    BigInt amount,
  ) async {
    if (tokenAddress.toString().toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      final userOp = await simpleAccount.execute(
        recipientAddress,
        amount,
        Uint8List(0),
      );

      return client.sendUserOperation(userOp);
    } else {
      final callData = ContractsHelper.encodedDataForContractCall(
        'ERC20',
        tokenAddress.toString(),
        'transfer',
        [
          recipientAddress,
          amount,
        ],
        include0x: true,
      );
      final userOp = await simpleAccount.execute(
        tokenAddress,
        BigInt.zero,
        callData,
      );

      return client.sendUserOperation(userOp);
    }
  }

  Future<ISendUserOperationResponse> approveToken(
    EthereumAddress tokenAddress,
    EthereumAddress spender,
    BigInt amount,
  ) async {
    final callData = ContractsHelper.encodedDataForContractCall(
      'ERC20',
      tokenAddress.toString(),
      'approve',
      [
        spender,
        amount,
      ],
      include0x: true,
    );
    final userOp = await simpleAccount.execute(
      tokenAddress,
      BigInt.zero,
      callData,
    );

    return client.sendUserOperation(userOp);
  }

  Future<ISendUserOperationResponse> callContract(
    EthereumAddress to,
    BigInt value,
    Uint8List data,
  ) async {
    final userOp = await simpleAccount.execute(
      to,
      value,
      data,
    );

    return client.sendUserOperation(userOp);
  }

  Future<ISendUserOperationResponse> transferNFT(
    EthereumAddress nftContractAddress,
    EthereumAddress recipientAddress,
    num tokenId, {
    bool isSafe = false,
    String? data,
  }) async {
    final params = [
      EthereumAddress.fromHex(simpleAccount.getSender()),
      recipientAddress,
      BigInt.from(tokenId),
    ];

    if (data != null) {
      params.add(hexToBytes(data));
    }

    final callData = ContractsHelper.encodedDataForContractCall(
      'ERC721',
      nftContractAddress.toString(),
      isSafe ? 'safeTransferFrom' : 'transferFrom',
      params,
      include0x: true,
      jsonInterface: ABI.get('ERC721'),
    );
    final userOp = await simpleAccount.execute(
      nftContractAddress,
      BigInt.zero,
      callData,
    );

    return client.sendUserOperation(userOp);
  }

  Future<ISendUserOperationResponse> approveTokenAndCallContract(
    EthereumAddress tokenAddress,
    EthereumAddress spender,
    BigInt value,
    Uint8List callData,
  ) async {
    final approveCallData = ContractsHelper.encodedDataForContractCall(
      'ERC20',
      tokenAddress.toString(),
      'approve',
      [
        spender,
        value,
      ],
      include0x: true,
    );
    final batchOp = await simpleAccount.executeBatch(
      [
        tokenAddress,
        spender,
      ],
      [
        approveCallData,
        callData,
      ],
    );

    return client.sendUserOperation(batchOp);
  }

  Future<ISendUserOperationResponse> swapTokens(
    TradeRequestBody tradeRequestBody,
  ) async {
    final swapCallParameters = await _tradeModule.requestParameters(
      tradeRequestBody,
    );

    final spender = EthereumAddress.fromHex(
      swapCallParameters.data?.rawTxn['to'],
    );

    final callData = hexToBytes(swapCallParameters.data?.rawTxn['data']);

    if (tradeRequestBody.currencyIn.toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      final userOp = await simpleAccount.execute(
        spender,
        BigInt.parse(swapCallParameters.data!.value),
        callData,
      );

      return client.sendUserOperation(userOp);
    } else {
      final tokenDetailsRes = await getERC20TokenDetails(
        tradeRequestBody.currencyIn,
      );

      final amount = AmountFormat.toBigInt(
        tradeRequestBody.amountIn,
        tokenDetailsRes.decimals,
      );

      final allowance = await getAllowance(
        EthereumAddress.fromHex(tradeRequestBody.currencyIn),
        spender,
      );

      if (allowance >= amount) {
        final userOp = await simpleAccount.execute(
          spender,
          BigInt.zero,
          callData,
        );

        return client.sendUserOperation(userOp);
      } else {
        return approveTokenAndCallContract(
          EthereumAddress.fromHex(tradeRequestBody.currencyIn),
          spender,
          amount,
          callData,
        );
      }
    }
  }

  Future<ISendUserOperationResponse> stakeToken(
    StakeRequestBody stakeRequestBody,
  ) async {
    final response = await _stakingModule.stake(stakeRequestBody);
    if (response.hasError) {
      throw response.error!;
    }

    final tokenDetailsRes = await getERC20TokenDetails(
      stakeRequestBody.tokenAddress,
    );

    final BigInt amount = AmountFormat.toBigInt(
      stakeRequestBody.tokenAmount,
      tokenDetailsRes.decimals,
    );

    final spender = EthereumAddress.fromHex(
      response.data!.contractAddress,
    );

    final stakeCallData = hexToBytes(response.data!.encodedABI);
    if (stakeRequestBody.tokenAddress.toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      final userOp = await simpleAccount.execute(
        spender,
        amount,
        stakeCallData,
      );
      return await client.sendUserOperation(
        userOp,
      );
    } else {
      final allowance = await getAllowance(
        EthereumAddress.fromHex(stakeRequestBody.tokenAddress),
        spender,
      );

      if (allowance >= amount) {
        final userOp = await simpleAccount.execute(
          spender,
          BigInt.zero,
          stakeCallData,
        );
        return client.sendUserOperation(userOp);
      } else {
        return approveTokenAndCallContract(
          EthereumAddress.fromHex(stakeRequestBody.tokenAddress),
          spender,
          amount,
          stakeCallData,
        );
      }
    }
  }

  Future<ISendUserOperationResponse> unstakeToken(
    UnstakeRequestBody unstakeRequestBody,
  ) async {
    final response = await _stakingModule.unstake(unstakeRequestBody);
    if (response.hasError) {
      throw response.error!;
    }

    final tokenDetailsRes = await getERC20TokenDetails(
      unstakeRequestBody.tokenAddress,
    );

    final BigInt amount = AmountFormat.toBigInt(
      unstakeRequestBody.tokenAmount,
      tokenDetailsRes.decimals,
    );

    final spender = EthereumAddress.fromHex(
      response.data!.contractAddress,
    );

    final unstakeCallData = hexToBytes(response.data!.encodedABI);

    if (unstakeRequestBody.tokenAddress.toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      final userOp = await simpleAccount.execute(
        spender,
        amount,
        unstakeCallData,
      );

      return client.sendUserOperation(userOp);
    } else {
      final allowance = await getAllowance(
        EthereumAddress.fromHex(unstakeRequestBody.tokenAddress),
        spender,
      );

      if (allowance >= amount) {
        final userOp = await simpleAccount.execute(
          EthereumAddress.fromHex(unstakeRequestBody.tokenAddress),
          BigInt.zero,
          unstakeCallData,
        );

        return client.sendUserOperation(userOp);
      } else {
        return approveTokenAndCallContract(
          EthereumAddress.fromHex(unstakeRequestBody.tokenAddress),
          EthereumAddress.fromHex(response.data!.contractAddress),
          amount,
          unstakeCallData,
        );
      }
    }
  }

  Future<BigInt> _getNativeBalance(
    EthereumAddress address,
  ) async {
    final etherAmount = await simpleAccount.proxy.client.getBalance(address);

    return etherAmount.getInWei;
  }

  Future<BigInt> getBalance(
    EthereumAddress tokenAddress,
    EthereumAddress address,
  ) async {
    if (tokenAddress.toString().toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      return _getNativeBalance(address);
    }

    final List<dynamic> response = await ContractsUtils.readFromContract(
      simpleAccount.proxy.client,
      'BasicToken',
      tokenAddress.toString(),
      'balanceOf',
      [address],
    );

    return response.first as BigInt;
  }

  Future<BigInt> getAllowance(
    EthereumAddress tokenAddress,
    EthereumAddress spender,
  ) async {
    final List<dynamic> response = await ContractsUtils.readFromContract(
      simpleAccount.proxy.client,
      'BasicToken',
      tokenAddress.toString(),
      'allowance',
      [
        EthereumAddress.fromHex(simpleAccount.getSender()),
        spender,
      ],
    );

    return response.first as BigInt;
  }

  Future<TokenDetails> getERC20TokenDetails(String tokenAddress) async {
    final toRead = ['name', 'symbol', 'decimals'];
    final token = await Future.wait(
      toRead.map(
        (function) => ContractsUtils.readFromContract(
          simpleAccount.proxy.client,
          'BasicToken',
          tokenAddress.toString(),
          function,
          [],
        ),
      ),
    );

    return TokenDetails.fromJson({
      'contractAddress': tokenAddress,
      'name': token[0].first,
      'symbol': token[1].first,
      'decimals': token[2].first.toString(),
      'balance': '0',
      'type': 'ERC-20'
    });
  }
}
