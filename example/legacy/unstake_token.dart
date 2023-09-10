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
    final walletData = await fuseWalletSDK.fetchWallet();

    walletData.pick(
      onData: (SmartWallet smartWallet) async {
        final unstakeTokenAddress =
            '0x97a6e78c9208c21afaDa67e7E61d7ad27688eFd1';
        final unstakeRequestBody = UnstakeRequestBody(
          accountAddress: smartWallet.smartWalletAddress,
          tokenAmount: 'TOKEN_AMOUNT',
          tokenAddress: "0x34Ef2Cc892a88415e9f02b91BfA9c91fC0bE6bD4",
        );

        final exceptionOrStream = await fuseWalletSDK.unstakeToken(
          credentials,
          unstakeRequestBody,
          unstakeTokenAddress,
        );

        if (exceptionOrStream.hasError) {
          final defaultException = Exception(
            "An error occurred while unstaking token.",
          );
          final exception = exceptionOrStream.error ?? defaultException;
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
      },
    );
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
      break;
    case 'transactionFailed':
      print('transactionFailed ${event.data.toString()}');
      break;
  }
}
