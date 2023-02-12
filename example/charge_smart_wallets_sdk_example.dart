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
      stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)!;
      // final tokenAddress = '0xa11d8a7F4ce086572Be0b86D08138b86a03F5522';
      await smartWalletsSDK.transfer(
        credentials,
        tokenAddress,
        receiverAddress,
        '0.001',
      );
      smartWalletsSDK.on('transactionStarted', (eventData) {
        print('transactionStarted ${eventData.toString()}');
      });
      smartWalletsSDK.on('transactionSucceeded', (eventData) {
        print('transactionSucceeded ${eventData.toString()}');
        exit(1);
      });
      smartWalletsSDK.on('transactionFailed', (eventData) {
        print('transactionFailed ${eventData.toString()}');
        exit(1);
      });
    }
  }

  final DC<Exception, String> authRes = await smartWalletsSDK.authenticate(
    credentials,
  );
  if (authRes.hasError) {
    print(authRes.error);
  } else {
    final DC<Exception, bool> response = await smartWalletsSDK.createWallet();
    smartWalletsSDK.on('smartWalletCreationStarted', (eventData) {
      print('onStarted ${eventData.toString()}');
    });
    smartWalletsSDK.on('smartWalletCreationSucceeded', (eventData) {
      print('smartWalletCreationSucceeded ${eventData.toString()}');
      fetchWallet(smartWalletsSDK);
      exit(1);
    });
    smartWalletsSDK.on('smartWalletCreationFailed', (eventData) {
      print('smartWalletCreationFailed ${eventData.toString()}');
      exit(1);
    });
    if (response.hasError) {
      print('Wallet probably already created, trying to fetch it.');
      fetchWallet(smartWalletsSDK);
    }
  }
}
