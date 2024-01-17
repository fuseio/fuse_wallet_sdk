import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final credentials = EthPrivateKey.fromHex('WALLET_PRIVATE_KEY');
  // Create a project: https://developers.fuse.io
  final publicApiKey = 'YOUR_PUBLIC_API_KEY';
  final fuseSDK = await FuseSDK.init(
    publicApiKey,
    credentials,
  );

  await fuseSDK.transferToken(
    EthereumAddress.fromHex(Variables.NATIVE_TOKEN_ADDRESS),
    EthereumAddress.fromHex('RECIPIENT_ADDRESS'),
    BigInt.parse('AMOUNT_IN_WEI'),
    FuseSDK.defaultTxOptions.copyWith(
      useNonceSequence: true,
      customNonceKey: BigInt.from(10),
    ),
  );
  await fuseSDK.transferToken(
    EthereumAddress.fromHex(Variables.NATIVE_TOKEN_ADDRESS),
    EthereumAddress.fromHex('RECIPIENT_ADDRESS'),
    BigInt.parse('AMOUNT_IN_WEI'),
    FuseSDK.defaultTxOptions.copyWith(
      customNonceKey: BigInt.from(100),
      useNonceSequence: true,
    ),
  );

  exit(1);
}
