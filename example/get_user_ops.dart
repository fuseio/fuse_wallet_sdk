import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final credentials = EthPrivateKey.fromHex('WALLET_PRIVATE_KEY');
  // Create a project: https://console.fuse.io/build
  final publicApiKey = 'YOUR_PUBLIC_API_KEY';
  // final publicApiKey = 'YOUR_PUBLIC_API_KEY';

  final fuseSDK = await FuseSDK.init(
    publicApiKey,
    credentials,
  );

  final userOpsResult = await fuseSDK.graphQLModule.getUserOpsBySender(
    fuseSDK.wallet.getSender(),
  );
  if (userOpsResult.hasData) {
    for (final userOp in userOpsResult.data!) {
      print('https://explorer.fuse.io/tx/${userOp.transactionHash}');
    }
  } else {
    print("Failed to fetch user operations: ${userOpsResult.error}");
  }

  exit(1);
}
