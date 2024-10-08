// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_modules.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletModules _$WalletModulesFromJson(Map<String, dynamic> json) {
  return _WalletModules.fromJson(json);
}

/// @nodoc
mixin _$WalletModules {
  @JsonKey(name: 'GuardianManager')
  String get guardianManager => throw _privateConstructorUsedError;
  @JsonKey(name: 'LockManager')
  String get lockManager => throw _privateConstructorUsedError;
  @JsonKey(name: 'RecoveryManager')
  String get recoveryManager => throw _privateConstructorUsedError;
  @JsonKey(name: 'ApprovedTransfer')
  String get approvedTransfer => throw _privateConstructorUsedError;
  @JsonKey(name: 'TokenExchanger')
  String get tokenExchanger => throw _privateConstructorUsedError;
  @JsonKey(name: 'CommunityManager')
  String get communityManager => throw _privateConstructorUsedError;
  @JsonKey(name: 'WalletOwnershipManager')
  String get walletOwnershipManager => throw _privateConstructorUsedError;
  @JsonKey(name: 'DAIPointsManager')
  String? get daiPointsManager => throw _privateConstructorUsedError;
  @JsonKey(name: 'TransferManager')
  String get transferManager => throw _privateConstructorUsedError;
  @JsonKey(name: 'NftTransfer')
  String? get nftTransfer => throw _privateConstructorUsedError;

  /// Serializes this WalletModules to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletModules
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletModulesCopyWith<WalletModules> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletModulesCopyWith<$Res> {
  factory $WalletModulesCopyWith(
          WalletModules value, $Res Function(WalletModules) then) =
      _$WalletModulesCopyWithImpl<$Res, WalletModules>;
  @useResult
  $Res call(
      {@JsonKey(name: 'GuardianManager') String guardianManager,
      @JsonKey(name: 'LockManager') String lockManager,
      @JsonKey(name: 'RecoveryManager') String recoveryManager,
      @JsonKey(name: 'ApprovedTransfer') String approvedTransfer,
      @JsonKey(name: 'TokenExchanger') String tokenExchanger,
      @JsonKey(name: 'CommunityManager') String communityManager,
      @JsonKey(name: 'WalletOwnershipManager') String walletOwnershipManager,
      @JsonKey(name: 'DAIPointsManager') String? daiPointsManager,
      @JsonKey(name: 'TransferManager') String transferManager,
      @JsonKey(name: 'NftTransfer') String? nftTransfer});
}

/// @nodoc
class _$WalletModulesCopyWithImpl<$Res, $Val extends WalletModules>
    implements $WalletModulesCopyWith<$Res> {
  _$WalletModulesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletModules
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guardianManager = null,
    Object? lockManager = null,
    Object? recoveryManager = null,
    Object? approvedTransfer = null,
    Object? tokenExchanger = null,
    Object? communityManager = null,
    Object? walletOwnershipManager = null,
    Object? daiPointsManager = freezed,
    Object? transferManager = null,
    Object? nftTransfer = freezed,
  }) {
    return _then(_value.copyWith(
      guardianManager: null == guardianManager
          ? _value.guardianManager
          : guardianManager // ignore: cast_nullable_to_non_nullable
              as String,
      lockManager: null == lockManager
          ? _value.lockManager
          : lockManager // ignore: cast_nullable_to_non_nullable
              as String,
      recoveryManager: null == recoveryManager
          ? _value.recoveryManager
          : recoveryManager // ignore: cast_nullable_to_non_nullable
              as String,
      approvedTransfer: null == approvedTransfer
          ? _value.approvedTransfer
          : approvedTransfer // ignore: cast_nullable_to_non_nullable
              as String,
      tokenExchanger: null == tokenExchanger
          ? _value.tokenExchanger
          : tokenExchanger // ignore: cast_nullable_to_non_nullable
              as String,
      communityManager: null == communityManager
          ? _value.communityManager
          : communityManager // ignore: cast_nullable_to_non_nullable
              as String,
      walletOwnershipManager: null == walletOwnershipManager
          ? _value.walletOwnershipManager
          : walletOwnershipManager // ignore: cast_nullable_to_non_nullable
              as String,
      daiPointsManager: freezed == daiPointsManager
          ? _value.daiPointsManager
          : daiPointsManager // ignore: cast_nullable_to_non_nullable
              as String?,
      transferManager: null == transferManager
          ? _value.transferManager
          : transferManager // ignore: cast_nullable_to_non_nullable
              as String,
      nftTransfer: freezed == nftTransfer
          ? _value.nftTransfer
          : nftTransfer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletModulesImplCopyWith<$Res>
    implements $WalletModulesCopyWith<$Res> {
  factory _$$WalletModulesImplCopyWith(
          _$WalletModulesImpl value, $Res Function(_$WalletModulesImpl) then) =
      __$$WalletModulesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'GuardianManager') String guardianManager,
      @JsonKey(name: 'LockManager') String lockManager,
      @JsonKey(name: 'RecoveryManager') String recoveryManager,
      @JsonKey(name: 'ApprovedTransfer') String approvedTransfer,
      @JsonKey(name: 'TokenExchanger') String tokenExchanger,
      @JsonKey(name: 'CommunityManager') String communityManager,
      @JsonKey(name: 'WalletOwnershipManager') String walletOwnershipManager,
      @JsonKey(name: 'DAIPointsManager') String? daiPointsManager,
      @JsonKey(name: 'TransferManager') String transferManager,
      @JsonKey(name: 'NftTransfer') String? nftTransfer});
}

