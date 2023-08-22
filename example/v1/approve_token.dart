import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final credentials = EthPrivateKey.fromHex('YOUR_PRIVATE_KEY');
  // Create a project: https://developers.fuse.io
  final publicApiKey = 'YOUR_PUBLIC_API_KEY';
  final fuseSDK = await FuseSDK.init(
    publicApiKey,
    credentials,
  );

  final usdcTokenAddress = '0x620fd5fa44be6af63715ef4e65ddfa0387ad13f5';
  final res = await fuseSDK.approveToken(
    EthereumAddress.fromHex(usdcTokenAddress),
    EthereumAddress.fromHex('SPENDER_ADDRESS'),
    BigInt.parse('1000000'),
  );
  print('UserOpHash: ${res.userOpHash}');

  print('Waiting for transaction...');
  final ev = await res.wait();
  print('Transaction hash: ${ev?.transactionHash}');
  final val = await fuseSDK.getAllowance(
    EthereumAddress.fromHex(usdcTokenAddress),
    EthereumAddress.fromHex('SPENDER_ADDRESS'),
  );
  print('allowance ${val.compareTo(BigInt.parse('1000000'))}');
  exit(1);
}
