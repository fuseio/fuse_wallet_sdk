import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  // Create a project: https://console.fuse.io/build
  final publicApiKey = '';
  final fuseWalletSDK = FuseWalletSDK(publicApiKey);
  final String address = '0x...';
  final res = await fuseWalletSDK.nftModule.getCollectiblesByOwner(
    address,
  );
  print(res.data);
}
