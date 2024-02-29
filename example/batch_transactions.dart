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

  final tokenAddress = EthereumAddress.fromHex('TOKEN_ADDRESS');
  final recipientAddress = EthereumAddress.fromHex('RECIPIENT_ADDRESS');
  final amountInWei = BigInt.parse('AMOUNT_IN_WEI');

  // Approve and transfer ERC20 token in a single batch transaction
  final res = await fuseSDK.executeBatch(
    [
      // Approve ERC20 Token call
      Call(
        to: tokenAddress,
        value: BigInt.zero,
        data: ContractsUtils.encodeERC20ApproveCall(
          tokenAddress,
          recipientAddress,
          amountInWei,
        ),
      ),
      // Transfer ERC20 Token call
      Call(
        to: tokenAddress,
        value: BigInt.zero,
        data: ContractsUtils.encodeERC20TransferCall(
          tokenAddress,
          recipientAddress,
          amountInWei,
        ),
      ),
    ],
  );
  print('UserOpHash: ${res.userOpHash}');

  print('Waiting for transaction...');
  final ev = await res.wait();
  print('Transaction hash: ${ev?.transactionHash}');
  exit(1);
}
