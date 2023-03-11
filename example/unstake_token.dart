import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';
import 'package:fuse_wallet_sdk/src/models/smart_wallet/smart_wallet_event.dart';

import 'create_wallet.dart';

void main() async {
  final String privateKey = await Mnemonic.generatePrivateKey();
  final EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
  // Create a project: https://developers.fuse.io
  final String publicApiKey = '';
  final FuseWalletSDK fuseWalletSDK = FuseWalletSDK(publicApiKey);
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
        final unstakeRequestBody = UnstakeRequestBody(
          accountAddress: smartWallet.smartWalletAddress,
          tokenAmount: 'TOKEN_AMOUNTS',
          tokenAddress: "0x34Ef2Cc892a88415e9f02b91BfA9c91fC0bE6bD4",
        );

        final exceptionOrStream = await fuseWalletSDK.unstakeToken(
          credentials,
          unstakeRequestBody,
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
      onError: (Exception exception) async {
        createWalletAndListenToSmartWalletEventStream(fuseWalletSDK);
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
