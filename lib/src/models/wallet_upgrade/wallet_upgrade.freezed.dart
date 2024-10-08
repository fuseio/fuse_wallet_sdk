// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_upgrade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletUpgrade _$WalletUpgradeFromJson(Map<String, dynamic> json) {
  return _WalletUpgrade.fromJson(json);
}

/// @nodoc
mixin _$WalletUpgrade {
  String? get version => throw _privateConstructorUsedError;
  String get contractAddress => throw _privateConstructorUsedError;
  String? get paddedVersion => throw _privateConstructorUsedError;
  Map<String, String> get disabledModules => throw _privateConstructorUsedError;
  Map<String, String> get enabledModules => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;

  /// Serializes this WalletUpgrade to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletUpgrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletUpgradeCopyWith<WalletUpgrade> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletUpgradeCopyWith<$Res> {
  factory $WalletUpgradeCopyWith(
          WalletUpgrade value, $Res Function(WalletUpgrade) then) =
      _$WalletUpgradeCopyWithImpl<$Res, WalletUpgrade>;
  @useResult
  $Res call(
      {String? version,
      String contractAddress,
      String? paddedVersion,
      Map<String, String> disabledModules,
      Map<String, String> enabledModules,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: '_id') String id});
}

/// @nodoc
class _$WalletUpgradeCopyWithImpl<$Res, $Val extends WalletUpgrade>
    implements $WalletUpgradeCopyWith<$Res> {
  _$WalletUpgradeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletUpgrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? contractAddress = null,
    Object? paddedVersion = freezed,
    Object? disabledModules = null,
    Object? enabledModules = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      contractAddress: null == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String,
      paddedVersion: freezed == paddedVersion
          ? _value.paddedVersion
          : paddedVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledModules: null == disabledModules
          ? _value.disabledModules
          : disabledModules // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      enabledModules: null == enabledModules
          ? _value.enabledModules
          : enabledModules // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletUpgradeImplCopyWith<$Res>
    implements $WalletUpgradeCopyWith<$Res> {
  factory _$$WalletUpgradeImplCopyWith(
          _$WalletUpgradeImpl value, $Res Function(_$WalletUpgradeImpl) then) =
      __$$WalletUpgradeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? version,
      String contractAddress,
      String? paddedVersion,
      Map<String, String> disabledModules,
      Map<String, String> enabledModules,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(name: '_id') String id});
}

/// @nodoc
class __$$WalletUpgradeImplCopyWithImpl<$Res>
    extends _$WalletUpgradeCopyWithImpl<$Res, _$WalletUpgradeImpl>
    implements _$$WalletUpgradeImplCopyWith<$Res> {
  __$$WalletUpgradeImplCopyWithImpl(
      _$WalletUpgradeImpl _value, $Res Function(_$WalletUpgradeImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletUpgrade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? contractAddress = null,
    Object? paddedVersion = freezed,
    Object? disabledModules = null,
    Object? enabledModules = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? id = null,
  }) {
    return _then(_$WalletUpgradeImpl(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      contractAddress: null == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String,
      paddedVersion: freezed == paddedVersion
          ? _value.paddedVersion
          : paddedVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      disabledModules: null == disabledModules
          ? _value.disabledModules
          : disabledModules // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      enabledModules: null == enabledModules
          ? _value.enabledModules
          : enabledModules // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletUpgradeImpl extends _WalletUpgrade {
  _$WalletUpgradeImpl(
      {this.version,
      required this.contractAddress,
      this.paddedVersion,
      required this.disabledModules,
      required this.enabledModules,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(name: '_id') required this.id})
      : super._();

  factory _$WalletUpgradeImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletUpgradeImplFromJson(json);

  @override
  final String? version;
  @override
  final String contractAddress;
  @override
  final String? paddedVersion;
  @override
  final Map<String, String> disabledModules;
  @override
  final Map<String, String> enabledModules;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  @JsonKey(name: '_id')
  final String id;

  @override
  String toString() {
    return 'WalletUpgrade(version: $version, contractAddress: $contractAddress, paddedVersion: $paddedVersion, disabledModules: $disabledModules, enabledModules: $enabledModules, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletUpgradeImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.contractAddress, contractAddress) ||
                other.contractAddress == contractAddress) &&
            (identical(other.paddedVersion, paddedVersion) ||
                other.paddedVersion == paddedVersion) &&
            const DeepCollectionEquality()
                .equals(other.disabledModules, disabledModules) &&
            const DeepCollectionEquality()
                .equals(other.enabledModules, enabledModules) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      contractAddress,
      paddedVersion,
      const DeepCollectionEquality().hash(disabledModules),
      const DeepCollectionEquality().hash(enabledModules),
      createdAt,
      updatedAt,
      id);

  /// Create a copy of WalletUpgrade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletUpgradeImplCopyWith<_$WalletUpgradeImpl> get copyWith =>
      __$$WalletUpgradeImplCopyWithImpl<_$WalletUpgradeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletUpgradeImplToJson(
      this,
    );
  }
}

abstract class _WalletUpgrade extends WalletUpgrade {
  factory _WalletUpgrade(
      {final String? version,
      required final String contractAddress,
      final String? paddedVersion,
      required final Map<String, String> disabledModules,
      required final Map<String, String> enabledModules,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      @JsonKey(name: '_id') required final String id}) = _$WalletUpgradeImpl;
  _WalletUpgrade._() : super._();

  factory _WalletUpgrade.fromJson(Map<String, dynamic> json) =
      _$WalletUpgradeImpl.fromJson;

  @override
  String? get version;
  @override
  String get contractAddress;
  @override
  String? get paddedVersion;
  @override
  Map<String, String> get disabledModules;
  @override
  Map<String, String> get enabledModules;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(name: '_id')
  String get id;

  /// Create a copy of WalletUpgrade
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletUpgradeImplCopyWith<_$WalletUpgradeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
