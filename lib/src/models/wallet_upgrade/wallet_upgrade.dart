import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_upgrade.freezed.dart';
part 'wallet_upgrade.g.dart';

/// Represents a wallet upgrade.
///
/// A wallet upgrade contains information about the version, contract address, disabled and enabled modules,
/// and the creation and update timestamps.
@freezed
class WalletUpgrade with _$WalletUpgrade {
  /// A private constructor for the WalletUpgrade class.
  const WalletUpgrade._();

  /// Creates a new WalletUpgrade instance.
  ///
  /// Parameters:
  /// - [version] – The wallet upgrade version.
  /// - [contractAddress] – The contract address for the wallet upgrade.
  /// - [paddedVersion] – The padded version of the wallet upgrade.
  /// - [disabledModules] – A map of disabled modules in the wallet upgrade.
  /// - [enabledModules] – A map of enabled modules in the wallet upgrade.
  /// - [createdAt] – The creation timestamp of the wallet upgrade.
  /// - [updatedAt] – The last update timestamp of the wallet upgrade.
  /// - [id] – The unique identifier of the wallet upgrade.
  factory WalletUpgrade({
    String? version,
    required String contractAddress,
    String? paddedVersion,
    required Map<String, String> disabledModules,
    required Map<String, String> enabledModules,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: '_id') required String id,
  }) = _WalletUpgrade;

  /// Creates a WalletUpgrade instance from a JSON object.
  ///
  /// Parameters:
  /// - [json] – A map containing the JSON representation of a WalletUpgrade object.
  ///
  /// Returns a WalletUpgrade instance.
  factory WalletUpgrade.fromJson(Map<String, dynamic> json) =>
      _$WalletUpgradeFromJson(json);

  /// Creates a list of WalletUpgrade instances from a JSON array.
  ///
  /// Parameters:
  /// - [walletUpgrades] – An iterable of dynamic objects representing a JSON array of WalletUpgrade objects.
  ///
  /// Returns a list of WalletUpgrade instances.
  static List<WalletUpgrade> walletUpgradesFromJson(
    Iterable<dynamic> walletUpgrades,
  ) =>
      List.from(walletUpgrades).fold<List<WalletUpgrade>>(
        [],
        (previousValue, action) {
          try {
            return [
              ...previousValue,
              WalletUpgrade.fromJson(action),
            ];
          } catch (e) {
            return previousValue;
          }
        },
      );
}
