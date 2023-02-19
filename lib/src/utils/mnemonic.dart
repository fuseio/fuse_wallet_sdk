import 'dart:typed_data';
import 'package:bip32/bip32.dart' as bip32;
import 'package:bip39/bip39.dart' as bip39;
import 'package:hex/hex.dart';
import 'package:compute/compute.dart';

/// A utility class for generating and validating mnemonics, and deriving private keys from them.
class Mnemonic {
  /// Generates a new BIP-39 mnemonic with a given strength (default 128 bits).
  ///
  /// Returns a string representing the new mnemonic.
  static String generate({int strength = 128}) =>
      bip39.generateMnemonic(strength: strength);

  /// Validates a BIP-39 mnemonic.
  ///
  /// Returns true if the mnemonic is valid, and false otherwise.
  static bool validateMnemonic(String mnemonic) =>
      bip39.validateMnemonic(mnemonic);

  /// Derives a private key from a BIP-39 mnemonic using a given derivation path and passphrase.
  ///
  /// [mnemonic] - The BIP-39 mnemonic to derive the private key from.
  /// [derivePath] - The derivation path to use (default "m/44'/60'/0'/0/").
  /// [childIndex] - The index of the child key to derive (default 0).
  /// [passphrase] - The optional passphrase to use when deriving the key (default "").
  ///
  /// Returns a string representing the derived private key.
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

  /// Generates a new private key by first generating a new BIP-39 mnemonic and then deriving the private key from it.
  ///
  /// Returns a future containing a string representing the new private key.
  static Future<String> generatePrivateKey() async {
    final String mnemonic = generate();
    final privateKey = await compute(
      privateKeyFromMnemonic,
      mnemonic,
    );
    return privateKey;
  }
}
