import 'dart:typed_data';

import 'package:hex/hex.dart';
import 'package:web3dart/credentials.dart';
import 'package:web3dart/crypto.dart';

import 'package:charge_smart_wallets_sdk/src/models/auth/auth.dto.dart';

class SmartWalletAuth {
  static AuthDto signer(EthPrivateKey credentials) {
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
    );
  }
}
