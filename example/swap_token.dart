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
        final usdcAddressOnFuse = '0x620fd5fa44BE6af63715Ef4E65DDFA0387aD13F5';
        final nativeFuseAddress = Variables.NATIVE_TOKEN_ADDRESS;
        final amountIn = 'TOKEN_AMOUNT';
        final TradeRequestBody tradeRequestBody = TradeRequestBody(
          currencyIn: usdcAddressOnFuse,
          currencyOut: nativeFuseAddress,
          amountIn: amountIn,
          recipient: smartWallet.smartWalletAddress,
        );

        final exceptionOrStream =
            await fuseWalletSDK.swapTokens(credentials, tradeRequestBody);

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
      onError: (Exception exception) async {
        print('Fetch wallet failed, wallet was not created yet');
        print('creating...');
        createWalletAndListenToSmartWalletEventStream(fuseWalletSDK);
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
