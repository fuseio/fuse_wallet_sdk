// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smart_wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SmartWallet _$SmartWalletFromJson(Map<String, dynamic> json) {
  return _SmartWallet.fromJson(json);
}

/// @nodoc
mixin _$SmartWallet {
  String get ownerAddress => throw _privateConstructorUsedError;
  String get smartWalletAddress => throw _privateConstructorUsedError;
  WalletModules get walletModules => throw _privateConstructorUsedError;
  String get paddedVersion => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  List<String> get networks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmartWalletCopyWith<SmartWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmartWalletCopyWith<$Res> {
  factory $SmartWalletCopyWith(
          SmartWallet value, $Res Function(SmartWallet) then) =
      _$SmartWalletCopyWithImpl<$Res, SmartWallet>;
  @useResult
  $Res call(
      {String ownerAddress,
      String smartWalletAddress,
      WalletModules walletModules,
      String paddedVersion,
      String version,
      List<String> networks});

  $WalletModulesCopyWith<$Res> get walletModules;
}

/// @nodoc
class _$SmartWalletCopyWithImpl<$Res, $Val extends SmartWallet>
    implements $SmartWalletCopyWith<$Res> {
  _$SmartWalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerAddress = null,
    Object? smartWalletAddress = null,
    Object? walletModules = null,
    Object? paddedVersion = null,
    Object? version = null,
    Object? networks = null,
  }) {
    return _then(_value.copyWith(
      ownerAddress: null == ownerAddress
          ? _value.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      smartWalletAddress: null == smartWalletAddress
          ? _value.smartWalletAddress
          : smartWalletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      walletModules: null == walletModules
          ? _value.walletModules
          : walletModules // ignore: cast_nullable_to_non_nullable
              as WalletModules,
      paddedVersion: null == paddedVersion
          ? _value.paddedVersion
          : paddedVersion // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      networks: null == networks
          ? _value.networks
          : networks // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletModulesCopyWith<$Res> get walletModules {
    return $WalletModulesCopyWith<$Res>(_value.walletModules, (value) {
      return _then(_value.copyWith(walletModules: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SmartWalletImplCopyWith<$Res>
    implements $SmartWalletCopyWith<$Res> {
  factory _$$SmartWalletImplCopyWith(
          _$SmartWalletImpl value, $Res Function(_$SmartWalletImpl) then) =
      __$$SmartWalletImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String ownerAddress,
      String smartWalletAddress,
      WalletModules walletModules,
      String paddedVersion,
      String version,
      List<String> networks});

  @override
  $WalletModulesCopyWith<$Res> get walletModules;
}

/// @nodoc
class __$$SmartWalletImplCopyWithImpl<$Res>
    extends _$SmartWalletCopyWithImpl<$Res, _$SmartWalletImpl>
    implements _$$SmartWalletImplCopyWith<$Res> {
  __$$SmartWalletImplCopyWithImpl(
      _$SmartWalletImpl _value, $Res Function(_$SmartWalletImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerAddress = null,
    Object? smartWalletAddress = null,
    Object? walletModules = null,
    Object? paddedVersion = null,
    Object? version = null,
    Object? networks = null,
  }) {
    return _then(_$SmartWalletImpl(
      ownerAddress: null == ownerAddress
          ? _value.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      smartWalletAddress: null == smartWalletAddress
          ? _value.smartWalletAddress
          : smartWalletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      walletModules: null == walletModules
          ? _value.walletModules
          : walletModules // ignore: cast_nullable_to_non_nullable
              as WalletModules,
      paddedVersion: null == paddedVersion
          ? _value.paddedVersion
          : paddedVersion // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      networks: null == networks
          ? _value.networks
          : networks // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmartWalletImpl implements _SmartWallet {
  _$SmartWalletImpl(
      {required this.ownerAddress,
      required this.smartWalletAddress,
      required this.walletModules,
      required this.paddedVersion,
      required this.version,
      this.networks = const ['fuse']});

  factory _$SmartWalletImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmartWalletImplFromJson(json);

  @override
  final String ownerAddress;
  @override
  final String smartWalletAddress;
  @override
  final WalletModules walletModules;
  @override
  final String paddedVersion;
  @override
  final String version;
  @override
  @JsonKey()
  final List<String> networks;

  @override
  String toString() {
    return 'SmartWallet(ownerAddress: $ownerAddress, smartWalletAddress: $smartWalletAddress, walletModules: $walletModules, paddedVersion: $paddedVersion, version: $version, networks: $networks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmartWalletImpl &&
            (identical(other.ownerAddress, ownerAddress) ||
                other.ownerAddress == ownerAddress) &&
            (identical(other.smartWalletAddress, smartWalletAddress) ||
                other.smartWalletAddress == smartWalletAddress) &&
            (identical(other.walletModules, walletModules) ||
                other.walletModules == walletModules) &&
            (identical(other.paddedVersion, paddedVersion) ||
                other.paddedVersion == paddedVersion) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other.networks, networks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ownerAddress,
      smartWalletAddress,
      walletModules,
      paddedVersion,
      version,
      const DeepCollectionEquality().hash(networks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmartWalletImplCopyWith<_$SmartWalletImpl> get copyWith =>
      __$$SmartWalletImplCopyWithImpl<_$SmartWalletImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmartWalletImplToJson(
      this,
    );
  }
}

abstract class _SmartWallet implements SmartWallet {
  factory _SmartWallet(
      {required final String ownerAddress,
      required final String smartWalletAddress,
      required final WalletModules walletModules,
      required final String paddedVersion,
      required final String version,
      final List<String> networks}) = _$SmartWalletImpl;

  factory _SmartWallet.fromJson(Map<String, dynamic> json) =
      _$SmartWalletImpl.fromJson;

  @override
  String get ownerAddress;
  @override
  String get smartWalletAddress;
  @override
  WalletModules get walletModules;
  @override
  String get paddedVersion;
  @override
  String get version;
  @override
  List<String> get networks;
  @override
  @JsonKey(ignore: true)
  _$$SmartWalletImplCopyWith<_$SmartWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
