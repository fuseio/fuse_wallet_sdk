import 'dart:async';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';
import 'package:web3dart/crypto.dart';

import 'package:fuse_wallet_sdk/src/modules/modules.dart';
import 'package:web3dart/json_rpc.dart';

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

  static final TxOptions defaultOptions = TxOptions(
    feePerGas: '1000000',
    feeIncrementPercentage: 10,
  );

  late String _jwtToken;

  late final EtherspotWallet wallet;

  late final IClient client;

  final Dio _dio;

  late ExplorerModule _explorerModule;
  late TradeModule _tradeModule;
  late StakingModule _stakingModule;
  late NftModule _nftModule;

  ExplorerModule get explorerModule => _explorerModule;

  TradeModule get tradeModule => _tradeModule;

  StakingModule get stakingModule => _stakingModule;

  NftModule get nftModule => _nftModule;

  void _initializeModules() {
    _tradeModule = TradeModule(_dio);
    _explorerModule = ExplorerModule(_dio);
    _stakingModule = StakingModule(_dio);
    _nftModule = NftModule(_dio);
  }

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
    IClientOpts? clientOpts,
  }) async {
    final fuseSDK = FuseSDK(publicApiKey);

    UserOperationMiddlewareFn? paymasterMiddleware;
    if (withPaymaster) {
      paymasterMiddleware = _getPaymasterMiddleware(
        publicApiKey,
        paymasterContext,
      );
    }

    fuseSDK.wallet = await _initializeWallet(
      credentials,
      publicApiKey,
      opts,
      paymasterMiddleware,
    );

    await fuseSDK.authenticate(credentials);

    fuseSDK.client = await Client.init(
      _getBundlerRpc(publicApiKey),
      opts: clientOpts,
    );

    return fuseSDK;
  }

  Future<String> authenticate(EthPrivateKey credentials) async {
    final AuthDto auth = SmartWalletAuth.signer(
      credentials,
      smartWalletAddress: wallet.getSender(),
    );
    final Response response = await _dio.post(
      '/v2/smart-wallets/auth',
      data: auth.toJson(),
    );
    _jwtToken = response.data['jwt'];
    return response.data['jwt'];
  }

  /// Transfers ETH/ERC20 tokens to a given address.
  ///
  /// [tokenAddress] is the address of the token.
  /// [recipientAddress] is the recipient's address.
  /// [amount] is the amount to transfer.
  Future<ISendUserOperationResponse> transferToken(
    EthereumAddress tokenAddress,
    EthereumAddress recipientAddress,
    BigInt amount, [
    TxOptions? options,
  ]) async {
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
      options: options,
    );
  }

  /// Transfers an NFT.
  ///
  /// [nftContractAddress] The NFT contract address.
  /// [recipientAddress] The recipient address.
  /// [tokenId] The token ID to transfer.
  /// [isSafe] Whether to use safeTransferFrom. Defaults to false.
  /// [data] Additional data with no specified format, sent in call to `_to`. Defaults to null.
  Future<ISendUserOperationResponse> transferNFT(
    EthereumAddress nftContractAddress,
    EthereumAddress recipientAddress,
    num tokenId, [
    bool isSafe = false,
    String? data,
    TxOptions? options,
  ]) async {
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
      Call(
        to: nftContractAddress,
        value: BigInt.zero,
        data: callData,
      ),
      options,
    );
  }

  /// Executes a batch transaction on the network.
  ///
  /// [calls] The list of calls.
  Future<ISendUserOperationResponse> executeBatch(
    List<Call> calls, [
    TxOptions? options,
  ]) async {
    options ??= defaultOptions;
    final initialFee = BigInt.parse(options.feePerGas);
    setWalletFees(initialFee);

    try {
      final userOp = await wallet.executeBatch(calls);

      return await client.sendUserOperation(userOp);
    } on RPCError catch (e) {
      if (e.message.contains('fee too low')) {
        final increasedFee = _increaseFeeByPercentage(
          initialFee,
          options.feeIncrementPercentage,
        );
        setWalletFees(increasedFee);

        try {
          final userOpRetry = await wallet.executeBatch(calls);

          return await client.sendUserOperation(userOpRetry);
        } catch (e) {
          rethrow;
        }
      } else {
        rethrow;
      }
    }
  }

  /// Approves a spender to spend a specific amount of a ERC20 token.
  ///
  /// [tokenAddress] is the address of the token.
  /// [spender] is the address of the spender.
  /// [amount] is the amount to approve.
  Future<ISendUserOperationResponse> approveToken(
    EthereumAddress tokenAddress,
    EthereumAddress spender,
    BigInt amount, [
    TxOptions? options,
  ]) {
    final callData = ContractsHelper.encodedDataForContractCall(
      'ERC20',
      tokenAddress.toString(),
      'approve',
      [spender, amount],
      include0x: true,
    );

    return _executeUserOperation(
      Call(
        to: tokenAddress,
        value: BigInt.zero,
        data: callData,
      ),
      options,
    );
  }

  Future<ISendUserOperationResponse> callContract(
    EthereumAddress to,
    BigInt value,
    Uint8List data, [
    TxOptions? options,
  ]) async {
    return _executeUserOperation(
      Call(
        to: to,
        value: value,
        data: data,
      ),
      options,
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
    Uint8List callData, [
    TxOptions? options,
  ]) async {
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

    return executeBatch(calls, options);
  }

  /// Performs a token swap operation.
  ///
  /// [tradeRequestBody] The swap parameters.
  Future<ISendUserOperationResponse> swapTokens(
    TradeRequestBody tradeRequestBody, [
    TxOptions? options,
  ]) async {
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
      options: options,
    );
  }

  /// Stakes tokens into a contract.
  ///
  /// [stakeRequestBody] The staking parameters
  Future<ISendUserOperationResponse> stakeToken(
    StakeRequestBody stakeRequestBody, [
    TxOptions? options,
  ]) async {
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
      options: options,
    );
  }

  /// Unstake tokens from a contract.
  ///
  /// [unstakeRequestBody] The unstake parameters.
  Future<ISendUserOperationResponse> unstakeToken(
    UnstakeRequestBody unstakeRequestBody,
    String unStakeTokenAddress, [
    TxOptions? options,
  ]) async {
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
      options: options,
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

  bool _isNativeToken(String address) {
    return address.toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase();
  }

  BigInt _increaseFeeByPercentage(BigInt fee, int percentage) {
    return fee + BigInt.from(fee * BigInt.from(percentage) / BigInt.from(100));
  }

  void setWalletFees(BigInt fee) {
    wallet.setMaxFeePerGas(fee);
    wallet.setMaxPriorityFeePerGas(fee);
  }

  Future<ISendUserOperationResponse> _executeUserOperation(
    Call call, [
    TxOptions? options,
  ]) async {
    options ??= defaultOptions;
    final initialFee = BigInt.parse(options.feePerGas);
    setWalletFees(initialFee);

    try {
      final userOp = await wallet.execute(call);

      return await client.sendUserOperation(userOp);
    } on RPCError catch (e) {
      if (e.message.contains('fee too low')) {
        final increasedFee = _increaseFeeByPercentage(
          initialFee,
          options.feeIncrementPercentage,
        );
        setWalletFees(increasedFee);

        try {
          final userOpRetry = await wallet.execute(call);
          return await client.sendUserOperation(userOpRetry);
        } catch (e) {
          rethrow;
        }
      } else {
        rethrow;
      }
    }
  }

  Future<ISendUserOperationResponse> _processTokenOperation({
    required EthereumAddress tokenAddress,
    required EthereumAddress to,
    required BigInt amount,
    required Uint8List callData,
    TxOptions? options,
  }) async {
    if (_isNativeToken(tokenAddress.toString())) {
      return _executeUserOperation(
        Call(
          to: to,
          value: amount,
          data: Uint8List(0),
        ),
        options,
      );
    } else {
      return _executeUserOperation(
        Call(
          to: tokenAddress,
          value: BigInt.zero,
          data: callData,
        ),
        options,
      );
    }
  }

  Future<ISendUserOperationResponse> _processOperation({
    required EthereumAddress tokenAddress,
    required EthereumAddress spender,
    required Uint8List callData,
    BigInt? amount,
    TxOptions? options,
  }) async {
    if (_isNativeToken(tokenAddress.toString())) {
      return _executeUserOperation(
        Call(
          to: spender,
          value: amount!,
          data: callData,
        ),
        options,
      );
    }

    final tokenAllowance = await getAllowance(tokenAddress, spender);
    if (tokenAllowance >= amount!) {
      return _executeUserOperation(
        Call(
          to: spender,
          value: BigInt.zero,
          data: callData,
        ),
        options,
      );
    } else {
      return approveTokenAndCallContract(
        tokenAddress,
        spender,
        amount,
        callData,
        options,
      );
    }
  }

  void _handleModuleError(DC response) {
    if (response.hasError) {
      throw response.error!;
    }
  }

  static UserOperationMiddlewareFn? _getPaymasterMiddleware(
    String publicApiKey,
    Map<String, dynamic>? paymasterContext,
  ) {
    final paymasterRpc = Uri.https(Variables.BASE_URL, '/api/v0/paymaster', {
      'apiKey': publicApiKey,
    }).toString();

    return verifyingPaymaster(paymasterRpc, paymasterContext ?? {});
  }

  static Future<EtherspotWallet> _initializeWallet(
    EthPrivateKey credentials,
    String publicApiKey,
    IPresetBuilderOpts? opts,
    UserOperationMiddlewareFn? paymasterMiddleware,
  ) {
    return EtherspotWallet.init(
      credentials,
      _getBundlerRpc(publicApiKey),
      opts: IPresetBuilderOpts()
        ..entryPoint = opts?.entryPoint
        ..salt = opts?.salt
        ..factoryAddress = opts?.factoryAddress
        ..paymasterMiddleware = opts?.paymasterMiddleware ?? paymasterMiddleware
        ..overrideBundlerRpc = opts?.overrideBundlerRpc,
    );
  }

  static String _getBundlerRpc(String publicApiKey) {
    return Uri.https(Variables.BASE_URL, '/api/v0/bundler', {
      'apiKey': publicApiKey,
    }).toString();
  }
}
