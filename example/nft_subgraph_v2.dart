import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  // Create a project: https://developers.fuse.io
  final String publicApiKey = '';
  final FuseWalletSDK fuseWalletSDK = FuseWalletSDK(publicApiKey);
  final String owner = '0x...';
  final res = await fuseWalletSDK.nftModuleV2.getErc721(
    owner,
  );
  print(res.data);
}
