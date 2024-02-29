import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final credentials = EthPrivateKey.fromHex('WALLET_PRIVATE_KEY');

  // Create a project: https://console.fuse.io/build
  final publicApiKey = 'YOUR_PUBLIC_API_KEY';

  final fuseSDK = await FuseSDK.init(
    publicApiKey,
    credentials,
  );

  final walletActionsResult =
      await fuseSDK.getWalletActions(page: 1, limit: 50);

  print("Number of wallet actions: ${walletActionsResult.actions.length}");
}
