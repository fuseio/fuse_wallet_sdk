import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final credentials = EthPrivateKey.fromHex('YOUR_PRIVATE_KEY');
  // Create a project: https://developers.staging.fuse.io
  final publicApiKey = 'YOUR_PUBLIC_API_KEY';
  final fuseSDK = await FuseSDK.init(
    publicApiKey,
    credentials,
  );

  print('Smart contract wallet address: ${fuseSDK.wallet.getSender()}');

  exit(1);
}
