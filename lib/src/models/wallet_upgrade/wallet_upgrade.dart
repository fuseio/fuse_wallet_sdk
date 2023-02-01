import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_upgrade.freezed.dart';
part 'wallet_upgrade.g.dart';

@freezed
class WalletUpgrade with _$WalletUpgrade {
  const WalletUpgrade._();

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

  factory WalletUpgrade.fromJson(Map<String, dynamic> json) =>
      _$WalletUpgradeFromJson(json);

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
