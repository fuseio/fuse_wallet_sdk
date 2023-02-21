import 'dart:convert';
import 'dart:io';

import 'package:charge_smart_wallets_sdk/charge_smart_wallets_sdk.dart';

void main() async {
  final String privateKey = await Mnemonic.generatePrivateKey();
  final EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
  // Create a project: https://chargeweb3.com
  final String publicApiKey = '';
  print('privateKey: $privateKey');
  print('address: ${credentials.address.hexEip55}');
  final SmartWalletsSDK smartWalletsSDK = SmartWalletsSDK(publicApiKey);
  final DC<Exception, String> authRes = await smartWalletsSDK.authenticate(
    credentials,
  );
  if (authRes.hasError) {
    print("Error occurred in authenticate");
    print(authRes.error);
  } else {
    final walletData = await smartWalletsSDK.fetchWallet();

    walletData.pick(
      onData: (SmartWallet smartWallet) async {
        final receiverAddress = '0x...';
        final tokenAddress = Variables.NATIVE_TOKEN_ADDRESS;
        print(
            'Fund your smart wallet: ${smartWallet.smartWalletAddress} with Fuse, and press any key to execute the transaction');
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
          exit(1);
        });

        smartWalletsSDK.on('transactionFailed', (eventData) {
          print('transactionFailed ${eventData.toString()}');
          exit(1);
        });

        // Sending a gasless transaction
        await smartWalletsSDK.transferToken(
          credentials,
          tokenAddress,
          receiverAddress,
          '0.001',
        );
      },
      onError: (Exception exception) async {
        print('Failed to fetch');
        print('Trying to create...');
        // Create wallet subscriptions
        smartWalletsSDK.on('smartWalletCreationStarted', (eventData) {
          print('smartWalletCreationStarted ${eventData.toString()}');
        });

        smartWalletsSDK.on('transactionHash', (eventData) {
          print('transactionHash ${eventData.toString()}');
        });

        smartWalletsSDK.on('smartWalletCreationSucceeded', (eventData) {
          print('smartWalletCreationSucceeded ${eventData.toString()}');
          exit(1);
        });

        smartWalletsSDK.on('smartWalletCreationFailed', (eventData) {
          print('smartWalletCreationFailed ${eventData.toString()}');
          exit(1);
        });

        // Create Wallet
        await smartWalletsSDK.createWallet();
      },
    );
  }
}
