import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';
import 'package:hex/hex.dart';
import 'package:http/http.dart' show Client;
import 'package:socket_io_client/socket_io_client.dart';
import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart';

import 'package:charge_smart_wallets_sdk/src/constants/variables.dart';
import 'package:charge_smart_wallets_sdk/src/models/models.dart';
import 'package:charge_smart_wallets_sdk/src/sections/explorer_section.dart';
import 'package:charge_smart_wallets_sdk/src/sections/staking_section.dart';
import 'package:charge_smart_wallets_sdk/src/sections/trade_section.dart';
import 'package:charge_smart_wallets_sdk/src/utils/auth.dart';
import 'package:charge_smart_wallets_sdk/src/utils/contracts.dart';
import 'package:charge_smart_wallets_sdk/src/utils/crypto.dart';
import 'package:charge_smart_wallets_sdk/src/utils/format.dart';

class SmartWalletsSDK {
  /// The public API key used to access the Charge API.
  final String publicApiKey;

  /// The smart wallet associated with the API key.
  late SmartWallet _smartWallet;

  /// The JWT token returned after authentication.
  late String _jwtToken;

  /// The Dio client used for API calls.
  final Dio _dio;

  /// The Web3 client used for Ethereum related operations.
  final Web3Client web3client;

  /// Constructs a new instance of [SmartWalletsSDK].
  ///
  /// [publicApiKey] is the public API key used to access the Charge API.
  /// [baseUrl] is the base URL of the Charge API. Default value is taken from [Variables.CHARGE_API].
  /// [rpcUrl] is the URL of the Ethereum JSON-RPC endpoint. Default value is taken from [Variables.FUSE_RPC_URL].
  SmartWalletsSDK(
    this.publicApiKey, {
    String baseUrl = Variables.CHARGE_API,
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
        web3client = Web3Client(rpcUrl, Client()) {
    _tradeSection = TradeSection(_dio);
    _explorerSection = ExplorerSection(_dio);
    _stakingSection = StakingSection(_dio);
  }

  late ExplorerSection _explorerSection;
  late TradeSection _tradeSection;
  late StakingSection _stakingSection;

  ExplorerSection get explorerSection => _explorerSection;
  TradeSection get tradeSection => _tradeSection;
  StakingSection get stakingSection => _stakingSection;

  set jwtToken(String value) => _jwtToken = value;

  set smartWallet(SmartWallet value) => _smartWallet = value;

  Future<String> getNonceForRelay() async {
    final BigInt block = BigInt.from(await web3client.getBlockNumber());
    final BigInt timestamp = BigInt.from(DateTime.now().millisecondsSinceEpoch);
    final String blockHex = hexZeroPad(hexlify(block), 16);
    final String timestampHex = hexZeroPad(hexlify(timestamp), 16);
    return '0x${blockHex.substring(2, blockHex.length)}${timestampHex.substring(
      2,
      timestampHex.length,
    )}';
  }

