import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final String privateKey = await Mnemonic.generatePrivateKey();
  final EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
  // Create a project: https://chargeweb3.com
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
        // Relay subscriptions
        fuseWalletSDK.on('transactionStarted', (eventData) {
          print('transactionStarted ${eventData.toString()}');
        });
        fuseWalletSDK.on('transactionHash', (eventData) {
          print('transactionHash ${eventData.toString()}');
        });
        fuseWalletSDK.on('transactionSucceeded', (eventData) {
          print('transactionSucceeded ${eventData.toString()}');
          exit(1);
        });
        fuseWalletSDK.on('transactionFailed', (eventData) {
          print('transactionFailed ${eventData.toString()}');
          exit(1);
        });

        // Sending a gasless transaction
        await fuseWalletSDK.swapTokens(
          credentials,
          tradeRequestBody,
        );
      },
      onError: (Exception exception) async {
        print('Fetch wallet failed, wallet was not created yet');
        print('creating...');
        // Create Wallet subscriptions
        fuseWalletSDK.on('smartWalletCreationStarted', (eventData) {
          print('smartWalletCreationStarted ${eventData.toString()}');
        });
        fuseWalletSDK.on('transactionHash', (eventData) {
          print('transactionHash ${eventData.toString()}');
        });
        fuseWalletSDK.on('smartWalletCreationSucceeded', (eventData) {
          print('smartWalletCreationSucceeded ${eventData.toString()}');
          exit(1);
        });
        fuseWalletSDK.on('smartWalletCreationFailed', (eventData) {
          print('smartWalletCreationFailed ${eventData.toString()}');
          exit(1);
        });

        // Create Wallet
        await fuseWalletSDK.createWallet();
      },
    );
  }
}
