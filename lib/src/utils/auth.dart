import 'dart:typed_data';

import 'package:hex/hex.dart';
import 'package:web3dart/credentials.dart';
import 'package:web3dart/crypto.dart';

import 'package:fuse_wallet_sdk/src/models/auth/auth.dto.dart';

/// Class for handling authentication processes for Fuse Smart Wallets.
class SmartWalletAuth {
  /// This method returns the authentication token of a wallet given its [credentials].
  ///
  /// The [credentials] should be type of [EthPrivateKey], and contains the address of the wallet to authenticate.
  ///
  /// It returns a [AuthDto], containing the [hash], [ownerAddress] and [signature] of the authenticated wallet.
  static AuthDto signer(
    EthPrivateKey credentials, {
    String? smartWalletAddress,
  }) {
    final String ownerAddress = credentials.address.hexEip55;
    final Uint8List input = Uint8List.fromList(HEX.decode(
      ownerAddress.replaceFirst('0x', ''),
    ));
    final Uint8List hash = keccak256(input);
    final Uint8List signature =
        credentials.signPersonalMessageToUint8List(hash);

    return AuthDto(
      hash: bytesToHex(hash, include0x: true),
      ownerAddress: ownerAddress,
      signature: bytesToHex(signature.toList(), include0x: true),
      smartWalletAddress: smartWalletAddress,
    );
  }
}
