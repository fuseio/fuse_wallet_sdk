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
        onTransactionStarted: (eventData) {
          print('onTransactionStarted ${eventData.toString()}');
        },
        onTransactionSucceeded: (eventData) {
          print('onTransactionSucceeded ${eventData.toString()}');
        },
        onTransactionFailed: (eventData) {
          print('onTransactionFailed ${eventData.toString()}');
        },
      );
    }
  }

  final DC<Exception, String> authRes = await smartWalletsSDK.authenticate(
    credentials,
  );
  if (authRes.hasError) {
    print(authRes.error);
  } else {
    final DC<Exception, bool> response = await smartWalletsSDK.createWallet(
      onStarted: (eventData) {
        print('onStarted ${eventData.toString()}');
      },
      onSucceeded: (eventData) {
        print('onSucceeded ${eventData.toString()}');
        fetchWallet(smartWalletsSDK);
      },
      onFailed: (eventData) {
        print('onFailed ${eventData.toString()}');
      },
    );
    if (response.hasError) {
      print('Wallet probably already created, trying to fetch it.');
      fetchWallet(smartWalletsSDK);
    }
  }
}
