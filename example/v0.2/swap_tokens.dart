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
    // withPaymaster: true,
  );

  final nativeTokenAddress = Variables.NATIVE_TOKEN_ADDRESS;
  final usdcTokenAddress = '0x620fd5fa44be6af63715ef4e65ddfa0387ad13f5';

  final res = await fuseSDK.swapTokens(
    TradeRequestBody(
      amountIn: '0.1',
      currencyIn: nativeTokenAddress,
      currencyOut: usdcTokenAddress,
      recipient: fuseSDK.wallet.getSender(),
    ),
  );

  print('UserOpHash: ${res.userOpHash}');

  print('Waiting for transaction...');
  final ev = await res.wait();
  print('Transaction hash: ${ev?.transactionHash}');
  exit(1);
}
