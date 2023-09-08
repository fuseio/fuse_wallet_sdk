import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final String privateKey = await Mnemonic.generatePrivateKey();
  final credentials = EthPrivateKey.fromHex(privateKey);
  // Create a project: https://developers.fuse.io
  final publicApiKey = 'YOUR_PUBLIC_API_KEY';
  final fuseSDK = await FuseSDK.init(
    publicApiKey,
    credentials,
  );

  print('Smart contract wallet address: ${fuseSDK.wallet.getSender()}');

  exit(1);
}
