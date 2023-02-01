// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StakingOption _$StakingOptionFromJson(Map<String, dynamic> json) {
  return _StakingOption.fromJson(json);
}

/// @nodoc
mixin _$StakingOption {
  String get tokenAddress => throw _privateConstructorUsedError;
  String get tokenSymbol => throw _privateConstructorUsedError;
  String get tokenName => throw _privateConstructorUsedError;
  String get tokenLogoURI => throw _privateConstructorUsedError;
  double get stakingApr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StakingOptionCopyWith<StakingOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakingOptionCopyWith<$Res> {
  factory $StakingOptionCopyWith(
          StakingOption value, $Res Function(StakingOption) then) =
      _$StakingOptionCopyWithImpl<$Res, StakingOption>;
  @useResult
  $Res call(
      {String tokenAddress,
      String tokenSymbol,
      String tokenName,
      String tokenLogoURI,
      double stakingApr});
}

/// @nodoc
class _$StakingOptionCopyWithImpl<$Res, $Val extends StakingOption>
    implements $StakingOptionCopyWith<$Res> {
  _$StakingOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenAddress = null,
    Object? tokenSymbol = null,
    Object? tokenName = null,
    Object? tokenLogoURI = null,
    Object? stakingApr = null,
  }) {
    return _then(_value.copyWith(
      tokenAddress: null == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: null == tokenSymbol
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenLogoURI: null == tokenLogoURI
          ? _value.tokenLogoURI
          : tokenLogoURI // ignore: cast_nullable_to_non_nullable
              as String,
      stakingApr: null == stakingApr
          ? _value.stakingApr
          : stakingApr // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StakingOptionCopyWith<$Res>
    implements $StakingOptionCopyWith<$Res> {
  factory _$$_StakingOptionCopyWith(
          _$_StakingOption value, $Res Function(_$_StakingOption) then) =
      __$$_StakingOptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tokenAddress,
      String tokenSymbol,
      String tokenName,
      String tokenLogoURI,
      double stakingApr});
}

/// @nodoc
class __$$_StakingOptionCopyWithImpl<$Res>
    extends _$StakingOptionCopyWithImpl<$Res, _$_StakingOption>
    implements _$$_StakingOptionCopyWith<$Res> {
  __$$_StakingOptionCopyWithImpl(
      _$_StakingOption _value, $Res Function(_$_StakingOption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenAddress = null,
    Object? tokenSymbol = null,
    Object? tokenName = null,
    Object? tokenLogoURI = null,
    Object? stakingApr = null,
  }) {
    return _then(_$_StakingOption(
      tokenAddress: null == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: null == tokenSymbol
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenLogoURI: null == tokenLogoURI
          ? _value.tokenLogoURI
          : tokenLogoURI // ignore: cast_nullable_to_non_nullable
              as String,
      stakingApr: null == stakingApr
          ? _value.stakingApr
          : stakingApr // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StakingOption extends _StakingOption {
  _$_StakingOption(
      {required this.tokenAddress,
      required this.tokenSymbol,
      required this.tokenName,
      required this.tokenLogoURI,
      required this.stakingApr})
      : super._();

  factory _$_StakingOption.fromJson(Map<String, dynamic> json) =>
      _$$_StakingOptionFromJson(json);

  @override
  final String tokenAddress;
  @override
  final String tokenSymbol;
  @override
  final String tokenName;
  @override
  final String tokenLogoURI;
  @override
  final double stakingApr;

  @override
  String toString() {
    return 'StakingOption(tokenAddress: $tokenAddress, tokenSymbol: $tokenSymbol, tokenName: $tokenName, tokenLogoURI: $tokenLogoURI, stakingApr: $stakingApr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StakingOption &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress) &&
            (identical(other.tokenSymbol, tokenSymbol) ||
                other.tokenSymbol == tokenSymbol) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.tokenLogoURI, tokenLogoURI) ||
                other.tokenLogoURI == tokenLogoURI) &&
            (identical(other.stakingApr, stakingApr) ||
                other.stakingApr == stakingApr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tokenAddress, tokenSymbol,
      tokenName, tokenLogoURI, stakingApr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StakingOptionCopyWith<_$_StakingOption> get copyWith =>
      __$$_StakingOptionCopyWithImpl<_$_StakingOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StakingOptionToJson(
      this,
    );
  }
}

abstract class _StakingOption extends StakingOption {
  factory _StakingOption(
      {required final String tokenAddress,
      required final String tokenSymbol,
      required final String tokenName,
      required final String tokenLogoURI,
      required final double stakingApr}) = _$_StakingOption;
  _StakingOption._() : super._();

  factory _StakingOption.fromJson(Map<String, dynamic> json) =
      _$_StakingOption.fromJson;

  @override
  String get tokenAddress;
  @override
  String get tokenSymbol;
  @override
  String get tokenName;
  @override
  String get tokenLogoURI;
  @override
  double get stakingApr;
  @override
  @JsonKey(ignore: true)
  _$$_StakingOptionCopyWith<_$_StakingOption> get copyWith =>
      throw _privateConstructorUsedError;
}
