import 'dart:convert';
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
    final exceptionWallet = await fuseWalletSDK.fetchWallet();

    exceptionWallet.pick(
      onData: (SmartWallet smartWallet) async {
        final String receiverAddress = '0x..';
        final String tokenAddress = Variables.NATIVE_TOKEN_ADDRESS;
        print(
          'Fund your smart wallet: ${smartWallet.smartWalletAddress} with '
          'Fuse to test transfer, and press any key.',
        );
        stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)!;

        final exceptionOrStream = await fuseWalletSDK.transferToken(
          credentials,
          tokenAddress,
          receiverAddress,
          '0.0001',
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
      print('transactionStarted ${event.toString()}');
      break;
    case 'transactionHash':
      print('transactionHash ${event.toString()}');
      break;
    case 'transactionSucceeded':
      print('transactionSucceeded ${event.toString()}');
      exit(1);
    case 'transactionFailed':
      print('transactionFailed ${event.toString()}');
      exit(1);
  }
}
