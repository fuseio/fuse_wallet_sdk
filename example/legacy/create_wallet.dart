import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final String privateKey = await Mnemonic.generatePrivateKey();
  final EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
  // Create a project: https://developers.fuse.io
  final String publicApiKey = '';
  print('privateKey: $privateKey');
  print('address: ${credentials.address.hexEip55}');
  final FuseWalletSDK fuseWalletSDK = FuseWalletSDK(publicApiKey);
  await fuseWalletSDK.authenticate(credentials);
  createWalletAndListenToSmartWalletEventStream(fuseWalletSDK);
}

Future<void> createWalletAndListenToSmartWalletEventStream(
  FuseWalletSDK fuseWalletSDK,
) async {
  // DEPRECATED
  // final exceptionOrStream = await fuseWalletSDK.createWallet();

  // if (exceptionOrStream.hasError) {
  //   final defaultCreateWalletException =
  //       Exception("An error occurred while creating wallet.");
  //   final exception = exceptionOrStream.error ?? defaultCreateWalletException;
  //   print(exception.toString());
  //   exit(1);
  // }

  // final smartWalletEventStream = exceptionOrStream.data!;

  // smartWalletEventStream.listen(
  //   _onSmartWalletEvent,
  //   onError: (error) {
  //     print('Error occurred: ${error.toString()}');
  //     exit(1);
  //   },
  // );
}

void _onSmartWalletEvent(SmartWalletEvent event) {
  switch (event.name) {
    case "smartWalletCreationStarted":
      print('smartWalletCreationStarted ${event.data.toString()}');
      break;
    case "transactionHash":
      print('transactionHash ${event.data.toString()}');
      break;
    case "smartWalletCreationSucceeded":
      print('smartWalletCreationSucceeded ${event.data.toString()}');
      exit(1);
    case "smartWalletCreationFailed":
      print('smartWalletCreationFailed ${event.data.toString()}');
      exit(1);
  }
}
