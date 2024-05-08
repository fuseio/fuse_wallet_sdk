import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final credentials = EthPrivateKey.fromHex('WALLET_PRIVATE_KEY');
  // Create a project: https://console.fuse.io/build
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
        final nativeFuseAddress = Variables.NATIVE_TOKEN_ADDRESS;
        final usdcTokenAddress = '0x28C3d1cD466Ba22f6cae51b1a4692a831696391A';
        final inputAmount = BigInt.parse('10000000000000000');

        final exceptionOrStream = await fuseWalletSDK.swapTokens(
          credentials,
          TradeRequest(
            inputToken: nativeFuseAddress,
            outputToken: usdcTokenAddress,
            inputAmount: inputAmount,
            exactIn: true,
          ),
        );

        if (exceptionOrStream.hasError) {
          final defaultSwapTokensException =
              Exception("An error occurred while swapping tokens.");
          final exception =
              exceptionOrStream.error ?? defaultSwapTokensException;
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
    );
  }
}

void _onSmartWalletEventStream(SmartWalletEvent event) {
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