/// @nodoc
class __$$WalletModulesImplCopyWithImpl<$Res>
    extends _$WalletModulesCopyWithImpl<$Res, _$WalletModulesImpl>
    implements _$$WalletModulesImplCopyWith<$Res> {
  __$$WalletModulesImplCopyWithImpl(
      _$WalletModulesImpl _value, $Res Function(_$WalletModulesImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletModules
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guardianManager = null,
    Object? lockManager = null,
    Object? recoveryManager = null,
    Object? approvedTransfer = null,
    Object? tokenExchanger = null,
    Object? communityManager = null,
    Object? walletOwnershipManager = null,
    Object? daiPointsManager = freezed,
    Object? transferManager = null,
    Object? nftTransfer = freezed,
  }) {
    return _then(_$WalletModulesImpl(
      guardianManager: null == guardianManager
          ? _value.guardianManager
          : guardianManager // ignore: cast_nullable_to_non_nullable
              as String,
      lockManager: null == lockManager
          ? _value.lockManager
          : lockManager // ignore: cast_nullable_to_non_nullable
              as String,
      recoveryManager: null == recoveryManager
          ? _value.recoveryManager
          : recoveryManager // ignore: cast_nullable_to_non_nullable
              as String,
      approvedTransfer: null == approvedTransfer
          ? _value.approvedTransfer
          : approvedTransfer // ignore: cast_nullable_to_non_nullable
              as String,
      tokenExchanger: null == tokenExchanger
          ? _value.tokenExchanger
          : tokenExchanger // ignore: cast_nullable_to_non_nullable
              as String,
      communityManager: null == communityManager
          ? _value.communityManager
          : communityManager // ignore: cast_nullable_to_non_nullable
              as String,
      walletOwnershipManager: null == walletOwnershipManager
          ? _value.walletOwnershipManager
          : walletOwnershipManager // ignore: cast_nullable_to_non_nullable
              as String,
      daiPointsManager: freezed == daiPointsManager
          ? _value.daiPointsManager
          : daiPointsManager // ignore: cast_nullable_to_non_nullable
              as String?,
      transferManager: null == transferManager
          ? _value.transferManager
          : transferManager // ignore: cast_nullable_to_non_nullable
              as String,
      nftTransfer: freezed == nftTransfer
          ? _value.nftTransfer
          : nftTransfer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletModulesImpl implements _WalletModules {
  _$WalletModulesImpl(
      {@JsonKey(name: 'GuardianManager') required this.guardianManager,
      @JsonKey(name: 'LockManager') required this.lockManager,
      @JsonKey(name: 'RecoveryManager') required this.recoveryManager,
      @JsonKey(name: 'ApprovedTransfer') required this.approvedTransfer,
      @JsonKey(name: 'TokenExchanger') required this.tokenExchanger,
      @JsonKey(name: 'CommunityManager') required this.communityManager,
      @JsonKey(name: 'WalletOwnershipManager')
      required this.walletOwnershipManager,
      @JsonKey(name: 'DAIPointsManager') this.daiPointsManager,
      @JsonKey(name: 'TransferManager') required this.transferManager,
      @JsonKey(name: 'NftTransfer') this.nftTransfer});

  factory _$WalletModulesImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletModulesImplFromJson(json);

  @override
  @JsonKey(name: 'GuardianManager')
  final String guardianManager;
  @override
  @JsonKey(name: 'LockManager')
  final String lockManager;
  @override
  @JsonKey(name: 'RecoveryManager')
  final String recoveryManager;
  @override
  @JsonKey(name: 'ApprovedTransfer')
  final String approvedTransfer;
  @override
  @JsonKey(name: 'TokenExchanger')
  final String tokenExchanger;
  @override
  @JsonKey(name: 'CommunityManager')
  final String communityManager;
  @override
  @JsonKey(name: 'WalletOwnershipManager')
  final String walletOwnershipManager;
  @override
  @JsonKey(name: 'DAIPointsManager')
  final String? daiPointsManager;
  @override
  @JsonKey(name: 'TransferManager')
  final String transferManager;
  @override
  @JsonKey(name: 'NftTransfer')
  final String? nftTransfer;

  @override
  String toString() {
    return 'WalletModules(guardianManager: $guardianManager, lockManager: $lockManager, recoveryManager: $recoveryManager, approvedTransfer: $approvedTransfer, tokenExchanger: $tokenExchanger, communityManager: $communityManager, walletOwnershipManager: $walletOwnershipManager, daiPointsManager: $daiPointsManager, transferManager: $transferManager, nftTransfer: $nftTransfer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletModulesImpl &&
            (identical(other.guardianManager, guardianManager) ||
                other.guardianManager == guardianManager) &&
            (identical(other.lockManager, lockManager) ||
                other.lockManager == lockManager) &&
            (identical(other.recoveryManager, recoveryManager) ||
                other.recoveryManager == recoveryManager) &&
            (identical(other.approvedTransfer, approvedTransfer) ||
                other.approvedTransfer == approvedTransfer) &&
            (identical(other.tokenExchanger, tokenExchanger) ||
                other.tokenExchanger == tokenExchanger) &&
            (identical(other.communityManager, communityManager) ||
                other.communityManager == communityManager) &&
            (identical(other.walletOwnershipManager, walletOwnershipManager) ||
                other.walletOwnershipManager == walletOwnershipManager) &&
            (identical(other.daiPointsManager, daiPointsManager) ||
                other.daiPointsManager == daiPointsManager) &&
            (identical(other.transferManager, transferManager) ||
                other.transferManager == transferManager) &&
            (identical(other.nftTransfer, nftTransfer) ||
                other.nftTransfer == nftTransfer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      guardianManager,
      lockManager,
      recoveryManager,
      approvedTransfer,
      tokenExchanger,
      communityManager,
      walletOwnershipManager,
      daiPointsManager,
      transferManager,
      nftTransfer);

  /// Create a copy of WalletModules
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletModulesImplCopyWith<_$WalletModulesImpl> get copyWith =>
      __$$WalletModulesImplCopyWithImpl<_$WalletModulesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletModulesImplToJson(
      this,
    );
  }
}

abstract class _WalletModules implements WalletModules {
  factory _WalletModules(
      {@JsonKey(name: 'GuardianManager') required final String guardianManager,
      @JsonKey(name: 'LockManager') required final String lockManager,
      @JsonKey(name: 'RecoveryManager') required final String recoveryManager,
      @JsonKey(name: 'ApprovedTransfer') required final String approvedTransfer,
      @JsonKey(name: 'TokenExchanger') required final String tokenExchanger,
      @JsonKey(name: 'CommunityManager') required final String communityManager,
      @JsonKey(name: 'WalletOwnershipManager')
      required final String walletOwnershipManager,
      @JsonKey(name: 'DAIPointsManager') final String? daiPointsManager,
      @JsonKey(name: 'TransferManager') required final String transferManager,
      @JsonKey(name: 'NftTransfer')
      final String? nftTransfer}) = _$WalletModulesImpl;

  factory _WalletModules.fromJson(Map<String, dynamic> json) =
      _$WalletModulesImpl.fromJson;

  @override
  @JsonKey(name: 'GuardianManager')
  String get guardianManager;
  @override
  @JsonKey(name: 'LockManager')
  String get lockManager;
  @override
  @JsonKey(name: 'RecoveryManager')
  String get recoveryManager;
  @override
  @JsonKey(name: 'ApprovedTransfer')
  String get approvedTransfer;
  @override
  @JsonKey(name: 'TokenExchanger')
  String get tokenExchanger;
  @override
  @JsonKey(name: 'CommunityManager')
  String get communityManager;
  @override
  @JsonKey(name: 'WalletOwnershipManager')
  String get walletOwnershipManager;
  @override
  @JsonKey(name: 'DAIPointsManager')
  String? get daiPointsManager;
  @override
  @JsonKey(name: 'TransferManager')
  String get transferManager;
  @override
  @JsonKey(name: 'NftTransfer')
  String? get nftTransfer;

  /// Create a copy of WalletModules
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletModulesImplCopyWith<_$WalletModulesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
