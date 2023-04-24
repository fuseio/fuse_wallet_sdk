import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  // Create a project: https://developers.fuse.io
  final String publicApiKey = '';
  final FuseWalletSDK fuseWalletSDK = FuseWalletSDK(publicApiKey);
  final String address = '0x...';
  final res = await fuseWalletSDK.graphQLModule.getCollectiblesByOwner(
    address,
  );
  print(res.data);
}
