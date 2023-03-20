import 'dart:async';
import 'dart:convert';

import 'package:centrifuge/centrifuge.dart';
import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';
import 'package:hex/hex.dart';
import 'package:http/http.dart' as http;
import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart';

import 'package:fuse_wallet_sdk/src/constants/variables.dart';
import 'package:fuse_wallet_sdk/src/models/models.dart';
import 'package:fuse_wallet_sdk/src/sections/explorer_section.dart';
import 'package:fuse_wallet_sdk/src/sections/nft_section.dart';
import 'package:fuse_wallet_sdk/src/sections/staking_section.dart';
import 'package:fuse_wallet_sdk/src/sections/trade_section.dart';
import 'package:fuse_wallet_sdk/src/utils/auth.dart';
import 'package:fuse_wallet_sdk/src/utils/contracts.dart';
import 'package:fuse_wallet_sdk/src/utils/crypto.dart';
import 'package:fuse_wallet_sdk/src/utils/format.dart';
import 'package:fuse_wallet_sdk/src/utils/websocket.dart';

class FuseWalletSDK {
  /// The public API key used to access the Fuse API.
  final String publicApiKey;

  /// The smart wallet associated with the authenticated user.
  late SmartWallet _smartWallet;

  /// The JWT token returned after authentication.
  late String _jwtToken;

  /// The Dio client used for API calls.
  final Dio _dio;

  /// The Web3 client used for sending requests over an HTTP JSON-RPC API endpoint to Ethereum clients.
  final Web3Client web3client;

