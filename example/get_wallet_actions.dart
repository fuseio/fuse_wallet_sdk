import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final credentials = EthPrivateKey.fromHex('WALLET_PRIVATE_KEY');

  // Create a project: https://developers.fuse.io
  final publicApiKey = 'YOUR_PUBLIC_API_KEY';

  final fuseSDK = await FuseSDK.init(
    publicApiKey,
    credentials,
    // You can specify the baseUrl. If it's not specified, api.fuse.io is used.
    baseUrl: "api.alpha.fuse.io",
  );

  final walletActionsResult =
      await fuseSDK.getWalletActions(page: 1, limit: 50);

  print("Number of wallet actions: ${walletActionsResult.actions.length}");
}
