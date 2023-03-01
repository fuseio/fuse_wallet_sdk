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
    final DC<Exception, SmartWallet> walletData =
        await fuseWalletSDK.fetchWallet();

    walletData.pick(
      onData: (SmartWallet smartWallet) async {
        final historicalActionsData =
            await fuseWalletSDK.getHistoricalActions();
        historicalActionsData.pick(
          onData: (List<Action> actions) {
            print('actions ${actions.length}');
          },
          onError: (err) {
            print(err);
          },
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