  late final Websocket websocket;

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
    _tradeSection = TradeSection(_dio);
    _explorerSection = ExplorerSection(_dio);
    _stakingSection = StakingSection(_dio);
    _nftSection = NftSection();
  }

  late ExplorerSection _explorerSection;
  late TradeSection _tradeSection;
  late StakingSection _stakingSection;
  late NftSection _nftSection;

  ExplorerSection get explorerSection => _explorerSection;

  TradeSection get tradeSection => _tradeSection;

  StakingSection get stakingSection => _stakingSection;

  NftSection get nftSection => _nftSection;

  set jwtToken(String value) => _jwtToken = value;

  set smartWallet(SmartWallet value) => _smartWallet = value;

  Future<String> getNonceForRelay() async {
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

  Options get options => Options(
        headers: {
          'Authorization': 'Bearer $_jwtToken',
        },
      );

  Future<DC<Exception, BigInt>> _getNativeBalance(
    String address,
  ) async {
    try {
      final EtherAmount etherAmount =
          await web3client.getBalance(EthereumAddress.fromHex(address));
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
      websocket = await Websocket.init(jwt);
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
        options: options,
      );
      if (response.statusCode != 200) {
        return DC.error(Exception('Failed to fetch wallet'));
      }
      final SmartWallet account = SmartWallet.fromJson(response.data);
      smartWallet = account;
      return DC.data(account);
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
        options: options,
      );
      if (response.statusCode == 201) {
        final String transactionId = response.data['transactionId'];
        final Subscription subscription = websocket.client.newSubscription(
          'transaction:#$transactionId',
        );
        final smartWalletEventStream =
            subscription.publication.map(_toSmartWalletEventStream);
        return DC.data(smartWalletEventStream);
      }
      return DC.error(Exception('Failed to create wallet'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  SmartWalletEvent _toSmartWalletEventStream(publicationEvent) {
    final Map data = jsonDecode(
      utf8.decode(publicationEvent.data, allowMalformed: true),
    );
    return SmartWalletEvent(
      name: data['eventName'],
      data: data['eventData'],
    );
  }

  /// Retrieves historical actions for a smart wallet, with optional filtering by token address and update time.
  ///
  /// Parameters:
  /// - [page] (optional) – The page number to retrieve, default is 1.
  /// - [updatedAt] (optional) – Filter actions updated at or after the specified Unix timestamp.
  /// - [tokenAddress] (optional) – Filter actions related to the specified token address.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with an [ActionResult] object containing the historical actions.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, ActionResult>> getHistoricalActions({
    int page = 1,
    int? updatedAt,
    String? tokenAddress,
  }) async {
    final Map<String, dynamic> queryParameters = {
      'page': page,
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
        options: options,
      );
      return DC.data(ActionResult.fromJson(
        response.data['data'],
      ));
    } catch (e) {
      print(e.toString());
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
      // Make a post request to get the transaction id
      final Response response = await _dio.post(
        '/v1/smart-wallets/relay',
        options: options,
        data: relay.toJson(),
      );
      if (response.statusCode == 201) {
        // Success, now we have the transaction id
        final String transactionId = response.data['transactionId'];
        final Subscription subscription = websocket.client.newSubscription(
          'transaction:#$transactionId',
        );
        final smartWalletEventStream =
            subscription.publication.map(_toSmartWalletEventStream);
        return DC.data(smartWalletEventStream);
      }
      return DC.error(Exception('Failed to relay'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> transferToken(
    EthPrivateKey cred,
    String tokenAddress,
    String toAddress,
    String value, {
    String txData = '0x',
    String? externalId,
  }) async {
    final String walletModule = 'TransferManager';
    final String methodName = 'transferToken';
    final EthereumAddress wallet =
        EthereumAddress.fromHex(_smartWallet.smartWalletAddress);
    final EthereumAddress token = EthereumAddress.fromHex(tokenAddress);
    final EthereumAddress receiver = EthereumAddress.fromHex(toAddress);
    final DC<Exception, TokenDetails> tokenDetailsRes =
        await _explorerSection.getTokenDetails(tokenAddress);

    if (tokenDetailsRes.hasError) {
      return DC.error(tokenDetailsRes.error!);
    }

    final BigInt amount = AmountFormat.toBigInt(
      value,
      tokenDetailsRes.data!.decimals,
    );

    final String data = ContractsHelper.getEncodedDataForContractCall(
      walletModule,
      _smartWallet.walletModules.transferManager,
      methodName,
      [
        wallet,
        token,
        receiver,
        amount,
        hexToBytes(txData),
      ],
      include0x: true,
    );
    String nonce = await getNonceForRelay();
    final String signature = ContractsHelper.signOffChain(
      cred,
      _smartWallet.walletModules.transferManager,
      _smartWallet.smartWalletAddress,
      BigInt.from(0),
      data,
      nonce,
      BigInt.from(0),
      BigInt.from(Variables.DEFAULT_GAS_LIMIT),
    );

    final Map<String, dynamic> txBody = Map.from({
      "status": 'pending',
      "from": _smartWallet.smartWalletAddress,
      "to": toAddress,
      "value": amount.toString(),
      'type': 'SEND',
      "asset": tokenDetailsRes.data?.symbol,
      'tokenName': tokenDetailsRes.data?.name,
      "tokenSymbol": tokenDetailsRes.data?.symbol,
      'tokenDecimal': tokenDetailsRes.data?.decimals,
      'tokenAddress': tokenDetailsRes.data?.address,
    });

    final Relay relayDto = Relay(
      walletModuleAddress: _smartWallet.walletModules.transferManager,
      walletAddress: _smartWallet.smartWalletAddress,
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

  Future<DC<Exception, Stream<SmartWalletEvent>>> transferNFT(
    EthPrivateKey cred,
    String nftContract,
    String toAddress,
    num tokenId, {
    bool? safe = false,
    String txData = '0x',
    Map<String, dynamic>? transactionBody = const {},
  }) async {
    final String methodName = 'transferNFT';
    final String walletModule = 'NftTransfer';
    final EthereumAddress wallet = EthereumAddress.fromHex(
      _smartWallet.smartWalletAddress,
    );
    final EthereumAddress contract = EthereumAddress.fromHex(nftContract);
    final EthereumAddress receiver = EthereumAddress.fromHex(toAddress);
    final BigInt id = BigInt.from(tokenId);
    final String walletModuleAddress = _smartWallet.walletModules.nftTransfer!;

    final String data = ContractsHelper.getEncodedDataForContractCall(
      walletModule,
      walletModuleAddress,
      methodName,
      [
        wallet,
        contract,
        receiver,
        id,
        safe,
        hexToBytes(txData),
      ],
      include0x: true,
    );

    final Map<String, dynamic> txBody = Map.from({
      "from": _smartWallet.smartWalletAddress,
      "to": toAddress,
      'tokenAddress': nftContract,
      "status": 'pending',
      ...?transactionBody,
    });

    final String nonce = await getNonceForRelay();
    final String signature = ContractsHelper.signOffChain(
      cred,
      walletModuleAddress,
      _smartWallet.smartWalletAddress,
      BigInt.from(0),
      data,
      nonce,
      BigInt.from(0),
      BigInt.from(Variables.DEFAULT_GAS_LIMIT),
    );

    final Relay relayDto = Relay(
      walletModuleAddress: walletModuleAddress,
      walletAddress: _smartWallet.smartWalletAddress,
      data: data,
      nonce: nonce,
      methodName: methodName,
      signature: signature,
      walletModule: walletModule,
      transactionBody: txBody,
    );

    return _relay(relayDto);
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> addModule(
    EthPrivateKey cred,
    String disableModuleName,
    String disableModuleAddress,
    String enableModuleAddress, {
    String methodName = 'addModule',
    Map<String, dynamic>? transactionBody,
  }) async {
    final EthereumAddress wallet = EthereumAddress.fromHex(
      _smartWallet.smartWalletAddress,
    );
    final EthereumAddress newModule = EthereumAddress.fromHex(
      enableModuleAddress,
    );

    final String data = ContractsHelper.getEncodedDataForContractCall(
      disableModuleName,
      disableModuleAddress,
      methodName,
      [
        wallet,
        newModule,
      ],
      include0x: true,
    );
    final String nonce = await getNonceForRelay();
    final String signature = ContractsHelper.signOffChain(
      cred,
      disableModuleAddress,
      _smartWallet.smartWalletAddress,
      BigInt.from(0),
      data,
      nonce,
      BigInt.from(0),
      BigInt.from(Variables.DEFAULT_GAS_LIMIT),
    );

    final Relay relayDto = Relay(
      walletModuleAddress: _smartWallet.walletModules.transferManager,
      walletAddress: _smartWallet.smartWalletAddress,
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
    EthPrivateKey cred,
    String tokenAddress,
    String value, {
    String? spenderContract,
    Map<String, dynamic>? transactionBody,
  }) async {
    final String walletModule = 'TransferManager';
    final String methodName = 'approveToken';
    final EthereumAddress wallet =
        EthereumAddress.fromHex(_smartWallet.smartWalletAddress);
    final EthereumAddress token = EthereumAddress.fromHex(tokenAddress);
    EthereumAddress spender = wallet;
    if (spenderContract != null) {
      spender = EthereumAddress.fromHex(spenderContract);
    }
    final DC<Exception, TokenDetails> tokenDetailsRes =
        await _explorerSection.getTokenDetails(tokenAddress);

    if (tokenDetailsRes.hasError) {
      return DC.error(tokenDetailsRes.error!);
    }

    final BigInt amount = AmountFormat.toBigInt(
      value,
      tokenDetailsRes.data!.decimals,
    );

    final String data = ContractsHelper.getEncodedDataForContractCall(
      walletModule,
      _smartWallet.walletModules.transferManager,
      methodName,
      [
        wallet,
        token,
        spender,
        amount,
      ],
      include0x: true,
    );

    final String nonce = await getNonceForRelay();
    final String signature = ContractsHelper.signOffChain(
      cred,
      _smartWallet.walletModules.transferManager,
      _smartWallet.smartWalletAddress,
      BigInt.from(0),
      data,
      nonce,
      BigInt.from(0),
      BigInt.from(Variables.DEFAULT_GAS_LIMIT),
    );

    final Relay relayDto = Relay(
      walletModuleAddress: _smartWallet.walletModules.transferManager,
      walletAddress: _smartWallet.smartWalletAddress,
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
    EthPrivateKey cred,
    String contractAddress,
    String data, {
    BigInt? value,
    Map<String, dynamic>? transactionBody,
  }) async {
    final String walletModule = 'TransferManager';
    final String methodName = 'callContract';
    final EthereumAddress wallet = EthereumAddress.fromHex(
      _smartWallet.smartWalletAddress,
    );
    final EthereumAddress contract = EthereumAddress.fromHex(contractAddress);

    final String encodedData = ContractsHelper.getEncodedDataForContractCall(
      walletModule,
      _smartWallet.walletModules.transferManager,
      methodName,
      [
        wallet,
        contract,
        value ?? BigInt.zero,
        HEX.decode(data),
      ],
      include0x: true,
    );

    final String nonce = await getNonceForRelay();
    final String signature = ContractsHelper.signOffChain(
      cred,
      _smartWallet.walletModules.transferManager,
      _smartWallet.smartWalletAddress,
      BigInt.from(0),
      encodedData,
      nonce,
      BigInt.from(0),
      BigInt.from(Variables.DEFAULT_GAS_LIMIT),
    );

    final Relay relayDto = Relay(
      walletModuleAddress: _smartWallet.walletModules.transferManager,
      walletAddress: _smartWallet.smartWalletAddress,
      data: encodedData,
      nonce: nonce,
      methodName: methodName,
      signature: signature,
      walletModule: walletModule,
      transactionBody: transactionBody,
    );

    return _relay(relayDto);
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> approveTokenAndCallContract(
    EthPrivateKey cred,
    String tokenAddress,
    String contractAddress,
    String value,
    String data, {
    Map<String, dynamic>? transactionBody,
  }) async {
    final String walletModule = 'TransferManager';
    final String methodName = 'approveTokenAndCallContract';
    final EthereumAddress wallet =
        EthereumAddress.fromHex(_smartWallet.smartWalletAddress);
    final EthereumAddress token = EthereumAddress.fromHex(tokenAddress);
    final EthereumAddress contract = EthereumAddress.fromHex(contractAddress);
    final DC<Exception, TokenDetails> tokenDetailsRes =
        await _explorerSection.getTokenDetails(
      tokenAddress,
    );

    if (tokenDetailsRes.hasError) {
      return DC.error(tokenDetailsRes.error!);
    }

    final BigInt amount = AmountFormat.toBigInt(
      value,
      tokenDetailsRes.data!.decimals,
    );

    final String encodedData = ContractsHelper.getEncodedDataForContractCall(
      walletModule,
      _smartWallet.walletModules.transferManager,
      methodName,
      [
        wallet,
        token,
        contract,
        amount,
        HEX.decode(data),
      ],
      include0x: true,
    );

    final String nonce = await getNonceForRelay();
    final String signature = ContractsHelper.signOffChain(
      cred,
      _smartWallet.walletModules.transferManager,
      _smartWallet.smartWalletAddress,
      BigInt.from(0),
      encodedData,
      nonce,
      BigInt.from(0),
      BigInt.from(Variables.DEFAULT_GAS_LIMIT),
    );

    final Relay relayDto = Relay(
      walletModuleAddress: _smartWallet.walletModules.transferManager,
      walletAddress: _smartWallet.smartWalletAddress,
      data: encodedData,
      nonce: nonce,
      methodName: methodName,
      signature: signature,
      walletModule: walletModule,
      transactionBody: transactionBody,
    );

    return _relay(relayDto);
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> swapTokens(
    EthPrivateKey cred,
    TradeRequestBody tradeRequestBody,
  ) async {
    final DC<Exception, TradeCallParameters> swapCallParameters =
        await _tradeSection.requestParameters(
      tradeRequestBody,
    );

    final String data = strip0x(swapCallParameters.data?.rawTxn['data']);

    if (tradeRequestBody.currencyIn.toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      return callContract(
        cred,
        swapCallParameters.data!.rawTxn['to'],
        data,
        value: BigInt.parse(swapCallParameters.data!.value),
      );
    } else {
      final DC<Exception, TokenDetails> tokenDetailsRes =
          await _explorerSection.getTokenDetails(
        tradeRequestBody.currencyIn,
      );

      if (tokenDetailsRes.hasError) {
        return DC.error(tokenDetailsRes.error!);
      }

      return approveTokenAndCallContract(
        cred,
        tradeRequestBody.currencyIn,
        swapCallParameters.data?.rawTxn['to'],
        AmountFormat.formatValue(
          BigInt.parse(swapCallParameters.data!.args.first),
          tokenDetailsRes.data?.decimals ?? 18,
        ),
        data,
      );
    }
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> stakeToken(
    EthPrivateKey cred,
    StakeRequestBody stakeRequestBody,
  ) async {
    final DC<Exception, StakeResponseBody> response =
        await _stakingSection.stake(
      stakeRequestBody,
    );

    if (response.hasError) {
      return DC.error(response.error!);
    }

    final DC<Exception, TokenDetails> tokenDetailsRes =
        await _explorerSection.getTokenDetails(
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
        cred,
        response.data!.contractAddress,
        data,
        value: amount,
      );
    } else {
      return approveTokenAndCallContract(
        cred,
        stakeRequestBody.tokenAddress,
        response.data!.contractAddress,
        amount.toString(),
        data,
      );
    }
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> unstakeToken(
    EthPrivateKey cred,
    UnstakeRequestBody unstakeRequestBody,
  ) async {
    final DC<Exception, UnstakeResponseBody> response =
        await _stakingSection.unstake(
      unstakeRequestBody,
    );
    if (response.hasError) {
      return DC.error(response.error!);
    }
    final DC<Exception, TokenDetails> tokenDetailsRes =
        await _explorerSection.getTokenDetails(
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
      "from": _smartWallet.smartWalletAddress,
      'value': amount.toString(),
    };
    final String data = strip0x(response.data!.encodedABI);

    if (unstakeRequestBody.tokenAddress.toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      return callContract(
        cred,
        response.data!.contractAddress,
        data,
        value: amount,
        transactionBody: transactionBody,
      );
    } else {
      return approveTokenAndCallContract(
        cred,
        unstakeRequestBody.tokenAddress,
        response.data!.contractAddress,
        amount.toString(),
        data,
        transactionBody: transactionBody,
      );
    }
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>>
      encodeDataAndApproveTokenAndCallContract(
    EthPrivateKey cred,
    String jsonInterface,
    String contractAddress,
    String contractName,
    String methodName,
    String tokenAddress,
    String value,
    List<dynamic> params, {
    Map<String, dynamic>? transactionBody,
  }) async {
    final String data = ContractsHelper.getEncodedDataForContractCall(
      contractName,
      contractAddress,
      methodName,
      params,
      jsonInterface: jsonInterface,
    );

    return approveTokenAndCallContract(
      cred,
      tokenAddress,
      contractAddress,
      value,
      data,
      transactionBody: transactionBody,
    );
  }

  Future<DC<Exception, Stream<SmartWalletEvent>>> encodeDataAndCallContract(
    EthPrivateKey cred,
    String jsonInterface,
    String contractAddress,
    String contractName,
    String methodName,
    BigInt value,
    List<dynamic> params, {
    Map<String, dynamic>? transactionBody,
  }) async {
    final String data = ContractsHelper.getEncodedDataForContractCall(
      contractName,
      contractAddress,
      methodName,
      params,
      jsonInterface: jsonInterface,
      include0x: true,
    );

    return callContract(
      cred,
      contractAddress,
      data,
      value: value,
      transactionBody: transactionBody,
    );
  }
}
