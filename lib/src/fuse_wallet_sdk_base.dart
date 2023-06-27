import 'dart:async';
import 'dart:convert';

import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';
import 'package:hex/hex.dart';
import 'package:http/http.dart' as http;
import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart';

import 'package:fuse_wallet_sdk/src/constants/variables.dart';
import 'package:fuse_wallet_sdk/src/models/models.dart';
import 'package:fuse_wallet_sdk/src/modules/modules.dart';
import 'package:fuse_wallet_sdk/src/utils/utils.dart';

class FuseWalletSDK {
  /// The public API key used to access the Fuse API.
  final String publicApiKey;

  /// The smart wallet associated with the authenticated user.
  late SmartWallet smartWallet;

  /// The JWT token returned after authentication.
  late String _jwtToken;

  /// The Dio client used for API calls.
  final Dio _dio;

  /// The Web3 client used for sending requests over an HTTP JSON-RPC API endpoint to Ethereum clients.
  final Web3Client web3client;

  WebSocketConnection? webSocketConnection;

  /// Constructs a new instance of [FuseWalletSDK].
  ///
  /// [publicApiKey] is the public API key used to access the Fuse API.
  /// [baseUrl] is the base URL of the Fuse API. Default value is taken from [Variables.BASE_URL].
  /// [rpcUrl] is the URL of the Ethereum JSON-RPC endpoint. Default value is taken from [Variables.FUSE_RPC_URL].
  FuseWalletSDK(
    this.publicApiKey, {
    String baseUrl = Variables.BASE_URL,
    String rpcUrl = Variables.FUSE_RPC_URL,
  })  : _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            headers: {
              'Content-Type': 'application/json',
            },
            queryParameters: {
              'apiKey': publicApiKey,
            },
          ),
        ),
        web3client = Web3Client(rpcUrl, http.Client()) {
    _initializeModules();
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

  set jwtToken(String value) => _jwtToken = value;

  set setWallet(SmartWallet value) => smartWallet = value;

  Options get _options => Options(
        headers: {
          'Authorization': 'Bearer $_jwtToken',
        },
      );

  /// This function authenticates the provided credentials by sending a request to the server.
  ///
  /// It takes in an [EthPrivateKey] as an argument and returns a [Future] that resolves to a [DC]
  /// object with an [Exception] as the first type parameter and a [String] as the second type parameter.
  ///
  /// If the authentication process is successful, the [Future] will contain the JWT token returned by the
  /// server, wrapped in a [DC.data] object.
  ///
  /// If an error occurs during the authentication process, the [Future] will contain an [Exception] object
  /// wrapped in a [DC.error] object.
  Future<DC<Exception, String>> authenticate(EthPrivateKey credentials) async {
    try {
      final AuthDto auth = SmartWalletAuth.signer(credentials);
      final Response response = await _dio.post(
        '/v1/smart-wallets/auth',
        data: auth.toJson(),
      );
      final String jwt = response.data['jwt'];
      jwtToken = jwt;
      webSocketConnection = await WebSocketConnection.init(jwt);
      return DC.data(jwt);
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// Fetches the SmartWallet information for the user.
  ///
  /// This method makes an API call to retrieve the SmartWallet data associated with the user.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a [SmartWallet] object representing the user's SmartWallet.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, SmartWallet>> fetchWallet() async {
    try {
      final Response response = await _dio.get(
        '/v1/smart-wallets',
        options: _options,
      );
      if (response.statusCode != 200) {
        return DC.error(Exception('Failed to fetch wallet'));
      }
      final SmartWallet smartWallet = SmartWallet.fromJson(response.data);
      setWallet = smartWallet;
      return DC.data(smartWallet);
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// Creates a new smart wallet and returns a stream of [SmartWalletEvent]s.
  ///
  /// This function sends a request to create a new smart wallet and listens for the
  /// events related to the wallet creation process. It returns a stream of [SmartWalletEvent]s
  /// that can be used to track the wallet creation progress.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a [Stream] of [SmartWalletEvent]s.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, Stream<SmartWalletEvent>>> createWallet() async {
    try {
      final Response response = await _dio.post(
        '/v1/smart-wallets/create',
        options: _options,
      );
      if (response.statusCode == 201) {
        final transactionId = response.data['transactionId'];
        return DC.data(_createSubscriptionStream(transactionId));
      }
      return DC.error(Exception('Failed to create wallet'));
    } on DioError catch (exception) {
      return _handleDioErrorOccurredWhileCreatingWallet(exception);
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  DC<Exception, Stream<SmartWalletEvent>>
      _handleDioErrorOccurredWhileCreatingWallet(DioError exception) {
    final response = exception.response;

    if (response == null) {
      return DC.error(Exception(exception.toString()));
    }

    final statusCode = response.statusCode;

    if (statusCode == 400) {
      final message = response.data["errorMessage"];
      if (message == "Owner address already has a deployed smart wallet") {
        return DC.error(
          WalletAlreadyExistsException(message),
        );
      }
    }

    return DC.error(Exception(exception.toString()));
  }

  /// Retrieves historical actions for a smart wallet, with optional filtering by token address and update time.
  ///
  /// Parameters:
  /// - [page] (optional) – The page number to retrieve, default is 1.
  /// - [limit] (optional) – Number of items in each page, default is 10.
  /// - [updatedAt] (optional) – Filter actions updated at or after the specified Unix timestamp.
  /// - [tokenAddress] (optional) – Filter actions related to the specified token address.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with an [ActionResult] object containing the historical actions.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, ActionResult>> getHistoricalActions({
    int page = 1,
    int limit = 10,
    int? updatedAt,
    String? tokenAddress,
  }) async {
    final Map<String, dynamic> queryParameters = {
      'page': page,
      'limit': limit,
    };
    if (tokenAddress != null) {
      queryParameters.putIfAbsent('tokenAddress', () => tokenAddress);
    }
    if (updatedAt != null) {
      queryParameters.putIfAbsent('updatedAt', () => updatedAt);
    }
    try {
      final Response response = await _dio.get(
        '/v1/smart-wallets/historical_txs',
        queryParameters: queryParameters,
        options: _options,
      );
      return DC.data(ActionResult.fromJson(
        response.data['data'],
      ));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// A method to relay a transaction and get a stream of smart wallet events.
  ///
  /// This method sends a post request to relay a transaction and obtains a
  /// transaction ID in response. It then subscribes to the websocket client
  /// to receive updates on the transaction and maps the received data to a
  /// stream of SmartWalletEvents.
  ///
  /// Parameters:
  /// [relay] is the Relay object containing the transaction details to be relayed.
  ///
  /// Returns a Future that resolves to a DC object containing either an
  /// Exception or a Stream of SmartWalletEvent`s.
  Future<DC<Exception, Stream<SmartWalletEvent>>> _relay(Relay relay) async {
    try {
      final response = await _dio.post(
        '/v1/smart-wallets/relay',
        options: _options,
        data: relay.toJson(),
      );
      if (response.statusCode == 201) {
        final transactionId = response.data['transactionId'];
        return DC.data(_createSubscriptionStream(transactionId));
      }
      return DC.error(Exception('Failed to relay'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> transferToken(
    EthPrivateKey credentials,
    String tokenAddress,
    String recipientAddress,
    String value, {
    String transactionData = '0x',
    String? externalId,
  }) async {
    final tokenDetailsRes = await _explorerModule.getTokenDetails(tokenAddress);

    if (tokenDetailsRes.hasError) {
      return DC.error(tokenDetailsRes.error!);
    }

    final BigInt amount = AmountFormat.toBigInt(
      value,
      tokenDetailsRes.data!.decimals,
    );

    final String walletModule = 'TransferManager';
    final String methodName = 'transferToken';
    final String data = ContractsHelper.encodedDataForContractCall(
      walletModule,
      smartWallet.walletModules.transferManager,
      methodName,
      [
        EthereumAddress.fromHex(smartWallet.smartWalletAddress),
        EthereumAddress.fromHex(tokenAddress),
        EthereumAddress.fromHex(recipientAddress),
        amount,
        hexToBytes(transactionData),
      ],
      include0x: true,
    );
    final String nonce = await _getNonce();
    final String signature = ContractsHelper.signOffChain(
      credentials,
      smartWallet.walletModules.transferManager,
      smartWallet.smartWalletAddress,
      data,
      nonce,
    );

    final Map<String, dynamic> txBody = Map.from({
      "status": 'pending',
      "from": smartWallet.smartWalletAddress,
      "to": recipientAddress,
      "value": amount.toString(),
      'type': 'SEND',
      "asset": tokenDetailsRes.data?.symbol,
      'tokenName': tokenDetailsRes.data?.name,
      "tokenSymbol": tokenDetailsRes.data?.symbol,
      'tokenDecimal': tokenDetailsRes.data?.decimals,
      'tokenAddress': tokenDetailsRes.data?.address,
    });

    final Relay relayDto = Relay(
      walletModuleAddress: smartWallet.walletModules.transferManager,
      walletAddress: smartWallet.smartWalletAddress,
      data: data,
      nonce: nonce,
      methodName: methodName,
      signature: signature,
      walletModule: walletModule,
      transactionBody: txBody,
      externalId: externalId,
    );

    return _relay(relayDto);
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> transferNft(
    EthPrivateKey credentials,
    String nftContractAddress,
    String recipientAddress,
    num tokenId, {
    bool? isSafeTransfer = false,
    String transactionData = '0x',
    Map<String, dynamic>? transactionDetails = const {},
  }) async {
    final String methodName = 'transferNFT';
    final String walletModule = 'NftTransfer';
    final String walletModuleAddress = smartWallet.walletModules.nftTransfer!;

    final String data = ContractsHelper.encodedDataForContractCall(
      walletModule,
      walletModuleAddress,
      methodName,
      [
        EthereumAddress.fromHex(smartWallet.smartWalletAddress),
        EthereumAddress.fromHex(nftContractAddress),
        EthereumAddress.fromHex(recipientAddress),
        BigInt.from(tokenId),
        isSafeTransfer,
        hexToBytes(transactionData),
      ],
      include0x: true,
    );

    final Map<String, dynamic> transactionBody = Map.from({
      "from": smartWallet.smartWalletAddress,
      "to": recipientAddress,
      'tokenAddress': nftContractAddress,
      "status": 'pending',
      ...?transactionDetails,
    });

    final String nonce = await _getNonce();
    final String signature = ContractsHelper.signOffChain(
      credentials,
      walletModuleAddress,
      smartWallet.smartWalletAddress,
      data,
      nonce,
    );

    final Relay relayDto = Relay(
      walletModuleAddress: walletModuleAddress,
      walletAddress: smartWallet.smartWalletAddress,
      data: data,
      nonce: nonce,
      methodName: methodName,
      signature: signature,
      walletModule: walletModule,
      transactionBody: transactionBody,
    );

    return _relay(relayDto);
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> addModule(
    EthPrivateKey credentials,
    String disableModuleName,
    String disableModuleAddress,
    String enableModuleAddress, {
    Map<String, dynamic>? transactionBody,
  }) async {
    final String methodName = 'addModule';
    final String data = ContractsHelper.encodedDataForContractCall(
      disableModuleName,
      disableModuleAddress,
      methodName,
      [
        EthereumAddress.fromHex(smartWallet.smartWalletAddress),
        EthereumAddress.fromHex(enableModuleAddress),
      ],
      include0x: true,
    );
    final String nonce = await _getNonce();
    final String signature = ContractsHelper.signOffChain(
      credentials,
      disableModuleAddress,
      smartWallet.smartWalletAddress,
      data,
      nonce,
    );

    final Relay relayDto = Relay(
      walletModuleAddress: smartWallet.walletModules.transferManager,
      walletAddress: smartWallet.smartWalletAddress,
      data: data,
      nonce: nonce,
      methodName: methodName,
      signature: signature,
      walletModule: disableModuleName,
      transactionBody: transactionBody,
    );

    return _relay(relayDto);
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> approveToken(
    EthPrivateKey credentials,
    String tokenAddress,
    String spender,
    String value, {
    Map<String, dynamic>? transactionBody,
  }) async {
    final tokenDetailsRes = await _explorerModule.getTokenDetails(tokenAddress);

    if (tokenDetailsRes.hasError) {
      return DC.error(tokenDetailsRes.error!);
    }

    final BigInt amount = AmountFormat.toBigInt(
      value,
      tokenDetailsRes.data!.decimals,
    );

    final String walletModule = 'TransferManager';
    final String methodName = 'approveToken';
    final String data = ContractsHelper.encodedDataForContractCall(
      walletModule,
      smartWallet.walletModules.transferManager,
      methodName,
      [
        EthereumAddress.fromHex(smartWallet.smartWalletAddress),
        EthereumAddress.fromHex(tokenAddress),
        EthereumAddress.fromHex(spender),
        amount,
      ],
      include0x: true,
    );

    final String nonce = await _getNonce();
    final String signature = ContractsHelper.signOffChain(
      credentials,
      smartWallet.walletModules.transferManager,
      smartWallet.smartWalletAddress,
      data,
      nonce,
    );

    final Relay relayDto = Relay(
      walletModuleAddress: smartWallet.walletModules.transferManager,
      walletAddress: smartWallet.smartWalletAddress,
      data: data,
      nonce: nonce,
      methodName: methodName,
      signature: signature,
      walletModule: walletModule,
      transactionBody: transactionBody,
    );

    return _relay(relayDto);
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> callContract(
    EthPrivateKey credentials,
    String contractAddress,
    String encodedData, {
    BigInt? value,
    Map<String, dynamic>? transactionBody,
  }) async {
    final String walletModule = 'TransferManager';
    final String methodName = 'callContract';

    final String data = ContractsHelper.encodedDataForContractCall(
      walletModule,
      smartWallet.walletModules.transferManager,
      methodName,
      [
        EthereumAddress.fromHex(smartWallet.smartWalletAddress),
        EthereumAddress.fromHex(contractAddress),
        value ?? BigInt.zero,
        HEX.decode(encodedData),
      ],
      include0x: true,
    );

    final String nonce = await _getNonce();
    final String signature = ContractsHelper.signOffChain(
      credentials,
      smartWallet.walletModules.transferManager,
      smartWallet.smartWalletAddress,
      data,
      nonce,
    );

    final Relay relayDto = Relay(
      walletModuleAddress: smartWallet.walletModules.transferManager,
      walletAddress: smartWallet.smartWalletAddress,
      data: data,
      nonce: nonce,
      methodName: methodName,
      signature: signature,
      walletModule: walletModule,
      transactionBody: transactionBody,
    );

    return _relay(relayDto);
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> approveTokenAndCallContract(
    EthPrivateKey credentials,
    String tokenAddress,
    String contractAddress,
    String value,
    String encodedData, {
    Map<String, dynamic>? transactionBody,
  }) async {
    final tokenDetailsRes = await _explorerModule.getTokenDetails(
      tokenAddress,
    );

    if (tokenDetailsRes.hasError) {
      return DC.error(tokenDetailsRes.error!);
    }

    final BigInt amount = AmountFormat.toBigInt(
      value,
      tokenDetailsRes.data!.decimals,
    );

    final String walletModule = 'TransferManager';
    final String methodName = 'approveTokenAndCallContract';
    final String data = ContractsHelper.encodedDataForContractCall(
      walletModule,
      smartWallet.walletModules.transferManager,
      methodName,
      [
        EthereumAddress.fromHex(smartWallet.smartWalletAddress),
        EthereumAddress.fromHex(tokenAddress),
        EthereumAddress.fromHex(contractAddress),
        amount,
        HEX.decode(encodedData),
      ],
      include0x: true,
    );

    final String nonce = await _getNonce();
    final String signature = ContractsHelper.signOffChain(
      credentials,
      smartWallet.walletModules.transferManager,
      smartWallet.smartWalletAddress,
      data,
      nonce,
    );

    final Relay relayDto = Relay(
      walletModuleAddress: smartWallet.walletModules.transferManager,
      walletAddress: smartWallet.smartWalletAddress,
      data: data,
      nonce: nonce,
      methodName: methodName,
      signature: signature,
      walletModule: walletModule,
      transactionBody: transactionBody,
    );

    return _relay(relayDto);
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> swapTokens(
    EthPrivateKey credentials,
    TradeRequestBody tradeRequestBody,
  ) async {
    final tradeRes = await _tradeModule.quote(
      tradeRequestBody,
    );
    final swapCallParameters = await _tradeModule.requestParameters(
      tradeRequestBody,
    );

    final String data = strip0x(swapCallParameters.data?.rawTxn['data']);

    final Map<String, dynamic> transactionBody = Map.from({
      "to": tradeRequestBody.recipient,
      "status": 'pending',
      "isSwap": true,
      "tradeInfo": tradeRes.data?.toJson(),
    });
    if (tradeRequestBody.currencyIn.toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      return callContract(
        credentials,
        swapCallParameters.data!.rawTxn['to'],
        data,
        value: BigInt.parse(swapCallParameters.data!.value),
        transactionBody: transactionBody,
      );
    } else {
      final tokenDetailsRes = await _explorerModule.getTokenDetails(
        tradeRequestBody.currencyIn,
      );

      if (tokenDetailsRes.hasError) {
        return DC.error(tokenDetailsRes.error!);
      }

      return approveTokenAndCallContract(
        credentials,
        tradeRequestBody.currencyIn,
        swapCallParameters.data?.rawTxn['to'],
        AmountFormat.formatValue(
          BigInt.parse(swapCallParameters.data!.args.first),
          tokenDetailsRes.data!.decimals,
        ),
        data,
        transactionBody: transactionBody,
      );
    }
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> stakeToken(
    EthPrivateKey credentials,
    StakeRequestBody stakeRequestBody,
  ) async {
    final response = await _stakingModule.stake(stakeRequestBody);

    if (response.hasError) {
      return DC.error(response.error!);
    }

    final tokenDetailsRes = await _explorerModule.getTokenDetails(
      stakeRequestBody.tokenAddress,
    );

    if (tokenDetailsRes.hasError) {
      return DC.error(tokenDetailsRes.error!);
    }

    final BigInt amount = AmountFormat.toBigInt(
      stakeRequestBody.tokenAmount,
      tokenDetailsRes.data!.decimals,
    );

    final String data = strip0x(response.data!.encodedABI);

    if (stakeRequestBody.tokenAddress.toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      return callContract(
        credentials,
        response.data!.contractAddress,
        data,
        value: amount,
      );
    } else {
      return approveTokenAndCallContract(
        credentials,
        stakeRequestBody.tokenAddress,
        response.data!.contractAddress,
        amount.toString(),
        data,
      );
    }
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> unstakeToken(
    EthPrivateKey credentials,
    UnstakeRequestBody unstakeRequestBody,
    String unStakeTokenAddress,
  ) async {
    final response = await _stakingModule.unstake(unstakeRequestBody);
    if (response.hasError) {
      return DC.error(response.error!);
    }
    final tokenDetailsRes = await _explorerModule.getTokenDetails(
      unstakeRequestBody.tokenAddress,
    );

    if (tokenDetailsRes.hasError) {
      return DC.error(tokenDetailsRes.error!);
    }

    final BigInt amount = AmountFormat.toBigInt(
      unstakeRequestBody.tokenAmount,
      tokenDetailsRes.data!.decimals,
    );
    final Map<String, dynamic> transactionBody = {
      "status": 'pending',
      "from": smartWallet.smartWalletAddress,
      'value': amount.toString(),
    };
    final String data = strip0x(response.data!.encodedABI);

    if (unStakeTokenAddress.toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      return callContract(
        credentials,
        response.data!.contractAddress,
        data,
        value: amount,
        transactionBody: transactionBody,
      );
    } else {
      return approveTokenAndCallContract(
        credentials,
        unStakeTokenAddress,
        response.data!.contractAddress,
        amount.toString(),
        data,
        transactionBody: transactionBody,
      );
    }
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>>
      encodeDataAndApproveTokenAndCallContract(
    EthPrivateKey credentials,
    String jsonInterface,
    String contractAddress,
    String contractName,
    String methodName,
    String tokenAddress,
    String value,
    List<dynamic> params, {
    Map<String, dynamic>? transactionBody,
  }) async {
    final String data = ContractsHelper.encodedDataForContractCall(
      contractName,
      contractAddress,
      methodName,
      params,
      jsonInterface: jsonInterface,
    );

    return approveTokenAndCallContract(
      credentials,
      tokenAddress,
      contractAddress,
      value,
      data,
      transactionBody: transactionBody,
    );
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> encodeDataAndCallContract(
    EthPrivateKey credentials,
    String jsonInterface,
    String contractAddress,
    String contractName,
    String methodName,
    BigInt value,
    List<dynamic> params, {
    Map<String, dynamic>? transactionBody,
  }) async {
    final String data = ContractsHelper.encodedDataForContractCall(
      contractName,
      contractAddress,
      methodName,
      params,
      jsonInterface: jsonInterface,
      include0x: true,
    );

    return callContract(
      credentials,
      contractAddress,
      data,
      value: value,
      transactionBody: transactionBody,
    );
  }

  Future<DC<Exception, BigInt>> _getNativeBalance(
    String address,
  ) async {
    try {
      final etherAmount = await web3client.getBalance(
        EthereumAddress.fromHex(address),
      );
      return DC.data(etherAmount.getInWei);
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  Future<DC<Exception, BigInt>> getBalance(
    String tokenAddress,
    String address,
  ) async {
    if (tokenAddress.toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      return _getNativeBalance(address);
    }
    try {
      final List<dynamic> response = await ContractsHelper.readFromContract(
        web3client,
        'BasicToken',
        tokenAddress,
        'balanceOf',
        [EthereumAddress.fromHex(address)],
      );
      return DC.data(response.first);
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  Future<String> _getNonce() async {
    final BigInt block = BigInt.from(await web3client.getBlockNumber());
    final BigInt timestamp = BigInt.from(DateTime.now().millisecondsSinceEpoch);
    final String blockHex = hexZeroPad(hexlify(block), 16);
    final String timestampHex = hexZeroPad(hexlify(timestamp), 16);

    final String combinedHex =
        '${blockHex.substring(2, blockHex.length)}${timestampHex.substring(2, timestampHex.length)}';

    return bytesToHex(
      HEX.decode(combinedHex),
      include0x: true,
    );
  }

  Stream<SmartWalletEvent> _createSubscriptionStream(String transactionId) {
    return webSocketConnection!.client
        .newSubscription('transaction:#$transactionId')
        .publication
        .map(_toSmartWalletEventStream);
  }

  SmartWalletEvent _toSmartWalletEventStream(publicationEvent) {
    final Map<String, dynamic> json = jsonDecode(
      utf8.decode(publicationEvent.data, allowMalformed: true),
    );
    return SmartWalletEvent.fromJson(json);
  }

  Future<void>? disconnectWebSocketClient() {
    return webSocketConnection?.client.disconnect();
  }

  Future<void>? reconnectWebSocketClient() {
    return webSocketConnection?.client.connect();
  }
}
