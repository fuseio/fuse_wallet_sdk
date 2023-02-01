import 'package:charge_smart_wallets_sdk/src/models/wallet_modules/wallet_modules.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'smart_wallet.freezed.dart';
part 'smart_wallet.g.dart';

@freezed
class SmartWallet with _$SmartWallet {
  factory SmartWallet({
    required String ownerAddress,
    required String smartWalletAddress,
    required WalletModules walletModules,
    required String paddedVersion,
    required String version,
    @Default(['fuse']) List<String> networks,
  }) = _SmartWallet;

  factory SmartWallet.fromJson(Map<String, dynamic> json) =>
      _$SmartWalletFromJson(json);
}
