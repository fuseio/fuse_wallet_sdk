import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final credentials = EthPrivateKey.fromHex('YOUR_PRIVATE_KEY');
  // Create a project: https://developers.staging.fuse.io
  final publicApiKey = 'YOUR_PUBLIC_API_KEY';
  final fuseSDK = await FuseSDK.init(
    publicApiKey,
    credentials,
  );

  final res = await fuseSDK.unstakeToken(
    UnstakeRequestBody(
      accountAddress: fuseSDK.wallet.getSender(),
      tokenAmount: '0.1',
      tokenAddress: Variables.NATIVE_TOKEN_ADDRESS,
    ),
    '0xb1DD0B683d9A56525cC096fbF5eec6E60FE79871',
  );
  print('UserOpHash: ${res.userOpHash}');

  print('Waiting for transaction...');
  final ev = await res.wait();
  print('Transaction hash: ${ev?.transactionHash}');
  exit(1);
}
