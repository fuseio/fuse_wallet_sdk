import 'dart:convert';
import 'dart:io';

import 'package:charge_smart_wallets_sdk/charge_smart_wallets_sdk.dart';

void main() async {
  final String privateKey = await Mnemonic.generatePrivateKey();
  final EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
  final String publicApiKey = '';
  print('privateKey: $privateKey');
  print('address: ${credentials.address.hexEip55}');
  final SmartWalletsSDK smartWalletsSDK = SmartWalletsSDK(
    publicApiKey,
  );

  void fetchWallet(SmartWalletsSDK smartWalletsSDK) async {
    DC<Exception, SmartWallet> getWalletResponse =
        await smartWalletsSDK.fetchWallet();
    if (getWalletResponse.hasError) {
      print('Failed to fetch wallet');
    } else {
      final SmartWallet smartWallet = getWalletResponse.data!;
      final receiverAddress = '0x...';
      final tokenAddress = Variables.NATIVE_TOKEN_ADDRESS;
      print(
          'Fund your smart wallet: ${smartWallet.smartWalletAddress} with Fuse testnet to test transfer, and press any key.');
      String temp = stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)!;
      // final tokenAddress = '0xa11d8a7F4ce086572Be0b86D08138b86a03F5522';
      final DC<Exception, Socket> transferResp = await smartWalletsSDK.transfer(
        credentials,
        tokenAddress,
        receiverAddress,
        '0.001',
      );
      if (transferResp.hasError) {
        print('Failed to transfer');
      } else {
        Socket socket = transferResp.data!;
        socket.on(WebSocketEventsNames.transactionSucceeded.name, (data) {
          print(WebSocketEventsNames.transactionSucceeded.name);
          socket.close();
        });
        socket.on(WebSocketEventsNames.transactionFailed.name, (data) {
          print(WebSocketEventsNames.transactionFailed.name);
          socket.close();
        });
        socket.on(WebSocketEventsNames.transactionStarted.name, (data) {
          print(WebSocketEventsNames.transactionStarted.name);
        });
      }
    }
  }

  final DC<Exception, String> authRes = await smartWalletsSDK.authenticate(
    credentials,
  );
  if (authRes.hasError) {
    print(authRes.error);
  } else {
    final DC<Exception, Socket> response = await smartWalletsSDK.createWallet();
    if (response.hasError) {
      print('WALLET ALREADY CREATED');
      fetchWallet(smartWalletsSDK);
    } else {
      Socket socket = response.data!;
      socket.on(WebSocketEventsNames.smartWalletCreationSucceeded.name, (data) {
        socket.close();
        print(WebSocketEventsNames.smartWalletCreationSucceeded.name);
        final SmartWallet account = SmartWallet.fromJson(data);
        smartWalletsSDK.smartWallet = account;
        fetchWallet(smartWalletsSDK);
      });
      socket.on(WebSocketEventsNames.smartWalletCreationFailed.name, (data) {
        print(WebSocketEventsNames.smartWalletCreationFailed.name);
        socket.close();
      });
      socket.on(WebSocketEventsNames.smartWalletCreationStarted.name, (data) {
        print(WebSocketEventsNames.smartWalletCreationStarted.name);
      });
    }
  }
}
