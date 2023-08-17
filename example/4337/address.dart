import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final EthPrivateKey credentials = EthPrivateKey.fromHex('YOUR_PRIVATE_KEY');
  // Create a project: https://developers.staging.fuse.io
  final String publicApiKey = 'YOUR_PUBLIC_API_KEY';
  final FuseSDK fuseSDK = await FuseSDK.init(
    publicApiKey,
    credentials,
  );

  print('Simple account address: ${fuseSDK.simpleAccount.getSender()}');
  exit(1);
}
