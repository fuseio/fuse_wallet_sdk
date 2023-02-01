import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_modules.freezed.dart';
part 'wallet_modules.g.dart';

@freezed
class WalletModules with _$WalletModules {
  factory WalletModules({
    @JsonKey(name: 'GuardianManager') required String guardianManager,
    @JsonKey(name: 'LockManager') required String lockManager,
    @JsonKey(name: 'RecoveryManager') required String recoveryManager,
    @JsonKey(name: 'ApprovedTransfer') required String approvedTransfer,
    @JsonKey(name: 'TokenExchanger') required String tokenExchanger,
    @JsonKey(name: 'CommunityManager') required String communityManager,
    @JsonKey(name: 'WalletOwnershipManager')
        required String walletOwnershipManager,
    @JsonKey(name: 'DAIPointsManager') String? daiPointsManager,
    @JsonKey(name: 'TransferManager') required String transferManager,
    @JsonKey(name: 'NftTransfer') String? nftTransfer,
  }) = _WalletModules;

  factory WalletModules.fromJson(Map<String, dynamic> json) =>
      _$WalletModulesFromJson(json);
}
