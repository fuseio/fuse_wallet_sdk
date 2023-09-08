import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

import 'create_wallet.dart';

void main() async {
  final String privateKey = await Mnemonic.generatePrivateKey();
  final credentials = EthPrivateKey.fromHex(privateKey);
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
    final DC<Exception, SmartWallet> walletData =
        await fuseWalletSDK.fetchWallet();

    walletData.pick(
      onData: (SmartWallet smartWallet) async {
        final String receiverAddress = '0x...';
        final String nftContractAddress = '0x...';
        final num tokenId = 0; // YOUR ITEM ID

        final exceptionOrStream = await fuseWalletSDK.transferNft(
          credentials,
          nftContractAddress,
          receiverAddress,
          tokenId,
        );

        if (exceptionOrStream.hasError) {
          final defaultTransferNftException =
              Exception("An error occurred while transferring NFT.");
          final exception =
              exceptionOrStream.error ?? defaultTransferNftException;
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
        print('Fetch wallet failed, wallet was not created yet');
        print('creating...');
        createWalletAndListenToSmartWalletEventStream(fuseWalletSDK);
      },
    );
  }
}

void _onSmartWalletEvent(SmartWalletEvent event) {
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
