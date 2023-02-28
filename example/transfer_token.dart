import 'dart:convert';
import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final String privateKey = await Mnemonic.generatePrivateKey();
  final EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
  // Create a project: https://chargeweb3.com
  final String publicApiKey = '';
  final FuseWalletSDK fuseWalletSDK = FuseWalletSDK(publicApiKey);
  final DC<Exception, String> authRes = await fuseWalletSDK.authenticate(
    credentials,
  );
  if (authRes.hasError) {
    print("Error occurred in authenticate");
    print(authRes.error);
  } else {
    final DC<Exception, SmartWallet> walletData =
        await fuseWalletSDK.fetchWallet();

    walletData.pick(
      onData: (SmartWallet smartWallet) async {
        final String receiverAddress = '0x..';
        final String tokenAddress = Variables.NATIVE_TOKEN_ADDRESS;
        print(
            'Fund your smart wallet: ${smartWallet.smartWalletAddress} with Fuse to test transfer, and press any key.');
        stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)!;

        // Relay subscriptions
        fuseWalletSDK.on('transactionStarted', (eventData) {
          print('transactionStarted ${eventData.toString()}');
        });
        fuseWalletSDK.on('transactionHash', (eventData) {
          print('transactionHash ${eventData.toString()}');
        });
        fuseWalletSDK.on('transactionSucceeded', (eventData) async {
          print('transactionSucceeded ${eventData.toString()}');
          exit(1);
        });
        fuseWalletSDK.on('transactionFailed', (eventData) {
          print('transactionFailed ${eventData.toString()}');
          exit(1);
        });

        // Sending gasless transaction
        await fuseWalletSDK.transferToken(
          credentials,
          tokenAddress,
          receiverAddress,
          '0.0001',
        );
      },
      onError: (Exception exception) async {
        print('Fetch wallet failed, wallet was not created yet');
        print('creating...');
        // Create Wallet subscriptions
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
