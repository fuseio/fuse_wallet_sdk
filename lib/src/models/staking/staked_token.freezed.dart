// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staked_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StakedToken _$StakedTokenFromJson(Map<String, dynamic> json) {
  return _StakedToken.fromJson(json);
}

/// @nodoc
mixin _$StakedToken {
  String get tokenAddress => throw _privateConstructorUsedError;
  String get tokenSymbol => throw _privateConstructorUsedError;
  String get tokenName => throw _privateConstructorUsedError;
  String get tokenLogoURI => throw _privateConstructorUsedError;
  double get stakedAmount => throw _privateConstructorUsedError;
  double get stakedAmountUSD => throw _privateConstructorUsedError;
  double get earnedAmountUSD => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StakedTokenCopyWith<StakedToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakedTokenCopyWith<$Res> {
  factory $StakedTokenCopyWith(
          StakedToken value, $Res Function(StakedToken) then) =
      _$StakedTokenCopyWithImpl<$Res, StakedToken>;
  @useResult
  $Res call(
      {String tokenAddress,
      String tokenSymbol,
      String tokenName,
      String tokenLogoURI,
      double stakedAmount,
      double stakedAmountUSD,
      double earnedAmountUSD});
}

/// @nodoc
class _$StakedTokenCopyWithImpl<$Res, $Val extends StakedToken>
    implements $StakedTokenCopyWith<$Res> {
  _$StakedTokenCopyWithImpl(this._value, this._then);

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
    Object? stakedAmount = null,
    Object? stakedAmountUSD = null,
    Object? earnedAmountUSD = null,
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
      stakedAmount: null == stakedAmount
          ? _value.stakedAmount
          : stakedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      stakedAmountUSD: null == stakedAmountUSD
          ? _value.stakedAmountUSD
          : stakedAmountUSD // ignore: cast_nullable_to_non_nullable
              as double,
      earnedAmountUSD: null == earnedAmountUSD
          ? _value.earnedAmountUSD
          : earnedAmountUSD // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StakedTokenCopyWith<$Res>
    implements $StakedTokenCopyWith<$Res> {
  factory _$$_StakedTokenCopyWith(
          _$_StakedToken value, $Res Function(_$_StakedToken) then) =
      __$$_StakedTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tokenAddress,
      String tokenSymbol,
      String tokenName,
      String tokenLogoURI,
      double stakedAmount,
      double stakedAmountUSD,
      double earnedAmountUSD});
}

/// @nodoc
class __$$_StakedTokenCopyWithImpl<$Res>
    extends _$StakedTokenCopyWithImpl<$Res, _$_StakedToken>
    implements _$$_StakedTokenCopyWith<$Res> {
  __$$_StakedTokenCopyWithImpl(
      _$_StakedToken _value, $Res Function(_$_StakedToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenAddress = null,
    Object? tokenSymbol = null,
    Object? tokenName = null,
    Object? tokenLogoURI = null,
    Object? stakedAmount = null,
    Object? stakedAmountUSD = null,
    Object? earnedAmountUSD = null,
  }) {
    return _then(_$_StakedToken(
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
      stakedAmount: null == stakedAmount
          ? _value.stakedAmount
          : stakedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      stakedAmountUSD: null == stakedAmountUSD
          ? _value.stakedAmountUSD
          : stakedAmountUSD // ignore: cast_nullable_to_non_nullable
              as double,
      earnedAmountUSD: null == earnedAmountUSD
          ? _value.earnedAmountUSD
          : earnedAmountUSD // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StakedToken implements _StakedToken {
  _$_StakedToken(
      {required this.tokenAddress,
      required this.tokenSymbol,
      required this.tokenName,
      required this.tokenLogoURI,
      required this.stakedAmount,
      required this.stakedAmountUSD,
      required this.earnedAmountUSD});

  factory _$_StakedToken.fromJson(Map<String, dynamic> json) =>
      _$$_StakedTokenFromJson(json);

  @override
  final String tokenAddress;
  @override
  final String tokenSymbol;
  @override
  final String tokenName;
  @override
  final String tokenLogoURI;
  @override
  final double stakedAmount;
  @override
  final double stakedAmountUSD;
  @override
  final double earnedAmountUSD;

  @override
  String toString() {
    return 'StakedToken(tokenAddress: $tokenAddress, tokenSymbol: $tokenSymbol, tokenName: $tokenName, tokenLogoURI: $tokenLogoURI, stakedAmount: $stakedAmount, stakedAmountUSD: $stakedAmountUSD, earnedAmountUSD: $earnedAmountUSD)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StakedToken &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress) &&
            (identical(other.tokenSymbol, tokenSymbol) ||
                other.tokenSymbol == tokenSymbol) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.tokenLogoURI, tokenLogoURI) ||
                other.tokenLogoURI == tokenLogoURI) &&
            (identical(other.stakedAmount, stakedAmount) ||
                other.stakedAmount == stakedAmount) &&
            (identical(other.stakedAmountUSD, stakedAmountUSD) ||
                other.stakedAmountUSD == stakedAmountUSD) &&
            (identical(other.earnedAmountUSD, earnedAmountUSD) ||
                other.earnedAmountUSD == earnedAmountUSD));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tokenAddress, tokenSymbol,
      tokenName, tokenLogoURI, stakedAmount, stakedAmountUSD, earnedAmountUSD);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StakedTokenCopyWith<_$_StakedToken> get copyWith =>
      __$$_StakedTokenCopyWithImpl<_$_StakedToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StakedTokenToJson(
      this,
    );
  }
}

