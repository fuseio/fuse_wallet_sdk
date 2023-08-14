import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final EthPrivateKey credentials = EthPrivateKey.fromHex('YOUR_PRIVATE_KEY');
  // Create a project: https://developers.staging.fuse.io
  final String publicApiKey = 'YOUR_PUBLIC_API_KEY';
  final FuseSDK fuseSDK = await FuseSDK.init(
    publicApiKey,
    credentials,
  );

  final usdcTokenAddress = '0x620fd5fa44be6af63715ef4e65ddfa0387ad13f5';
  final res = await fuseSDK.transferToken(
    EthereumAddress.fromHex(usdcTokenAddress),
    EthereumAddress.fromHex('0x7Ceabc27B1dc6A065fAD85A86AFBaF97F7692088'),
    BigInt.parse('1000000'),
  );
  print('UserOpHash: ${res.userOpHash}');

  print('Waiting for transaction...');
  final ev = await res.wait();
  print('Transaction hash: ${ev?.transactionHash}');
  exit(1);
}
