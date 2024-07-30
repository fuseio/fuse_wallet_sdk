import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final credentials = EthPrivateKey.fromHex('WALLET_PRIVATE_KEY');
  // Create a project: https://console.fuse.io/build
  final publicApiKey = 'YOUR_PUBLIC_API_KEY';
  final fuseSDK = await FuseSDK.init(
    publicApiKey,
    credentials,
  );

  final nftsResult = await fuseSDK.balancesModule.getNFTs(
    fuseSDK.wallet.getSender(),
  );

  final erc20Result = await fuseSDK.balancesModule.getTokenList(
    fuseSDK.wallet.getSender(),
  );

  for (Collectible nft in nftsResult.data?.collectibles ?? []) {
    print('nft: ${nft.collection.name} ${nft.descriptorUri}');
  }

  for (TokenDetails action in erc20Result.data?.result ?? []) {
    print('Token name: ${action.name}');
  }

  exit(0);
}
