import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final credentials = EthPrivateKey.fromHex('WALLET_PRIVATE_KEY');
  // Create a project: https://developers.fuse.io
  final publicApiKey = '';
  final fuseWalletSDK = FuseWalletSDK(publicApiKey);
  final DC<Exception, String> authRes = await fuseWalletSDK.authenticate(
    credentials,
  );
  if (authRes.hasError) {
    print("Error occurred in authenticate");
    print(authRes.error);
  } else {
    final exceptionWallet = await fuseWalletSDK.fetchWallet();

    exceptionWallet.pick(onData: (SmartWallet smartWallet) async {
      final tokenAddress = 'TOKEN_ADDRESS';
      final exceptionOrStream = await fuseWalletSDK.approveToken(
        credentials,
        tokenAddress,
        smartWallet.smartWalletAddress,
        '1',
      );

      if (exceptionOrStream.hasError) {
        final defaultTransferTokenException =
            Exception("An error occurred while transferring token.");
        final exception =
            exceptionOrStream.error ?? defaultTransferTokenException;
        print(exception.toString());
        exit(1);
      }

      final smartWalletEventStream = exceptionOrStream.data!;

      smartWalletEventStream.listen(
        _onSmartWalletEvent,
        onError: (error) {
          print('Error occurred: ${error.toString()}');
          exit(1);
        },
      );
    });
  }
}

void _onSmartWalletEvent(SmartWalletEvent event) {
  switch (event.name) {
    case 'transactionStarted':
      print('transactionStarted ${event.data.toString()}');
      break;
    case 'transactionHash':
      print('transactionHash ${event.data.toString()}');
      break;
    case 'transactionSucceeded':
      print('transactionSucceeded ${event.data.toString()}');
      exit(1);
    case 'transactionFailed':
      print('transactionFailed ${event.data.toString()}');
      exit(1);
  }
}