abstract class _StakedToken implements StakedToken {
  factory _StakedToken(
      {required final String tokenAddress,
      required final String tokenSymbol,
      required final String tokenName,
      required final String tokenLogoURI,
      required final double stakedAmount,
      required final double stakedAmountUSD,
      required final double earnedAmountUSD}) = _$_StakedToken;

  factory _StakedToken.fromJson(Map<String, dynamic> json) =
      _$_StakedToken.fromJson;

  @override
  String get tokenAddress;
  @override
  String get tokenSymbol;
  @override
  String get tokenName;
  @override
  String get tokenLogoURI;
  @override
  double get stakedAmount;
  @override
  double get stakedAmountUSD;
  @override
  double get earnedAmountUSD;
  @override
  @JsonKey(ignore: true)
  _$$_StakedTokenCopyWith<_$_StakedToken> get copyWith =>
      throw _privateConstructorUsedError;
}

StakedTokenResponse _$StakedTokenResponseFromJson(Map<String, dynamic> json) {
  return _StakedTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$StakedTokenResponse {
  double get totalStakedAmountUSD => throw _privateConstructorUsedError;
  double get totalEarnedAmountUSD => throw _privateConstructorUsedError;
  List<StakedToken> get stakedTokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StakedTokenResponseCopyWith<StakedTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakedTokenResponseCopyWith<$Res> {
  factory $StakedTokenResponseCopyWith(
          StakedTokenResponse value, $Res Function(StakedTokenResponse) then) =
      _$StakedTokenResponseCopyWithImpl<$Res, StakedTokenResponse>;
  @useResult
  $Res call(
      {double totalStakedAmountUSD,
      double totalEarnedAmountUSD,
      List<StakedToken> stakedTokens});
}

/// @nodoc
class _$StakedTokenResponseCopyWithImpl<$Res, $Val extends StakedTokenResponse>
    implements $StakedTokenResponseCopyWith<$Res> {
  _$StakedTokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalStakedAmountUSD = null,
    Object? totalEarnedAmountUSD = null,
    Object? stakedTokens = null,
  }) {
    return _then(_value.copyWith(
      totalStakedAmountUSD: null == totalStakedAmountUSD
          ? _value.totalStakedAmountUSD
          : totalStakedAmountUSD // ignore: cast_nullable_to_non_nullable
              as double,
      totalEarnedAmountUSD: null == totalEarnedAmountUSD
          ? _value.totalEarnedAmountUSD
          : totalEarnedAmountUSD // ignore: cast_nullable_to_non_nullable
              as double,
      stakedTokens: null == stakedTokens
          ? _value.stakedTokens
          : stakedTokens // ignore: cast_nullable_to_non_nullable
              as List<StakedToken>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StakedTokenResponseCopyWith<$Res>
    implements $StakedTokenResponseCopyWith<$Res> {
  factory _$$_StakedTokenResponseCopyWith(_$_StakedTokenResponse value,
          $Res Function(_$_StakedTokenResponse) then) =
      __$$_StakedTokenResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double totalStakedAmountUSD,
      double totalEarnedAmountUSD,
      List<StakedToken> stakedTokens});
}

/// @nodoc
class __$$_StakedTokenResponseCopyWithImpl<$Res>
    extends _$StakedTokenResponseCopyWithImpl<$Res, _$_StakedTokenResponse>
    implements _$$_StakedTokenResponseCopyWith<$Res> {
  __$$_StakedTokenResponseCopyWithImpl(_$_StakedTokenResponse _value,
      $Res Function(_$_StakedTokenResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalStakedAmountUSD = null,
    Object? totalEarnedAmountUSD = null,
    Object? stakedTokens = null,
  }) {
    return _then(_$_StakedTokenResponse(
      totalStakedAmountUSD: null == totalStakedAmountUSD
          ? _value.totalStakedAmountUSD
          : totalStakedAmountUSD // ignore: cast_nullable_to_non_nullable
              as double,
      totalEarnedAmountUSD: null == totalEarnedAmountUSD
          ? _value.totalEarnedAmountUSD
          : totalEarnedAmountUSD // ignore: cast_nullable_to_non_nullable
              as double,
      stakedTokens: null == stakedTokens
          ? _value.stakedTokens
          : stakedTokens // ignore: cast_nullable_to_non_nullable
              as List<StakedToken>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StakedTokenResponse implements _StakedTokenResponse {
  _$_StakedTokenResponse(
      {required this.totalStakedAmountUSD,
      required this.totalEarnedAmountUSD,
      required this.stakedTokens});

  factory _$_StakedTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StakedTokenResponseFromJson(json);

  @override
  final double totalStakedAmountUSD;
  @override
  final double totalEarnedAmountUSD;
  @override
  final List<StakedToken> stakedTokens;

  @override
  String toString() {
    return 'StakedTokenResponse(totalStakedAmountUSD: $totalStakedAmountUSD, totalEarnedAmountUSD: $totalEarnedAmountUSD, stakedTokens: $stakedTokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StakedTokenResponse &&
            (identical(other.totalStakedAmountUSD, totalStakedAmountUSD) ||
                other.totalStakedAmountUSD == totalStakedAmountUSD) &&
            (identical(other.totalEarnedAmountUSD, totalEarnedAmountUSD) ||
                other.totalEarnedAmountUSD == totalEarnedAmountUSD) &&
            const DeepCollectionEquality()
                .equals(other.stakedTokens, stakedTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalStakedAmountUSD,
      totalEarnedAmountUSD, const DeepCollectionEquality().hash(stakedTokens));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StakedTokenResponseCopyWith<_$_StakedTokenResponse> get copyWith =>
      __$$_StakedTokenResponseCopyWithImpl<_$_StakedTokenResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StakedTokenResponseToJson(
      this,
    );
  }
}

abstract class _StakedTokenResponse implements StakedTokenResponse {
  factory _StakedTokenResponse(
      {required final double totalStakedAmountUSD,
      required final double totalEarnedAmountUSD,
      required final List<StakedToken> stakedTokens}) = _$_StakedTokenResponse;

  factory _StakedTokenResponse.fromJson(Map<String, dynamic> json) =
      _$_StakedTokenResponse.fromJson;

  @override
  double get totalStakedAmountUSD;
  @override
  double get totalEarnedAmountUSD;
  @override
  List<StakedToken> get stakedTokens;
  @override
  @JsonKey(ignore: true)
  _$$_StakedTokenResponseCopyWith<_$_StakedTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
