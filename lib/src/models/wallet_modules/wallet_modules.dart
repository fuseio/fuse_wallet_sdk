import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_modules.freezed.dart';
part 'wallet_modules.g.dart';

/// Represents the different modules associated with a wallet.
@freezed
class WalletModules with _$WalletModules {
  /// Creates a new WalletModules instance.
  ///
  /// Parameters:
  /// - [guardianManager] – The address of the GuardianManager module.
  /// - [lockManager] – The address of the LockManager module.
  /// - [recoveryManager] – The address of the RecoveryManager module.
  /// - [approvedTransfer] – The address of the ApprovedTransfer module.
  /// - [tokenExchanger] – The address of the TokenExchanger module.
  /// - [communityManager] – The address of the CommunityManager module.
  /// - [walletOwnershipManager] – The address of the WalletOwnershipManager module.
  /// - [daiPointsManager] – The address of the DAIPointsManager module (optional).
  /// - [transferManager] – The address of the TransferManager module.
  /// - [nftTransfer] – The address of the NftTransfer module (optional).
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

  /// Creates a new WalletModules instance from a JSON object.
  ///
  /// Parameter:
  /// - [json] – The JSON object containing the wallet module data.
  factory WalletModules.fromJson(Map<String, dynamic> json) =>
      _$WalletModulesFromJson(json);
}
