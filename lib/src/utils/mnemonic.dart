library web3;

import 'dart:typed_data';
import 'package:bip32/bip32.dart' as bip32;
import 'package:bip39/bip39.dart' as bip39;
import 'package:hex/hex.dart';
import 'package:compute/compute.dart';

class Mnemonic {
  static String generate({int strength = 128}) =>
      bip39.generateMnemonic(strength: strength);

  static bool validateMnemonic(String mnemonic) =>
      bip39.validateMnemonic(mnemonic);

  static String privateKeyFromMnemonic(
    String mnemonic, {
    String derivePath = "m/44'/60'/0'/0/",
    int childIndex = 0,
    String passphrase = "",
  }) {
    final String seed = bip39.mnemonicToSeedHex(
      mnemonic,
      passphrase: passphrase,
    );
    final bip32.BIP32 root = bip32.BIP32.fromSeed(
      HEX.decode(seed) as Uint8List,
    );
    final bip32.BIP32 child = root.derivePath("$derivePath$childIndex");
    final String privateKey = HEX.encode(child.privateKey!);
    return privateKey;
  }

  static Future<String> generatePrivateKey() async {
    final String mnemonic = generate();
    final privateKey = await compute(
      privateKeyFromMnemonic,
      mnemonic,
    );
    return privateKey;
  }
}
