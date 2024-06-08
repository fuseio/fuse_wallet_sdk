import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final credentials = EthPrivateKey.fromHex('WALLET_PRIVATE_KEY');
  // Create a project: https://console.fuse.io/build
  final publicApiKey = 'YOUR_PUBLIC_API_KEY';
  final fuseSDK = await FuseSDK.init(
    publicApiKey,
    credentials,
  );

  final res = await fuseSDK.transferToken(
    EthereumAddress.fromHex(Variables.NATIVE_TOKEN_ADDRESS),
    EthereumAddress.fromHex('RECIPIENT_ADDRESS'),
    BigInt.parse('AMOUNT_IN_WEI'),
  );
  print('UserOpHash: ${res.userOpHash}');

  fuseSDK.subscribeToUserOp(res.userOpHash).listen(
    _onSmartWalletEvent,
    onError: (error) {
      print('Error occurred: ${error.toString()}');
      exit(1);
    },
  );
}

void _onSmartWalletEvent(SmartWalletEvent event) {
  switch (event.name) {
    case "transactionStarted":
      print('transactionStarted ${event.data.toString()}');
      break;
    case "transactionHash":
      print('transactionHash ${event.data.toString()}');
      break;
    case "transactionSucceeded":
      print('transactionSucceeded ${event.data.toString()}');
      exit(1);
    case "transactionFailed":
      print('transactionFailed ${event.data.toString()}');
      exit(1);
  }
}
