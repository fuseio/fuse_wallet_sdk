import 'dart:async';
import 'dart:typed_data';
// import 'dart:convert';

// import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';
// import 'package:hex/hex.dart';
// import 'package:http/http.dart' as http;
import 'package:userop/userop.dart' hide ABI;
import 'package:web3dart/crypto.dart';
// import 'package:web3dart/web3dart.dart';

import 'package:fuse_wallet_sdk/src/constants/variables.dart';
// import 'package:fuse_wallet_sdk/src/models/models.dart';
import 'package:fuse_wallet_sdk/src/modules/modules.dart';
// import 'package:fuse_wallet_sdk/src/utils/utils.dart';

import 'constants/abis.dart';
import 'models/models.dart';
import 'utils/contracts.dart';
import 'utils/format.dart';

class FuseSDK {
  /// The smart wallet associated with the authenticated user.
  late SimpleAccount simpleAccount;

  /// The smart wallet associated with the authenticated user.
  late IClient client;

  /// The Dio client used for API calls.
  final Dio _dio;

  /// Constructs a new instance of [FuseSDK].
  ///
  /// [publicApiKey] is the public API key used to access the Fuse API.
  /// [rpcUrl] is the URL of the Ethereum JSON-RPC endpoint. Default value is taken from [Variables.FUSE_RPC_URL].
  FuseSDK(
    String publicApiKey,
    EthPrivateKey credentials, {
    IPresetBuilderOpts? opts,
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: Variables.STAGING_BASE_URL,
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
    publicApiKey,
    credentials, {
    bool withPaymaster = false,
    Map<String, dynamic>? paymasterContext,
  }) async {
    final FuseSDK fuseSDK = FuseSDK(
      publicApiKey,
      credentials,
    );
    final bundlerRpc = Uri.https(Variables.STAGING_BASE_URL, '/api/v0/bundler', {
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
    final res = await client.sendUserOperation(
      userOp,
    );
    return res;
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
    final res = await client.sendUserOperation(
      userOp,
    );
    return res;
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
    final res = await client.sendUserOperation(
      userOp,
    );
    return res;
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
    final res = await client.sendUserOperation(
      userOp,
    );
    return res;
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
    return client.sendUserOperation(
      batchOp,
    );
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
      return await client.sendUserOperation(
        userOp,
      );
    } else {
      final tokenDetailsRes = await _explorerModule.getTokenDetails(
        tradeRequestBody.currencyIn,
      );

      if (tokenDetailsRes.hasError) {
        throw tokenDetailsRes.error!;
      }

      final amount = AmountFormat.toBigInt(
        tradeRequestBody.amountIn,
        tokenDetailsRes.data!.decimals,
      );

      final allowance = await getAllowance(
        EthereumAddress.fromHex(tradeRequestBody.currencyIn),
        spender,
      );

      if (allowance.compareTo(amount) == 1) {
        final userOp = await simpleAccount.execute(
          spender,
          BigInt.zero,
          callData,
        );
        return client.sendUserOperation(
          userOp,
        );
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

    final tokenDetailsRes = await _explorerModule.getTokenDetails(
      stakeRequestBody.tokenAddress,
    );

    if (tokenDetailsRes.hasError) {
      throw tokenDetailsRes.error!;
    }

    final BigInt amount = AmountFormat.toBigInt(
      stakeRequestBody.tokenAmount,
      tokenDetailsRes.data!.decimals,
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

      if (allowance.compareTo(amount) == 1) {
        final userOp = await simpleAccount.execute(
          EthereumAddress.fromHex(stakeRequestBody.tokenAddress),
          BigInt.zero,
          stakeCallData,
        );
        return await client.sendUserOperation(
          userOp,
        );
      } else {
        return await approveTokenAndCallContract(
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

    final tokenDetailsRes = await _explorerModule.getTokenDetails(
      unstakeRequestBody.tokenAddress,
    );

    if (tokenDetailsRes.hasError) {
      throw tokenDetailsRes.error!;
    }

    final BigInt amount = AmountFormat.toBigInt(
      unstakeRequestBody.tokenAmount,
      tokenDetailsRes.data!.decimals,
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
      return client.sendUserOperation(
        userOp,
      );
    } else {
      final allowance = await getAllowance(
        EthereumAddress.fromHex(unstakeRequestBody.tokenAddress),
        spender,
      );

      if (allowance.compareTo(amount) == 1) {
        final userOp = await simpleAccount.execute(
          EthereumAddress.fromHex(unstakeRequestBody.tokenAddress),
          BigInt.zero,
          unstakeCallData,
        );
        return client.sendUserOperation(
          userOp,
        );
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
    String address,
  ) async {
    final etherAmount = await simpleAccount.proxy.client.getBalance(
      EthereumAddress.fromHex(address),
    );
    return etherAmount.getInWei;
  }

  Future<BigInt> getBalance(
    String tokenAddress,
    String address,
  ) async {
    if (tokenAddress.toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      return _getNativeBalance(address);
    }
    final List<dynamic> response = await ContractsUtils.readFromContract(
      simpleAccount.proxy.client,
      'BasicToken',
      tokenAddress,
      'balanceOf',
      [EthereumAddress.fromHex(address)],
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
}
