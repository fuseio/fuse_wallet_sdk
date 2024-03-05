import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final credentials = EthPrivateKey.fromHex('WALLET_PRIVATE_KEY');
  // Create a project: https://console.fuse.io/build
  final publicApiKey = 'YOUR_PUBLIC_API_KEY';
  final fuseSDK = await FuseSDK.init(
    publicApiKey,
    credentials,
    // withPaymaster: true,
  );

  final nativeTokenAddress = Variables.NATIVE_TOKEN_ADDRESS;
  final usdcTokenAddress = '0x28C3d1cD466Ba22f6cae51b1a4692a831696391A';

  final res = await fuseSDK.swapTokens(
    TradeRequest(
      inputToken: nativeTokenAddress,
      outputToken: usdcTokenAddress,
      inputAmount: BigInt.parse('100000000000000000'),
      exactIn: true,
    ),
  );

  print('UserOpHash: ${res.userOpHash}');

  print('Waiting for transaction...');
  final ev = await res.wait();
  print('Transaction hash: ${ev?.transactionHash}');
  exit(1);
}
