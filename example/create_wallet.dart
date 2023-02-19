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
  await smartWalletsSDK.authenticate(credentials);

  smartWalletsSDK.on(WebSocketEvents.smartWalletCreationStarted.name, (eventData) {
    print('smartWalletCreationStarted ${eventData.toString()}');
  });

  smartWalletsSDK.on(WebSocketEvents.transactionHash.name, (eventData) {
    print('transactionHash ${eventData.toString()}');
  });

  smartWalletsSDK.on(WebSocketEvents.smartWalletCreationSucceeded.name, (eventData) {
    print('smartWalletCreationSucceeded ${eventData.toString()}');
    exit(1);
  });

  smartWalletsSDK.on(WebSocketEvents.smartWalletCreationFailed.name, (eventData) {
    print('smartWalletCreationFailed ${eventData.toString()}');
    exit(1);
  });

  await smartWalletsSDK.createWallet();
}
