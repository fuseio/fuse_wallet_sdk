import 'dart:io';

import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

void main() async {
  final EthPrivateKey credentials = EthPrivateKey.fromHex('YOUR_PRIVATE_KEY');
  // Create a project: https://developers.staging.fuse.io
  final String publicApiKey = 'YOUR_PUBLIC_API_KEY';
  final FuseSDK fuseSDK = await FuseSDK.init(
    publicApiKey,
    credentials,
    withPaymaster: false,
  );
  final usdcTokenAddress = '0x620fd5fa44be6af63715ef4e65ddfa0387ad13f5';
  final voltTokenAddress = '0x34ef2cc892a88415e9f02b91bfa9c91fc0be6bd4';
  final wethTokenAddress = '0x0BE9e53fd7EDaC9F859882AfdDa116645287C629';
  final fUSDTokenAddress = '0xd0ce1b4A349C35e61Af02f5971e71ac502441E49';
  final nativeTokenAddress = Variables.NATIVE_TOKEN_ADDRESS;
  // final res = await fuseSDK.approveToken(
  //   EthereumAddress.fromHex(wethTokenAddress),
  //   EthereumAddress.fromHex('0xE3F85aAd0c8DD7337427B9dF5d0fB741d65EEEB5'),
  //   BigInt.parse('100000000000000000'),
  // );

  // Currently, the swapTokens method is working only for WETH -> FUSE and FUSE -> WETH
  final res = await fuseSDK.swapTokens(
    TradeRequestBody(
      amountIn: '0.1',
      currencyIn: wethTokenAddress,
      currencyOut: nativeTokenAddress,
      recipient: fuseSDK.simpleAccount.getSender(),
    ),
  );
  print('UserOpHash: ${res.userOpHash}');

  print('Waiting for transaction...');
  final ev = await res.wait();
  print('Transaction hash: ${ev?.transactionHash}');
  exit(1);
}
