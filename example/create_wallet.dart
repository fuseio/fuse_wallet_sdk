import 'dart:io';

import 'package:charge_smart_wallets_sdk/charge_smart_wallets_sdk.dart';

void main() async {
  final String privateKey = await Mnemonic.generatePrivateKey();
  final EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
  final String publicApiKey = '';
  print('privateKey: $privateKey');
  print('address: ${credentials.address.hexEip55}');
  final SmartWalletsSDK smartWalletsSDK = SmartWalletsSDK(publicApiKey);
  await smartWalletsSDK.authenticate(
    credentials,
  );

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

  await smartWalletsSDK.createWallet();
}