  Options get options => Options(
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
      return DC.data(jwt);
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// This function is used to fetch the user's smart wallet details from the API.
  ///
  /// Returns a [DC] object that contains either the [SmartWallet] data or an [Exception] in case of an error.
  Future<DC<Exception, SmartWallet>> fetchWallet() async {
    try {
      final Response response = await _dio.get(
        '/v1/smart-wallets',
        options: options,
      );
      if (response.statusCode == 200) {
        final SmartWallet account = SmartWallet.fromJson(response.data);
        smartWallet = account;
        return DC.data(account);
      }
      return DC.error(Exception('Failed to fetch wallet'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// This method is used to create a new smart wallet.
  ///
  /// If the response status code is `201`, it extracts the `transactionId` and `connectionUrl` from the response data.
  /// Then, it creates a new `Socket` instance using the `io` function, with the specified options and a `onConnect` listener.
  /// The `onConnect` listener is used to emit a `subscribe` event with the `transactionId`.
  /// If everything goes well, the created `Socket` instance is returned as a `DC.data` value.
  /// If the response status code is not `201`, the method returns a `DC.error` with an `Exception` instance with message `Failed to create wallet`.
  /// If an error occurs while making the request, the method returns a `DC.error` with an `Exception` instance with the error message.
  Future<DC<Exception, Socket>> createWallet() async {
    try {
      final Response response = await _dio.post(
        '/v1/smart-wallets/create',
        options: options,
      );
      if (response.statusCode == 201) {
        final String transactionId = response.data['transactionId'];
        final String connectionUrl = response.data['connectionUrl'];
        Socket socket = io(connectionUrl, <String, dynamic>{
          "transports": ['websocket'],
          "upgrade": false
        });
        socket.onConnect((_) {
          socket.emit('subscribe', transactionId);
        });
        return DC.data(socket);
      }
      return DC.error(Exception('Failed to create wallet'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  Future<DC<Exception, Socket>> relay(Relay relay) async {
    try {
      final Response response = await _dio.post(
        '/v1/smart-wallets/relay',
        options: options,
        data: relay.toJson(),
      );
      if (response.statusCode == 201) {
        final String transactionId = response.data['transactionId'];
        final String connectionUrl = response.data['connectionUrl'];
        Socket socket = io(connectionUrl, <String, dynamic>{
          "transports": ['websocket'],
          "upgrade": false
        });
        socket.onConnect((_) {
          socket.emit('subscribe', transactionId);
        });
        return DC.data(socket);
      }
      return DC.error(Exception('Failed to relay'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  Future<DC<Exception, Socket>> encodeDataAndApproveTokenAndCallContract(
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
    );
  }

  Future<DC<Exception, Socket>> encodeDataAndCallContract(
    EthPrivateKey cred,
    String jsonInterface,
    String contractAddress,
    String contractName,
    String methodName,
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

  Future<DC<Exception, Socket>> nftTransfer(
    EthPrivateKey cred,
    String walletAddress,
    String contractAddress,
    String receiverAddress,
    num tokenId, {
    bool? safe = false,
    Map<String, dynamic>? transactionBody = const {},
  }) async {
    final Map<String, dynamic> txBody = Map.from({
      "from": walletAddress,
      "to": receiverAddress,
      'tokenAddress': contractAddress,
      "status": 'pending',
      ...?transactionBody,
      // 'metadata': collectible.toJson(),
    });
    final String methodName = 'transferNFT';
    final String walletModule = 'NftTransfer';
    final EthereumAddress wallet = EthereumAddress.fromHex(walletAddress);
    final EthereumAddress contract = EthereumAddress.fromHex(contractAddress);
    final EthereumAddress receiver = EthereumAddress.fromHex(receiverAddress);
    final BigInt id = BigInt.from(tokenId);
    final String walletModuleAddress = _smartWallet.walletModules.nftTransfer!;
    final String data = ContractsHelper.getEncodedDataForContractCall(
      walletModule,
      _smartWallet.walletModules.nftTransfer!,
      methodName,
      [
        wallet,
        contract,
        receiver,
        id,
        safe,
        hexToBytes('0x'),
      ],
      include0x: true,
    );

    final String nonce = await getNonceForRelay();
    final String signature = ContractsHelper.signOffChain(
      cred,
      walletModuleAddress,
      walletAddress,
      BigInt.from(0),
      data,
      nonce,
      BigInt.from(0),
      BigInt.from(Variables.DEFAULT_GAS_LIMIT),
    );

    final Relay replayDto = Relay(
      walletModuleAddress: _smartWallet.walletModules.transferManager,
      walletAddress: _smartWallet.smartWalletAddress,
      data: data,
      nonce: nonce,
      methodName: methodName,
      signature: signature,
      walletModule: walletModule,
      transactionBody: txBody,
    );

    return relay(replayDto);
  }

  Future<DC<Exception, Socket>> addModule(
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
    final EthereumAddress newModule =
        EthereumAddress.fromHex(enableModuleAddress);

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

    final Relay replayDto = Relay(
      walletModuleAddress: _smartWallet.walletModules.transferManager,
      walletAddress: _smartWallet.smartWalletAddress,
      data: data,
      nonce: nonce,
      methodName: methodName,
      signature: signature,
      walletModule: disableModuleName,
      transactionBody: transactionBody,
    );

    return relay(replayDto);
  }

  Future<DC<Exception, Socket>> transfer(
    EthPrivateKey cred,
    String tokenAddress,
    String receiverAddress,
    String value, {
    Map<String, dynamic>? transactionBody,
  }) async {
    final String contractName = 'TransferManager';
    final String methodName = 'transferToken';
    final EthereumAddress wallet =
        EthereumAddress.fromHex(_smartWallet.smartWalletAddress);
    final EthereumAddress token = EthereumAddress.fromHex(tokenAddress);
    final EthereumAddress receiver = EthereumAddress.fromHex(receiverAddress);
    final DC<Exception, TokenDetails> tokenDetailsRes =
        await _explorerSection.getTokenDetails(tokenAddress);
    final BigInt amount =
        AmountFormat.toBigInt(value, tokenDetailsRes.data?.decimals ?? 18);

    final String data = ContractsHelper.getEncodedDataForContractCall(
      contractName,
      _smartWallet.walletModules.transferManager,
      methodName,
      [
        wallet,
        token,
        receiver,
        amount,
        hexToBytes('0x'),
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
      "to": receiverAddress,
      "value": amount.toString(),
      'type': 'SEND',
      "asset": tokenDetailsRes.data?.symbol,
      'tokenName': tokenDetailsRes.data?.name,
      "tokenSymbol": tokenDetailsRes.data?.symbol,
      'tokenDecimal': tokenDetailsRes.data?.decimals,
      'tokenAddress': tokenDetailsRes.data?.address,
      ...?transactionBody,
    });

    final Relay replayDto = Relay(
      walletModuleAddress: _smartWallet.walletModules.transferManager,
      walletAddress: _smartWallet.smartWalletAddress,
      data: data,
      nonce: nonce,
      methodName: methodName,
      signature: signature,
      walletModule: contractName,
      transactionBody: txBody,
    );

    return relay(replayDto);
  }

  Future<DC<Exception, Socket>> approveToken(
    EthPrivateKey cred,
    String tokenAddress,
    int tokenDecimals,
    String value, {
    String? spenderContract,
    Map<String, dynamic>? transactionBody,
    Map<String, dynamic>? txMetadata,
  }) async {
    final String contractName = 'TransferManager';
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
    final BigInt amount =
        AmountFormat.toBigInt(value, tokenDetailsRes.data?.decimals ?? 18);

    final String data = ContractsHelper.getEncodedDataForContractCall(
      contractName,
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
      walletModule: contractName,
      transactionBody: transactionBody,
      txMetadata: txMetadata,
    );

    return relay(relayDto);
  }

  Future<DC<Exception, Socket>> callContract(
    EthPrivateKey cred,
    String contractAddress,
    String data, {
    String? value,
    Map<String, dynamic>? transactionBody,
  }) async {
    final String contractName = 'TransferManager';
    final String methodName = 'callContract';
    final EthereumAddress wallet =
        EthereumAddress.fromHex(_smartWallet.smartWalletAddress);
    final EthereumAddress contract = EthereumAddress.fromHex(contractAddress);
    BigInt amount = value != null
        ? AmountFormat.toBigInt(
            value,
            18,
          )
        : BigInt.zero;
    final String _data = ContractsHelper.getEncodedDataForContractCall(
      contractName,
      _smartWallet.walletModules.transferManager,
      methodName,
      [
        wallet,
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
      data,
      nonce,
      BigInt.from(0),
      BigInt.from(Variables.DEFAULT_GAS_LIMIT),
    );

    final Relay relayDto = Relay(
      walletModuleAddress: _smartWallet.walletModules.transferManager,
      walletAddress: _smartWallet.smartWalletAddress,
      data: _data,
      nonce: nonce,
      methodName: methodName,
      signature: signature,
      walletModule: contractName,
      transactionBody: transactionBody,
    );

    return relay(relayDto);
  }

  Future<DC<Exception, Socket>> approveTokenAndCallContract(
    EthPrivateKey cred,
    String tokenAddress,
    String contractAddress,
    String value,
    String data, {
    Map<String, dynamic>? transactionBody,
    Map<String, dynamic>? txMetadata,
  }) async {
    final String contractName = 'TransferManager';
    final String methodName = 'approveTokenAndCallContract';
    final EthereumAddress wallet =
        EthereumAddress.fromHex(_smartWallet.smartWalletAddress);
    final EthereumAddress token = EthereumAddress.fromHex(tokenAddress);
    final EthereumAddress contract = EthereumAddress.fromHex(contractAddress);
    final DC<Exception, TokenDetails> tokenDetailsRes =
        await _explorerSection.getTokenDetails(tokenAddress);

    final BigInt amount =
        AmountFormat.toBigInt(value, tokenDetailsRes.data?.decimals ?? 18);
    final String _data = ContractsHelper.getEncodedDataForContractCall(
      contractName,
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
      _data,
      nonce,
      BigInt.from(0),
      BigInt.from(Variables.DEFAULT_GAS_LIMIT),
    );
    final Relay relayDto = Relay(
      walletModuleAddress: _smartWallet.walletModules.transferManager,
      walletAddress: _smartWallet.smartWalletAddress,
      data: _data,
      nonce: nonce,
      methodName: methodName,
      signature: signature,
      walletModule: contractName,
      transactionBody: transactionBody,
      txMetadata: txMetadata,
    );

    return relay(relayDto);
  }

  Future<DC<Exception, Socket>> swapTokens(
    EthPrivateKey cred,
    TradeRequestBody swapRequestBody,
  ) async {
    DC<Exception, TradeCallParameters> swapCallParameters =
        await _tradeSection.requestParameters(
      swapRequestBody,
    );

    final String data = swapCallParameters.data?.rawTxn['data'].replaceFirst(
      '0x',
      '',
    );
    if (swapRequestBody.currencyIn ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      return callContract(
        cred,
        swapCallParameters.data!.rawTxn['to'],
        data,
      );
    } else {
      return approveTokenAndCallContract(
        cred,
        swapRequestBody.currencyIn,
        swapCallParameters.data?.rawTxn['to'],
        data,
        BigInt.parse(swapCallParameters.data?.args.first).toString(),
      );
    }
  }

  Future<DC<Exception, Socket>> stakeToken(
    EthPrivateKey cred,
    String tokenAddress,
    String value,
  ) async {
    final DC<Exception, StakeResponseBody> response =
        await _stakingSection.stake(
      StakeRequestBody(
        tokenAddress: tokenAddress,
        tokenAmount: value,
        accountAddress: _smartWallet.smartWalletAddress,
      ),
    );
    if (response.hasError) {
      return DC.error(response.error!);
    }
    final DC<Exception, TokenDetails> tokenDetailsRes =
        await _explorerSection.getTokenDetails(tokenAddress);

    final BigInt amount =
        AmountFormat.toBigInt(value, tokenDetailsRes.data?.decimals ?? 18);

    final String data = response.data!.encodedABI.replaceFirst(
      '0x',
      '',
    );

    return approveTokenAndCallContract(
      cred,
      tokenAddress,
      response.data!.contractAddress,
      data,
      amount.toString(),
    );
  }

  Future<DC<Exception, Socket>> unstakeToken(
    EthPrivateKey cred,
    String tokenAddress,
    String value,
  ) async {
    final DC<Exception, UnstakeResponseBody> response =
        await _stakingSection.unstake(
      UnstakeRequestBody(
        tokenAddress: tokenAddress,
        tokenAmount: value,
        accountAddress: _smartWallet.smartWalletAddress,
      ),
    );
    if (response.hasError) {
      return DC.error(response.error!);
    }
    final DC<Exception, TokenDetails> tokenDetailsRes =
        await _explorerSection.getTokenDetails(tokenAddress);

    final BigInt amount =
        AmountFormat.toBigInt(value, tokenDetailsRes.data?.decimals ?? 18);
    final Map<String, dynamic> transactionBody = {
      "status": 'pending',
      "from": _smartWallet.smartWalletAddress,
      'value': amount.toString(),
    };
    final String data = response.data!.encodedABI.replaceFirst(
      '0x',
      '',
    );

    return approveTokenAndCallContract(
      cred,
      tokenAddress,
      response.data!.contractAddress,
      data,
      amount.toString(),
      transactionBody: transactionBody,
    );
  }
}
