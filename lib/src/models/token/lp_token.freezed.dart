// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lp_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LpUnderlyingTokens _$LpUnderlyingTokensFromJson(Map<String, dynamic> json) {
  return _LpUnderlyingTokens.fromJson(json);
}

/// @nodoc
mixin _$LpUnderlyingTokens {
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(fromJson: nameFromJson)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: addressFromJson)
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LpUnderlyingTokensCopyWith<LpUnderlyingTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LpUnderlyingTokensCopyWith<$Res> {
  factory $LpUnderlyingTokensCopyWith(
          LpUnderlyingTokens value, $Res Function(LpUnderlyingTokens) then) =
      _$LpUnderlyingTokensCopyWithImpl<$Res, LpUnderlyingTokens>;
  @useResult
  $Res call(
      {String symbol,
      @JsonKey(fromJson: nameFromJson) String name,
      @JsonKey(fromJson: addressFromJson) String address});
}

/// @nodoc
class _$LpUnderlyingTokensCopyWithImpl<$Res, $Val extends LpUnderlyingTokens>
    implements $LpUnderlyingTokensCopyWith<$Res> {
  _$LpUnderlyingTokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LpUnderlyingTokensCopyWith<$Res>
    implements $LpUnderlyingTokensCopyWith<$Res> {
  factory _$$_LpUnderlyingTokensCopyWith(_$_LpUnderlyingTokens value,
          $Res Function(_$_LpUnderlyingTokens) then) =
      __$$_LpUnderlyingTokensCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      @JsonKey(fromJson: nameFromJson) String name,
      @JsonKey(fromJson: addressFromJson) String address});
}

/// @nodoc
class __$$_LpUnderlyingTokensCopyWithImpl<$Res>
    extends _$LpUnderlyingTokensCopyWithImpl<$Res, _$_LpUnderlyingTokens>
    implements _$$_LpUnderlyingTokensCopyWith<$Res> {
  __$$_LpUnderlyingTokensCopyWithImpl(
      _$_LpUnderlyingTokens _value, $Res Function(_$_LpUnderlyingTokens) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? address = null,
  }) {
    return _then(_$_LpUnderlyingTokens(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LpUnderlyingTokens implements _LpUnderlyingTokens {
  _$_LpUnderlyingTokens(
      {required this.symbol,
      @JsonKey(fromJson: nameFromJson) required this.name,
      @JsonKey(fromJson: addressFromJson) required this.address});

  factory _$_LpUnderlyingTokens.fromJson(Map<String, dynamic> json) =>
      _$$_LpUnderlyingTokensFromJson(json);

  @override
  final String symbol;
  @override
  @JsonKey(fromJson: nameFromJson)
  final String name;
  @override
  @JsonKey(fromJson: addressFromJson)
  final String address;

  @override
  String toString() {
    return 'LpUnderlyingTokens(symbol: $symbol, name: $name, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LpUnderlyingTokens &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, name, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LpUnderlyingTokensCopyWith<_$_LpUnderlyingTokens> get copyWith =>
      __$$_LpUnderlyingTokensCopyWithImpl<_$_LpUnderlyingTokens>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LpUnderlyingTokensToJson(
      this,
    );
  }
}

abstract class _LpUnderlyingTokens implements LpUnderlyingTokens, IToken {
  factory _LpUnderlyingTokens(
          {required final String symbol,
          @JsonKey(fromJson: nameFromJson) required final String name,
          @JsonKey(fromJson: addressFromJson) required final String address}) =
      _$_LpUnderlyingTokens;

  factory _LpUnderlyingTokens.fromJson(Map<String, dynamic> json) =
      _$_LpUnderlyingTokens.fromJson;

  @override
  String get symbol;
  @override
  @JsonKey(fromJson: nameFromJson)
  String get name;
  @override
  @JsonKey(fromJson: addressFromJson)
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_LpUnderlyingTokensCopyWith<_$_LpUnderlyingTokens> get copyWith =>
      throw _privateConstructorUsedError;
}
