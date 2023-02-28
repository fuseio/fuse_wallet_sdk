import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final String privateKey = await Mnemonic.generatePrivateKey();
  final EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
  // Create a project: https://chargeweb3.com
  final String publicApiKey = '';
  print('privateKey: $privateKey');
  print('address: ${credentials.address.hexEip55}');
  final FuseWalletSDK fuseWalletSDK = FuseWalletSDK(publicApiKey);
  await fuseWalletSDK.authenticate(credentials);

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

  await fuseWalletSDK.createWallet();
}
