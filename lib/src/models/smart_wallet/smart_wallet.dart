import 'package:fuse_wallet_sdk/src/models/wallet_modules/wallet_modules.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'smart_wallet.freezed.dart';
part 'smart_wallet.g.dart';

/// Represents a smart wallet with its associated properties.
@freezed
class SmartWallet with _$SmartWallet {
  /// Constructs a new `SmartWallet` instance.
  ///
  /// Parameters:
  /// - [ownerAddress] – The owner's wallet address.
  /// - [smartWalletAddress] – The smart wallet address.
  /// - [walletModules] – The wallet modules associated with the smart wallet.
  /// - [paddedVersion] – The padded version of the smart wallet.
  /// - [version] – The smart wallet version.
  /// - [networks] – A list of supported networks (default: `['fuse']`).
  factory SmartWallet({
    required String ownerAddress,
    required String smartWalletAddress,
    required WalletModules walletModules,
    required String paddedVersion,
    required String version,
    @Default(['fuse']) List<String> networks,
  }) = _SmartWallet;

  /// Creates a `SmartWallet` instance from a JSON object.
  ///
  /// Parameters:
  /// - [json] – A map containing the JSON object.
  ///
  /// Returns a `SmartWallet` instance.
  factory SmartWallet.fromJson(Map<String, dynamic> json) =>
      _$SmartWalletFromJson(json);
}
