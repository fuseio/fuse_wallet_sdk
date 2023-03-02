import 'dart:convert';
import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final String privateKey = await Mnemonic.generatePrivateKey();
  final EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
  // Create a project: https://developers.fuse.io
  final String publicApiKey = '';
  print('privateKey: $privateKey');
  print('address: ${credentials.address.hexEip55}');
  final FuseWalletSDK fuseWalletSDK = FuseWalletSDK(publicApiKey);
  final DC<Exception, String> authRes = await fuseWalletSDK.authenticate(
    credentials,
  );
  if (authRes.hasError) {
    print("Error occurred in authenticate");
    print(authRes.error);
  } else {
    final walletData = await fuseWalletSDK.fetchWallet();

    walletData.pick(
      onData: (SmartWallet smartWallet) async {
        final receiverAddress = '0x...';
        final tokenAddress = Variables.NATIVE_TOKEN_ADDRESS;
        print(
            'Fund your smart wallet: ${smartWallet.smartWalletAddress} with Fuse, and press any key to execute the transaction');
        stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)!;

        // Relay subscriptions
        fuseWalletSDK.on('transactionStarted', (eventData) {
          print('transactionStarted ${eventData.toString()}');
        });

        fuseWalletSDK.on('transactionHash', (eventData) {
          print('transactionHash ${eventData.toString()}');
        });

        fuseWalletSDK.on('transactionSucceeded', (eventData) {
          print('transactionSucceeded ${eventData.toString()}');
          exit(1);
        });

        fuseWalletSDK.on('transactionFailed', (eventData) {
          print('transactionFailed ${eventData.toString()}');
          exit(1);
        });

        // Sending a gasless transaction
        await fuseWalletSDK.transferToken(
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
        fuseWalletSDK.on('smartWalletCreationStarted', (eventData) {
          print('smartWalletCreationStarted ${eventData.toString()}');
        });

        fuseWalletSDK.on('transactionHash', (eventData) {
          print('transactionHash ${eventData.toString()}');
        });

        fuseWalletSDK.on('smartWalletCreationSucceeded', (eventData) {
          print('smartWalletCreationSucceeded ${eventData.toString()}');
          exit(1);
        });

        fuseWalletSDK.on('smartWalletCreationFailed', (eventData) {
          print('smartWalletCreationFailed ${eventData.toString()}');
          exit(1);
        });

        // Create Wallet
        await fuseWalletSDK.createWallet();
      },
    );
  }
}
