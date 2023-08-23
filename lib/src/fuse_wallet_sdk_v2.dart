import 'dart:async';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';
import 'package:web3dart/crypto.dart';

import 'package:fuse_wallet_sdk/src/modules/modules.dart';

/// The main SDK class for interacting with FuseBox.
///
/// Provides methods for wallet interaction, calling contracts, and managing tokens.
class FuseSDK {
  /// Creates a new FuseSDK instance.
  ///
  /// [publicApiKey] API key for accessing Fuse endpoints.
  /// [credentials] Private key for wallet signing.
  FuseSDK(
    String publicApiKey,
    EthPrivateKey credentials,
  ) : _dio = Dio(
          BaseOptions(
            baseUrl: Uri.https(Variables.BASE_URL, '/api').toString(),
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

  late final EtherspotWallet wallet;

  late final IClient client;

  final Dio _dio;

  late ExplorerModule _explorerModule;
  late TradeModule _tradeModule;
  late StakingModule _stakingModule;
  late NftModule _nftModule;

  /// Initializes the SDK with the provided parameters.
  ///
  /// [publicApiKey] is the public API key used for authenticating with Fuse's backend services.
  /// [credentials] provides the Ethereum private key for signing transactions.
  ///
  /// The optional parameters [withPaymaster] and [paymasterContext] are used for handling
  /// Ethereum gas payment on behalf of users.
  static Future<FuseSDK> init(
    String publicApiKey,
    EthPrivateKey credentials, {
    bool withPaymaster = false,
    Map<String, dynamic>? paymasterContext,
    IPresetBuilderOpts? opts,
  }) async {
    final fuseSDK = FuseSDK(publicApiKey, credentials);

    final bundlerRpc = Uri.https(Variables.BASE_URL, '/api/v0/bundler', {
      'apiKey': publicApiKey,
    }).toString();

    UserOperationMiddlewareFn? paymasterMiddleware;
    if (withPaymaster) {
      final paymasterRpc = Uri.https(
        Variables.BASE_URL,
        '/api/v0/paymaster',
        {'apiKey': publicApiKey},
      ).toString();
      paymasterMiddleware = verifyingPaymaster(
        paymasterRpc,
        paymasterContext ?? {},
      );
    }

    fuseSDK.wallet = await EtherspotWallet.init(
      credentials,
      bundlerRpc,
      opts: IPresetBuilderOpts()
        ..entryPoint = opts?.entryPoint
        ..salt = opts?.salt
        ..factoryAddress = opts?.factoryAddress
        ..paymasterMiddleware = opts?.paymasterMiddleware ?? paymasterMiddleware
        ..overrideBundlerRpc = opts?.overrideBundlerRpc,
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

  ExplorerModule get explorerModule => _explorerModule;

  TradeModule get tradeModule => _tradeModule;

  StakingModule get stakingModule => _stakingModule;

  NftModule get nftModule => _nftModule;

  bool _isNativeToken(String address) {
    return address.toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase();
  }

  Future<ISendUserOperationResponse> _executeUserOperation(
    EthereumAddress address,
    BigInt value,
    Uint8List callData,
  ) async {
    final userOp = await wallet.execute(
      Call(
        to: address,
        value: value,
        data: callData,
      ),
    );
    return client.sendUserOperation(userOp);
  }

  Future<ISendUserOperationResponse> _processTokenOperation({
    required EthereumAddress tokenAddress,
    required EthereumAddress to,
    required BigInt amount,
    required Uint8List callData,
  }) async {
    if (_isNativeToken(tokenAddress.toString())) {
      return _executeUserOperation(to, amount, Uint8List(0));
    } else {
      return _executeUserOperation(tokenAddress, BigInt.zero, callData);
    }
  }

  Future<ISendUserOperationResponse> _processOperation({
    required EthereumAddress tokenAddress,
    required EthereumAddress spender,
    required Uint8List callData,
    BigInt? amount,
  }) async {
    if (_isNativeToken(tokenAddress.toString())) {
      return _executeUserOperation(spender, amount!, callData);
    }

    final tokenAllowance = await getAllowance(tokenAddress, spender);
    if (tokenAllowance >= amount!) {
      return _executeUserOperation(spender, BigInt.zero, callData);
    } else {
      return approveTokenAndCallContract(
        tokenAddress,
        spender,
        amount,
        callData,
      );
    }
  }

  Future<ISendUserOperationResponse> callContract(
    EthereumAddress to,
    BigInt value,
    Uint8List data,
  ) async {
    final userOp = await wallet.execute(
      Call(
        to: to,
        value: value,
        data: data,
      ),
    );

    return client.sendUserOperation(userOp);
  }

  /// Transfers ETH/ERC20 tokens to a given address.
  ///
  /// [tokenAddress] is the address of the token.
  /// [recipientAddress] is the recipient's address.
  /// [amount] is the amount to transfer.
  Future<ISendUserOperationResponse> transferToken(
    EthereumAddress tokenAddress,
    EthereumAddress recipientAddress,
    BigInt amount,
  ) async {
    final callData = ContractsHelper.encodedDataForContractCall(
      'ERC20',
      tokenAddress.toString(),
      'transfer',
      [recipientAddress, amount],
      include0x: true,
    );

    return _processTokenOperation(
      tokenAddress: tokenAddress,
      to: recipientAddress,
      amount: amount,
      callData: callData,
    );
  }

  /// Approves a spender to spend a specific amount of a ERC20 token.
  ///
  /// [tokenAddress] is the address of the token.
  /// [spender] is the address of the spender.
  /// [amount] is the amount to approve.
  Future<ISendUserOperationResponse> approveToken(
    EthereumAddress tokenAddress,
    EthereumAddress spender,
    BigInt amount,
  ) {
    final callData = ContractsHelper.encodedDataForContractCall(
      'ERC20',
      tokenAddress.toString(),
      'approve',
      [spender, amount],
      include0x: true,
    );
    return _executeUserOperation(
      tokenAddress,
      BigInt.zero,
      callData,
    );
  }

  /// Transfers an NFT.
  ///
  /// [nftContractAddress] The NFT contract address.
  /// [recipientAddress] The recipient address.
  /// [tokenId] The token ID to transfer.
  /// [isSafe] Whether to use safeTransferFrom.
  /// [data] Optional data parameter.
  Future<ISendUserOperationResponse> transferNFT(
    EthereumAddress nftContractAddress,
    EthereumAddress recipientAddress,
    num tokenId, {
    bool isSafe = false,
    String? data,
  }) async {
    final params = [
      EthereumAddress.fromHex(wallet.getSender()),
      recipientAddress,
      BigInt.from(tokenId),
    ];

    if (data != null) {
      params.add(hexToBytes(data));
    }

    final callData = hexToBytes(
      ContractsUtils.encodedDataForContractCall(
        'ERC721',
        nftContractAddress.toString(),
        isSafe ? 'safeTransferFrom' : 'transferFrom',
        params,
        include0x: true,
      ),
    );

    return _executeUserOperation(
      nftContractAddress,
      BigInt.zero,
      callData,
    );
  }

  /// Approves tokens and makes a contract call.
  ///
  /// [tokenAddress] The token contract address.
  /// [spender] The contract address.
  /// [value] The amount to approve.
  /// [callData] The encoded function call data.
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
      [spender, value],
      include0x: true,
    );
    final calls = [
      Call(
        to: tokenAddress,
        value: BigInt.zero,
        data: approveCallData,
      ),
      Call(
        to: spender,
        value: BigInt.zero,
        data: callData,
      ),
    ];

    final batchOp = await wallet.executeBatch(calls);

    return client.sendUserOperation(batchOp);
  }

  /// Performs a token swap operation.
  ///
  /// [tradeRequestBody] The swap parameters.
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

    final tokenDetails = await getERC20TokenDetails(
      tradeRequestBody.currencyIn,
    );

    final amount = AmountFormat.toBigInt(
      tradeRequestBody.amountIn,
      tokenDetails.decimals,
    );

    return _processOperation(
      tokenAddress: EthereumAddress.fromHex(tradeRequestBody.currencyIn),
      spender: spender,
      callData: callData,
      amount: amount,
    );
  }

  void _handleModuleError(DC response) {
    if (response.hasError) {
      throw response.error!;
    }
  }

  /// Stakes tokens into a contract.
  ///
  /// [stakeRequestBody] The staking parameters
  Future<ISendUserOperationResponse> stakeToken(
    StakeRequestBody stakeRequestBody,
  ) async {
    final response = await _stakingModule.stake(stakeRequestBody);
    _handleModuleError(response);

    final tokenDetails = await getERC20TokenDetails(
      stakeRequestBody.tokenAddress,
    );

    final amount = AmountFormat.toBigInt(
      stakeRequestBody.tokenAmount,
      tokenDetails.decimals,
    );
    final stakeCallData = hexToBytes(
      response.data!.encodedABI,
    );

    final spender = EthereumAddress.fromHex(
      response.data!.contractAddress,
    );

    return _processOperation(
      tokenAddress: EthereumAddress.fromHex(stakeRequestBody.tokenAddress),
      spender: spender,
      callData: stakeCallData,
      amount: amount,
    );
  }

  /// Unstake tokens from a contract.
  ///
  /// [unstakeRequestBody] The unstake parameters.
  Future<ISendUserOperationResponse> unstakeToken(
    UnstakeRequestBody unstakeRequestBody,
    String unStakeTokenAddress,
  ) async {
    final response = await _stakingModule.unstake(unstakeRequestBody);
    _handleModuleError(response);

    final tokenDetails = await getERC20TokenDetails(
      unstakeRequestBody.tokenAddress,
    );

    final amount = AmountFormat.toBigInt(
      unstakeRequestBody.tokenAmount,
      tokenDetails.decimals,
    );

    final spender = EthereumAddress.fromHex(
      response.data!.contractAddress,
    );

    final unstakeCallData = hexToBytes(response.data!.encodedABI);

    return _processOperation(
      tokenAddress: EthereumAddress.fromHex(unStakeTokenAddress),
      spender: spender,
      callData: unstakeCallData,
      amount: amount,
    );
  }

  Future<BigInt> _getNativeBalance(
    EthereumAddress address,
  ) async {
    final web3client = wallet.proxy.client;
    final etherAmount = await web3client.getBalance(address);

    return etherAmount.getInWei;
  }

  /// Fetches the balance of the user for a given token.
  ///
  /// [tokenAddress] is the address of the token.
  /// [address] is the address of the user.
  Future<BigInt> getBalance(
    EthereumAddress tokenAddress,
    EthereumAddress address,
  ) async {
    if (_isNativeToken(address.toString())) {
      return _getNativeBalance(address);
    }

    return ContractsUtils.readFromContractWithFirstResult(
      client: wallet.proxy.client,
      contractName: 'BasicToken',
      contractAddress: tokenAddress.toString(),
      functionName: 'balanceOf',
      params: [address],
    );
  }

  /// Gets the token allowance for an address and spender.
  ///
  /// [tokenAddress] The token contract address.
  /// [spender] The spender address.
  Future<BigInt> getAllowance(
    EthereumAddress tokenAddress,
    EthereumAddress spender,
  ) {
    return ContractsUtils.readFromContractWithFirstResult(
      client: wallet.proxy.client,
      contractName: 'BasicToken',
      contractAddress: tokenAddress.toString(),
      functionName: 'allowance',
      params: [
        EthereumAddress.fromHex(wallet.getSender()),
        spender,
      ],
    );
  }

  /// Gets metadata for an ERC20 token.
  ///
  /// [tokenAddress] The token contract address.
  Future<TokenDetails> getERC20TokenDetails(String tokenAddress) async {
    if (tokenAddress.toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      return Native(amount: BigInt.zero);
    }
    final toRead = ['name', 'symbol', 'decimals'];
    final token = await Future.wait(
      toRead.map(
        (function) => ContractsUtils.readFromContract(
          wallet.proxy.client,
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
