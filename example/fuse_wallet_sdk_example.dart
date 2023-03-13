import 'dart:convert';
import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

import 'create_wallet.dart';

void main() async {
  final String privateKey = await Mnemonic.generatePrivateKey();
  final EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
  // Create a project: https://developers.fuse.io
  final String publicApiKey = '';
  print('privateKey: $privateKey');
  print('address: ${credentials.address.hexEip55}');
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
        final receiverAddress = '0x...';
        final tokenAddress = Variables.NATIVE_TOKEN_ADDRESS;
        print(
          'Fund your smart wallet: ${smartWallet.smartWalletAddress} '
          'with Fuse, and press any key to execute the transaction',
        );
        stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)!;

        // Sending a gasless transaction
        final exceptionOrStream = await fuseWalletSDK.transferToken(
          credentials,
          tokenAddress,
          receiverAddress,
          '0.001',
        );

        if (exceptionOrStream.hasError) {
          final defaultTransferTokenException = Exception(
            "An error occurred while transferring token.",
          );
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
        print('Failed to fetch');
        print('Trying to create...');
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
      exit(1);
    case 'transactionFailed':
      print('transactionFailed ${event.data.toString()}');
      exit(1);
  }
}
