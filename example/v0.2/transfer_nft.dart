import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final privateKey = await Mnemonic.generatePrivateKey();
  final credentials = EthPrivateKey.fromHex(privateKey);
  // Create a project: https://developers.fuse.io
  final publicApiKey = 'YOUR_PUBLIC_API_KEY';
  final fuseSDK = await FuseSDK.init(
    publicApiKey,
    credentials,
  );

  final tokenId = 1;
  final res = await fuseSDK.transferNFT(
    EthereumAddress.fromHex('NFT_CONTRACT_ADDRESS'),
    EthereumAddress.fromHex('RECIPIENT_ADDRESS'),
    tokenId,
  );
  print('UserOpHash: ${res.userOpHash}');

  print('Waiting for transaction...');
  final ev = await res.wait();
  print('Transaction hash: ${ev?.transactionHash}');
  exit(1);
}
