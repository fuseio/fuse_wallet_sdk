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

      // Relay subscriptions
      smartWalletsSDK.on('transactionStarted', (eventData) {
        print('transactionStarted ${eventData.toString()}');
      });
      smartWalletsSDK.on('transactionHash', (eventData) {
        print('transactionHash ${eventData.toString()}');
      });
      smartWalletsSDK.on('transactionSucceeded', (eventData) {
        print('transactionSucceeded ${eventData.toString()}');
      });
      smartWalletsSDK.on('transactionFailed', (eventData) {
        print('transactionFailed ${eventData.toString()}');
        exit(1);
      });

      // Sending gasless transaction
      await smartWalletsSDK.transfer(
        credentials,
        tokenAddress,
        receiverAddress,
        '0.001',
      );
    }
  }

  final DC<Exception, String> authRes = await smartWalletsSDK.authenticate(
    credentials,
  );
  if (authRes.hasError) {
    print(authRes.error);
  } else {
    // Create Wallet subscriptions
    smartWalletsSDK.on('smartWalletCreationStarted', (eventData) {
      print('smartWalletCreationStarted ${eventData.toString()}');
    });
    smartWalletsSDK.on('transactionHash', (eventData) {
      print('transactionHash ${eventData.toString()}');
    });
    smartWalletsSDK.on('smartWalletCreationSucceeded', (eventData) {
      print('smartWalletCreationSucceeded ${eventData.toString()}');
      fetchWallet(smartWalletsSDK);
    });
    smartWalletsSDK.on('smartWalletCreationFailed', (eventData) {
      print('smartWalletCreationFailed ${eventData.toString()}');
      exit(1);
    });
    // Create Wallet
    final DC<Exception, bool> response = await smartWalletsSDK.createWallet();
    if (response.hasError) {
      print('Wallet probably already created, trying to fetch it.');
      fetchWallet(smartWalletsSDK);
    }
  }
}
