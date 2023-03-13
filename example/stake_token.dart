import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

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
        final stakeRequestBody = StakeRequestBody(
          accountAddress: smartWallet.smartWalletAddress,
          tokenAmount: 'TOKEN_AMOUNT',
          tokenAddress: "TOKEN_ADDRESS",
        );

        final exceptionOrStream = await fuseWalletSDK.stakeToken(
          credentials,
          stakeRequestBody,
        );

        if (exceptionOrStream.hasError) {
          final defaultException =
              Exception("An error occurred while staking tokens.");
          final exception = exceptionOrStream.error ?? defaultException;
          print(exception.toString());
          exit(1);
        }

        final smartWalletEventStream = exceptionOrStream.data!;
        smartWalletEventStream.listen(
          _onSmartWalletEventStream,
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

void _onSmartWalletEventStream(SmartWalletEvent event) {
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
