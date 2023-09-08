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
    withPaymaster: true,
  );

  final res = await fuseSDK.transferToken(
    EthereumAddress.fromHex('TOKEN_ADDRESS'),
    EthereumAddress.fromHex('RECIPIENT_ADDRESS'),
    BigInt.parse('AMOUNT_IN_WEI'),
    FuseSDK.defaultTxOptions.copyWith(
      withRetry: true,
      feeIncrementPercentage: 11,
    ),
  );
  print('UserOpHash: ${res.userOpHash}');

  print('Waiting for transaction...');
  final ev = await res.wait();
  print('Transaction hash: ${ev?.transactionHash}');
  exit(1);
}
