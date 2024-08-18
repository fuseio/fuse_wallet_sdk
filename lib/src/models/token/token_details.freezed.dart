// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenDetails _$TokenDetailsFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'native':
      return Native.fromJson(json);
    case 'lp':
      return LiquidityPoolToken.fromJson(json);
    case 'bridged':
      return BridgedToken.fromJson(json);
    case 'misc':
      return MiscToken.fromJson(json);
    case 'ERC-20':
      return ERC20.fromJson(json);
    case 'ERC-721':
      return ERC721.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'TokenDetails',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$TokenDetails {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 18, fromJson: decimalsFromJson)
  int get decimals => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)
        native,
    required TResult Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)
        liquidityPoolToken,
    required TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)
        bridgedToken,
    required TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)
        miscToken,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc721,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)?
        native,
    TResult? Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)?
        liquidityPoolToken,
    TResult? Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        bridgedToken,
    TResult? Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        miscToken,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc721,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)?
        native,
    TResult Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)?
        liquidityPoolToken,
    TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        bridgedToken,
    TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        miscToken,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc721,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Native value) native,
    required TResult Function(LiquidityPoolToken value) liquidityPoolToken,
    required TResult Function(BridgedToken value) bridgedToken,
    required TResult Function(MiscToken value) miscToken,
    required TResult Function(ERC20 value) erc20,
    required TResult Function(ERC721 value) erc721,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Native value)? native,
    TResult? Function(LiquidityPoolToken value)? liquidityPoolToken,
    TResult? Function(BridgedToken value)? bridgedToken,
    TResult? Function(MiscToken value)? miscToken,
    TResult? Function(ERC20 value)? erc20,
    TResult? Function(ERC721 value)? erc721,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Native value)? native,
    TResult Function(LiquidityPoolToken value)? liquidityPoolToken,
    TResult Function(BridgedToken value)? bridgedToken,
    TResult Function(MiscToken value)? miscToken,
    TResult Function(ERC20 value)? erc20,
    TResult Function(ERC721 value)? erc721,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TokenDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenDetailsCopyWith<TokenDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDetailsCopyWith<$Res> {
  factory $TokenDetailsCopyWith(
          TokenDetails value, $Res Function(TokenDetails) then) =
      _$TokenDetailsCopyWithImpl<$Res, TokenDetails>;
  @useResult
  $Res call(
      {String symbol,
      String name,
      @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
      String address});
}

/// @nodoc
class _$TokenDetailsCopyWithImpl<$Res, $Val extends TokenDetails>
    implements $TokenDetailsCopyWith<$Res> {
  _$TokenDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? decimals = null,
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
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NativeImplCopyWith<$Res>
    implements $TokenDetailsCopyWith<$Res> {
  factory _$$NativeImplCopyWith(
          _$NativeImpl value, $Res Function(_$NativeImpl) then) =
      __$$NativeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String name,
      @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
      String address,
      @JsonKey(fromJson: amountFromJson) BigInt amount});
}

/// @nodoc
class __$$NativeImplCopyWithImpl<$Res>
    extends _$TokenDetailsCopyWithImpl<$Res, _$NativeImpl>
    implements _$$NativeImplCopyWith<$Res> {
  __$$NativeImplCopyWithImpl(
      _$NativeImpl _value, $Res Function(_$NativeImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? decimals = null,
    Object? address = null,
    Object? amount = null,
  }) {
    return _then(_$NativeImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NativeImpl extends Native {
  const _$NativeImpl(
      {this.symbol = 'FUSE',
      this.name = 'Fuse Token',
      @JsonKey(defaultValue: 18, fromJson: decimalsFromJson)
      required this.decimals,
      this.address = Variables.NATIVE_TOKEN_ADDRESS,
      @JsonKey(fromJson: amountFromJson) required this.amount,
      final String? $type})
      : $type = $type ?? 'native',
        super._();

  factory _$NativeImpl.fromJson(Map<String, dynamic> json) =>
      _$$NativeImplFromJson(json);

  @override
  @JsonKey()
  final String symbol;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(defaultValue: 18, fromJson: decimalsFromJson)
  final int decimals;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey(fromJson: amountFromJson)
  final BigInt amount;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenDetails.native(symbol: $symbol, name: $name, decimals: $decimals, address: $address, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NativeImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, name, decimals, address, amount);

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NativeImplCopyWith<_$NativeImpl> get copyWith =>
      __$$NativeImplCopyWithImpl<_$NativeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)
        native,
    required TResult Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)
        liquidityPoolToken,
    required TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)
        bridgedToken,
    required TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)
        miscToken,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc721,
  }) {
    return native(symbol, name, decimals, address, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)?
        native,
    TResult? Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)?
        liquidityPoolToken,
    TResult? Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        bridgedToken,
    TResult? Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        miscToken,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc721,
  }) {
    return native?.call(symbol, name, decimals, address, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)?
        native,
    TResult Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)?
        liquidityPoolToken,
    TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        bridgedToken,
    TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        miscToken,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc721,
    required TResult orElse(),
  }) {
    if (native != null) {
      return native(symbol, name, decimals, address, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Native value) native,
    required TResult Function(LiquidityPoolToken value) liquidityPoolToken,
    required TResult Function(BridgedToken value) bridgedToken,
    required TResult Function(MiscToken value) miscToken,
    required TResult Function(ERC20 value) erc20,
    required TResult Function(ERC721 value) erc721,
  }) {
    return native(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Native value)? native,
    TResult? Function(LiquidityPoolToken value)? liquidityPoolToken,
    TResult? Function(BridgedToken value)? bridgedToken,
    TResult? Function(MiscToken value)? miscToken,
    TResult? Function(ERC20 value)? erc20,
    TResult? Function(ERC721 value)? erc721,
  }) {
    return native?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Native value)? native,
    TResult Function(LiquidityPoolToken value)? liquidityPoolToken,
    TResult Function(BridgedToken value)? bridgedToken,
    TResult Function(MiscToken value)? miscToken,
    TResult Function(ERC20 value)? erc20,
    TResult Function(ERC721 value)? erc721,
    required TResult orElse(),
  }) {
    if (native != null) {
      return native(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NativeImplToJson(
      this,
    );
  }
}

abstract class Native extends TokenDetails implements IToken {
  const factory Native(
          {final String symbol,
          final String name,
          @JsonKey(defaultValue: 18, fromJson: decimalsFromJson)
          required final int decimals,
          final String address,
          @JsonKey(fromJson: amountFromJson) required final BigInt amount}) =
      _$NativeImpl;
  const Native._() : super._();

  factory Native.fromJson(Map<String, dynamic> json) = _$NativeImpl.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  @JsonKey(defaultValue: 18, fromJson: decimalsFromJson)
  int get decimals;
  @override
  String get address;
  @JsonKey(fromJson: amountFromJson)
  BigInt get amount;

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NativeImplCopyWith<_$NativeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LiquidityPoolTokenImplCopyWith<$Res>
    implements $TokenDetailsCopyWith<$Res> {
  factory _$$LiquidityPoolTokenImplCopyWith(_$LiquidityPoolTokenImpl value,
          $Res Function(_$LiquidityPoolTokenImpl) then) =
      __$$LiquidityPoolTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      int decimals,
      @JsonKey(fromJson: nameFromJson) String name,
      @JsonKey(fromJson: addressFromJson) String address,
      List<LpUnderlyingTokens> underlyingTokens});
}

/// @nodoc
class __$$LiquidityPoolTokenImplCopyWithImpl<$Res>
    extends _$TokenDetailsCopyWithImpl<$Res, _$LiquidityPoolTokenImpl>
    implements _$$LiquidityPoolTokenImplCopyWith<$Res> {
  __$$LiquidityPoolTokenImplCopyWithImpl(_$LiquidityPoolTokenImpl _value,
      $Res Function(_$LiquidityPoolTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? decimals = null,
    Object? name = null,
    Object? address = null,
    Object? underlyingTokens = null,
  }) {
    return _then(_$LiquidityPoolTokenImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      underlyingTokens: null == underlyingTokens
          ? _value.underlyingTokens
          : underlyingTokens // ignore: cast_nullable_to_non_nullable
              as List<LpUnderlyingTokens>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LiquidityPoolTokenImpl extends LiquidityPoolToken {
  const _$LiquidityPoolTokenImpl(
      {required this.symbol,
      required this.decimals,
      @JsonKey(fromJson: nameFromJson) required this.name,
      @JsonKey(fromJson: addressFromJson) required this.address,
      required this.underlyingTokens,
      final String? $type})
      : $type = $type ?? 'lp',
        super._();

  factory _$LiquidityPoolTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$LiquidityPoolTokenImplFromJson(json);

  @override
  final String symbol;
  @override
  final int decimals;
  @override
  @JsonKey(fromJson: nameFromJson)
  final String name;
  @override
  @JsonKey(fromJson: addressFromJson)
  final String address;
  @override
  final List<LpUnderlyingTokens> underlyingTokens;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenDetails.liquidityPoolToken(symbol: $symbol, decimals: $decimals, name: $name, address: $address, underlyingTokens: $underlyingTokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiquidityPoolTokenImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other.underlyingTokens, underlyingTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, decimals, name, address,
      const DeepCollectionEquality().hash(underlyingTokens));

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LiquidityPoolTokenImplCopyWith<_$LiquidityPoolTokenImpl> get copyWith =>
      __$$LiquidityPoolTokenImplCopyWithImpl<_$LiquidityPoolTokenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)
        native,
    required TResult Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)
        liquidityPoolToken,
    required TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)
        bridgedToken,
    required TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)
        miscToken,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc721,
  }) {
    return liquidityPoolToken(
        symbol, decimals, name, address, underlyingTokens);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)?
        native,
    TResult? Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)?
        liquidityPoolToken,
    TResult? Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        bridgedToken,
    TResult? Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        miscToken,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc721,
  }) {
    return liquidityPoolToken?.call(
        symbol, decimals, name, address, underlyingTokens);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)?
        native,
    TResult Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)?
        liquidityPoolToken,
    TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        bridgedToken,
    TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        miscToken,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc721,
    required TResult orElse(),
  }) {
    if (liquidityPoolToken != null) {
      return liquidityPoolToken(
          symbol, decimals, name, address, underlyingTokens);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Native value) native,
    required TResult Function(LiquidityPoolToken value) liquidityPoolToken,
    required TResult Function(BridgedToken value) bridgedToken,
    required TResult Function(MiscToken value) miscToken,
    required TResult Function(ERC20 value) erc20,
    required TResult Function(ERC721 value) erc721,
  }) {
    return liquidityPoolToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Native value)? native,
    TResult? Function(LiquidityPoolToken value)? liquidityPoolToken,
    TResult? Function(BridgedToken value)? bridgedToken,
    TResult? Function(MiscToken value)? miscToken,
    TResult? Function(ERC20 value)? erc20,
    TResult? Function(ERC721 value)? erc721,
  }) {
    return liquidityPoolToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Native value)? native,
    TResult Function(LiquidityPoolToken value)? liquidityPoolToken,
    TResult Function(BridgedToken value)? bridgedToken,
    TResult Function(MiscToken value)? miscToken,
    TResult Function(ERC20 value)? erc20,
    TResult Function(ERC721 value)? erc721,
    required TResult orElse(),
  }) {
    if (liquidityPoolToken != null) {
      return liquidityPoolToken(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LiquidityPoolTokenImplToJson(
      this,
    );
  }
}

abstract class LiquidityPoolToken extends TokenDetails implements IToken {
  const factory LiquidityPoolToken(
          {required final String symbol,
          required final int decimals,
          @JsonKey(fromJson: nameFromJson) required final String name,
          @JsonKey(fromJson: addressFromJson) required final String address,
          required final List<LpUnderlyingTokens> underlyingTokens}) =
      _$LiquidityPoolTokenImpl;
  const LiquidityPoolToken._() : super._();

  factory LiquidityPoolToken.fromJson(Map<String, dynamic> json) =
      _$LiquidityPoolTokenImpl.fromJson;

  @override
  String get symbol;
  @override
  int get decimals;
  @override
  @JsonKey(fromJson: nameFromJson)
  String get name;
  @override
  @JsonKey(fromJson: addressFromJson)
  String get address;
  List<LpUnderlyingTokens> get underlyingTokens;

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LiquidityPoolTokenImplCopyWith<_$LiquidityPoolTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BridgedTokenImplCopyWith<$Res>
    implements $TokenDetailsCopyWith<$Res> {
  factory _$$BridgedTokenImplCopyWith(
          _$BridgedTokenImpl value, $Res Function(_$BridgedTokenImpl) then) =
      __$$BridgedTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String logoURI,
      int decimals,
      @JsonKey(fromJson: nameFromJson) String name,
      @JsonKey(fromJson: addressFromJson) String address});
}

/// @nodoc
class __$$BridgedTokenImplCopyWithImpl<$Res>
    extends _$TokenDetailsCopyWithImpl<$Res, _$BridgedTokenImpl>
    implements _$$BridgedTokenImplCopyWith<$Res> {
  __$$BridgedTokenImplCopyWithImpl(
      _$BridgedTokenImpl _value, $Res Function(_$BridgedTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? logoURI = null,
    Object? decimals = null,
    Object? name = null,
    Object? address = null,
  }) {
    return _then(_$BridgedTokenImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      logoURI: null == logoURI
          ? _value.logoURI
          : logoURI // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$BridgedTokenImpl extends BridgedToken {
  const _$BridgedTokenImpl(
      {required this.symbol,
      required this.logoURI,
      required this.decimals,
      @JsonKey(fromJson: nameFromJson) required this.name,
      @JsonKey(fromJson: addressFromJson) required this.address,
      final String? $type})
      : $type = $type ?? 'bridged',
        super._();

  factory _$BridgedTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$BridgedTokenImplFromJson(json);

  @override
  final String symbol;
  @override
  final String logoURI;
  @override
  final int decimals;
  @override
  @JsonKey(fromJson: nameFromJson)
  final String name;
  @override
  @JsonKey(fromJson: addressFromJson)
  final String address;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenDetails.bridgedToken(symbol: $symbol, logoURI: $logoURI, decimals: $decimals, name: $name, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BridgedTokenImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.logoURI, logoURI) || other.logoURI == logoURI) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, logoURI, decimals, name, address);

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BridgedTokenImplCopyWith<_$BridgedTokenImpl> get copyWith =>
      __$$BridgedTokenImplCopyWithImpl<_$BridgedTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)
        native,
    required TResult Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)
        liquidityPoolToken,
    required TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)
        bridgedToken,
    required TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)
        miscToken,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc721,
  }) {
    return bridgedToken(symbol, logoURI, decimals, name, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)?
        native,
    TResult? Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)?
        liquidityPoolToken,
    TResult? Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        bridgedToken,
    TResult? Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        miscToken,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc721,
  }) {
    return bridgedToken?.call(symbol, logoURI, decimals, name, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)?
        native,
    TResult Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)?
        liquidityPoolToken,
    TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        bridgedToken,
    TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        miscToken,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc721,
    required TResult orElse(),
  }) {
    if (bridgedToken != null) {
      return bridgedToken(symbol, logoURI, decimals, name, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Native value) native,
    required TResult Function(LiquidityPoolToken value) liquidityPoolToken,
    required TResult Function(BridgedToken value) bridgedToken,
    required TResult Function(MiscToken value) miscToken,
    required TResult Function(ERC20 value) erc20,
    required TResult Function(ERC721 value) erc721,
  }) {
    return bridgedToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Native value)? native,
    TResult? Function(LiquidityPoolToken value)? liquidityPoolToken,
    TResult? Function(BridgedToken value)? bridgedToken,
    TResult? Function(MiscToken value)? miscToken,
    TResult? Function(ERC20 value)? erc20,
    TResult? Function(ERC721 value)? erc721,
  }) {
    return bridgedToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Native value)? native,
    TResult Function(LiquidityPoolToken value)? liquidityPoolToken,
    TResult Function(BridgedToken value)? bridgedToken,
    TResult Function(MiscToken value)? miscToken,
    TResult Function(ERC20 value)? erc20,
    TResult Function(ERC721 value)? erc721,
    required TResult orElse(),
  }) {
    if (bridgedToken != null) {
      return bridgedToken(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BridgedTokenImplToJson(
      this,
    );
  }
}

abstract class BridgedToken extends TokenDetails implements IToken {
  const factory BridgedToken(
          {required final String symbol,
          required final String logoURI,
          required final int decimals,
          @JsonKey(fromJson: nameFromJson) required final String name,
          @JsonKey(fromJson: addressFromJson) required final String address}) =
      _$BridgedTokenImpl;
  const BridgedToken._() : super._();

  factory BridgedToken.fromJson(Map<String, dynamic> json) =
      _$BridgedTokenImpl.fromJson;

  @override
  String get symbol;
  String get logoURI;
  @override
  int get decimals;
  @override
  @JsonKey(fromJson: nameFromJson)
  String get name;
  @override
  @JsonKey(fromJson: addressFromJson)
  String get address;

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BridgedTokenImplCopyWith<_$BridgedTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MiscTokenImplCopyWith<$Res>
    implements $TokenDetailsCopyWith<$Res> {
  factory _$$MiscTokenImplCopyWith(
          _$MiscTokenImpl value, $Res Function(_$MiscTokenImpl) then) =
      __$$MiscTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String logoURI,
      int decimals,
      @JsonKey(fromJson: nameFromJson) String name,
      @JsonKey(fromJson: addressFromJson) String address});
}

/// @nodoc
class __$$MiscTokenImplCopyWithImpl<$Res>
    extends _$TokenDetailsCopyWithImpl<$Res, _$MiscTokenImpl>
    implements _$$MiscTokenImplCopyWith<$Res> {
  __$$MiscTokenImplCopyWithImpl(
      _$MiscTokenImpl _value, $Res Function(_$MiscTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? logoURI = null,
    Object? decimals = null,
    Object? name = null,
    Object? address = null,
  }) {
    return _then(_$MiscTokenImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      logoURI: null == logoURI
          ? _value.logoURI
          : logoURI // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$MiscTokenImpl extends MiscToken {
  const _$MiscTokenImpl(
      {required this.symbol,
      required this.logoURI,
      required this.decimals,
      @JsonKey(fromJson: nameFromJson) required this.name,
      @JsonKey(fromJson: addressFromJson) required this.address,
      final String? $type})
      : $type = $type ?? 'misc',
        super._();

  factory _$MiscTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiscTokenImplFromJson(json);

  @override
  final String symbol;
  @override
  final String logoURI;
  @override
  final int decimals;
  @override
  @JsonKey(fromJson: nameFromJson)
  final String name;
  @override
  @JsonKey(fromJson: addressFromJson)
  final String address;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenDetails.miscToken(symbol: $symbol, logoURI: $logoURI, decimals: $decimals, name: $name, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiscTokenImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.logoURI, logoURI) || other.logoURI == logoURI) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, logoURI, decimals, name, address);

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiscTokenImplCopyWith<_$MiscTokenImpl> get copyWith =>
      __$$MiscTokenImplCopyWithImpl<_$MiscTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)
        native,
    required TResult Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)
        liquidityPoolToken,
    required TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)
        bridgedToken,
    required TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)
        miscToken,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc721,
  }) {
    return miscToken(symbol, logoURI, decimals, name, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)?
        native,
    TResult? Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)?
        liquidityPoolToken,
    TResult? Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        bridgedToken,
    TResult? Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        miscToken,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc721,
  }) {
    return miscToken?.call(symbol, logoURI, decimals, name, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)?
        native,
    TResult Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)?
        liquidityPoolToken,
    TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        bridgedToken,
    TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        miscToken,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc721,
    required TResult orElse(),
  }) {
    if (miscToken != null) {
      return miscToken(symbol, logoURI, decimals, name, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Native value) native,
    required TResult Function(LiquidityPoolToken value) liquidityPoolToken,
    required TResult Function(BridgedToken value) bridgedToken,
    required TResult Function(MiscToken value) miscToken,
    required TResult Function(ERC20 value) erc20,
    required TResult Function(ERC721 value) erc721,
  }) {
    return miscToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Native value)? native,
    TResult? Function(LiquidityPoolToken value)? liquidityPoolToken,
    TResult? Function(BridgedToken value)? bridgedToken,
    TResult? Function(MiscToken value)? miscToken,
    TResult? Function(ERC20 value)? erc20,
    TResult? Function(ERC721 value)? erc721,
  }) {
    return miscToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Native value)? native,
    TResult Function(LiquidityPoolToken value)? liquidityPoolToken,
    TResult Function(BridgedToken value)? bridgedToken,
    TResult Function(MiscToken value)? miscToken,
    TResult Function(ERC20 value)? erc20,
    TResult Function(ERC721 value)? erc721,
    required TResult orElse(),
  }) {
    if (miscToken != null) {
      return miscToken(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MiscTokenImplToJson(
      this,
    );
  }
}

abstract class MiscToken extends TokenDetails implements IToken {
  const factory MiscToken(
          {required final String symbol,
          required final String logoURI,
          required final int decimals,
          @JsonKey(fromJson: nameFromJson) required final String name,
          @JsonKey(fromJson: addressFromJson) required final String address}) =
      _$MiscTokenImpl;
  const MiscToken._() : super._();

  factory MiscToken.fromJson(Map<String, dynamic> json) =
      _$MiscTokenImpl.fromJson;

  @override
  String get symbol;
  String get logoURI;
  @override
  int get decimals;
  @override
  @JsonKey(fromJson: nameFromJson)
  String get name;
  @override
  @JsonKey(fromJson: addressFromJson)
  String get address;

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiscTokenImplCopyWith<_$MiscTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ERC20ImplCopyWith<$Res>
    implements $TokenDetailsCopyWith<$Res> {
  factory _$$ERC20ImplCopyWith(
          _$ERC20Impl value, $Res Function(_$ERC20Impl) then) =
      __$$ERC20ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      @JsonKey(fromJson: nameFromJson) String name,
      @JsonKey(fromJson: decimalsFromJson) int decimals,
      @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
      String address,
      @JsonKey(name: 'balance') BigInt amount});
}

/// @nodoc
class __$$ERC20ImplCopyWithImpl<$Res>
    extends _$TokenDetailsCopyWithImpl<$Res, _$ERC20Impl>
    implements _$$ERC20ImplCopyWith<$Res> {
  __$$ERC20ImplCopyWithImpl(
      _$ERC20Impl _value, $Res Function(_$ERC20Impl) _then)
      : super(_value, _then);

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? decimals = null,
    Object? address = null,
    Object? amount = null,
  }) {
    return _then(_$ERC20Impl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ERC20Impl extends ERC20 {
  const _$ERC20Impl(
      {required this.symbol,
      @JsonKey(fromJson: nameFromJson) required this.name,
      @JsonKey(fromJson: decimalsFromJson) this.decimals = 0,
      @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
      required this.address,
      @JsonKey(name: 'balance') required this.amount,
      final String? $type})
      : $type = $type ?? 'ERC-20',
        super._();

  factory _$ERC20Impl.fromJson(Map<String, dynamic> json) =>
      _$$ERC20ImplFromJson(json);

  @override
  final String symbol;
  @override
  @JsonKey(fromJson: nameFromJson)
  final String name;
  @override
  @JsonKey(fromJson: decimalsFromJson)
  final int decimals;
  @override
  @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
  final String address;
  @override
  @JsonKey(name: 'balance')
  final BigInt amount;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenDetails.erc20(symbol: $symbol, name: $name, decimals: $decimals, address: $address, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ERC20Impl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, name, decimals, address, amount);

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ERC20ImplCopyWith<_$ERC20Impl> get copyWith =>
      __$$ERC20ImplCopyWithImpl<_$ERC20Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)
        native,
    required TResult Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)
        liquidityPoolToken,
    required TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)
        bridgedToken,
    required TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)
        miscToken,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc721,
  }) {
    return erc20(symbol, name, decimals, address, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)?
        native,
    TResult? Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)?
        liquidityPoolToken,
    TResult? Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        bridgedToken,
    TResult? Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        miscToken,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc721,
  }) {
    return erc20?.call(symbol, name, decimals, address, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)?
        native,
    TResult Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)?
        liquidityPoolToken,
    TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        bridgedToken,
    TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        miscToken,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc721,
    required TResult orElse(),
  }) {
    if (erc20 != null) {
      return erc20(symbol, name, decimals, address, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Native value) native,
    required TResult Function(LiquidityPoolToken value) liquidityPoolToken,
    required TResult Function(BridgedToken value) bridgedToken,
    required TResult Function(MiscToken value) miscToken,
    required TResult Function(ERC20 value) erc20,
    required TResult Function(ERC721 value) erc721,
  }) {
    return erc20(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Native value)? native,
    TResult? Function(LiquidityPoolToken value)? liquidityPoolToken,
    TResult? Function(BridgedToken value)? bridgedToken,
    TResult? Function(MiscToken value)? miscToken,
    TResult? Function(ERC20 value)? erc20,
    TResult? Function(ERC721 value)? erc721,
  }) {
    return erc20?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Native value)? native,
    TResult Function(LiquidityPoolToken value)? liquidityPoolToken,
    TResult Function(BridgedToken value)? bridgedToken,
    TResult Function(MiscToken value)? miscToken,
    TResult Function(ERC20 value)? erc20,
    TResult Function(ERC721 value)? erc721,
    required TResult orElse(),
  }) {
    if (erc20 != null) {
      return erc20(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ERC20ImplToJson(
      this,
    );
  }
}

abstract class ERC20 extends TokenDetails implements IToken {
  const factory ERC20(
      {required final String symbol,
      @JsonKey(fromJson: nameFromJson) required final String name,
      @JsonKey(fromJson: decimalsFromJson) final int decimals,
      @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
      required final String address,
      @JsonKey(name: 'balance') required final BigInt amount}) = _$ERC20Impl;
  const ERC20._() : super._();

  factory ERC20.fromJson(Map<String, dynamic> json) = _$ERC20Impl.fromJson;

  @override
  String get symbol;
  @override
  @JsonKey(fromJson: nameFromJson)
  String get name;
  @override
  @JsonKey(fromJson: decimalsFromJson)
  int get decimals;
  @override
  @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
  String get address;
  @JsonKey(name: 'balance')
  BigInt get amount;

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ERC20ImplCopyWith<_$ERC20Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ERC721ImplCopyWith<$Res>
    implements $TokenDetailsCopyWith<$Res> {
  factory _$$ERC721ImplCopyWith(
          _$ERC721Impl value, $Res Function(_$ERC721Impl) then) =
      __$$ERC721ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      @JsonKey(fromJson: nameFromJson) String name,
      @JsonKey(fromJson: decimalsFromJson) int decimals,
      @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
      String address,
      @JsonKey(name: 'balance') BigInt amount});
}

/// @nodoc
class __$$ERC721ImplCopyWithImpl<$Res>
    extends _$TokenDetailsCopyWithImpl<$Res, _$ERC721Impl>
    implements _$$ERC721ImplCopyWith<$Res> {
  __$$ERC721ImplCopyWithImpl(
      _$ERC721Impl _value, $Res Function(_$ERC721Impl) _then)
      : super(_value, _then);

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? decimals = null,
    Object? address = null,
    Object? amount = null,
  }) {
    return _then(_$ERC721Impl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ERC721Impl extends ERC721 {
  const _$ERC721Impl(
      {required this.symbol,
      @JsonKey(fromJson: nameFromJson) required this.name,
      @JsonKey(fromJson: decimalsFromJson) required this.decimals,
      @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
      required this.address,
      @JsonKey(name: 'balance') required this.amount,
      final String? $type})
      : $type = $type ?? 'ERC-721',
        super._();

  factory _$ERC721Impl.fromJson(Map<String, dynamic> json) =>
      _$$ERC721ImplFromJson(json);

  @override
  final String symbol;
  @override
  @JsonKey(fromJson: nameFromJson)
  final String name;
  @override
  @JsonKey(fromJson: decimalsFromJson)
  final int decimals;
  @override
  @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
  final String address;
  @override
  @JsonKey(name: 'balance')
  final BigInt amount;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenDetails.erc721(symbol: $symbol, name: $name, decimals: $decimals, address: $address, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ERC721Impl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, name, decimals, address, amount);

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ERC721ImplCopyWith<_$ERC721Impl> get copyWith =>
      __$$ERC721ImplCopyWithImpl<_$ERC721Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)
        native,
    required TResult Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)
        liquidityPoolToken,
    required TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)
        bridgedToken,
    required TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)
        miscToken,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc721,
  }) {
    return erc721(symbol, name, decimals, address, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)?
        native,
    TResult? Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)?
        liquidityPoolToken,
    TResult? Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        bridgedToken,
    TResult? Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        miscToken,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc721,
  }) {
    return erc721?.call(symbol, name, decimals, address, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String symbol,
            String name,
            @JsonKey(defaultValue: 18, fromJson: decimalsFromJson) int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt amount)?
        native,
    TResult Function(
            String symbol,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            List<LpUnderlyingTokens> underlyingTokens)?
        liquidityPoolToken,
    TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        bridgedToken,
    TResult Function(
            String symbol,
            String logoURI,
            int decimals,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address)?
        miscToken,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc721,
    required TResult orElse(),
  }) {
    if (erc721 != null) {
      return erc721(symbol, name, decimals, address, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Native value) native,
    required TResult Function(LiquidityPoolToken value) liquidityPoolToken,
    required TResult Function(BridgedToken value) bridgedToken,
    required TResult Function(MiscToken value) miscToken,
    required TResult Function(ERC20 value) erc20,
    required TResult Function(ERC721 value) erc721,
  }) {
    return erc721(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Native value)? native,
    TResult? Function(LiquidityPoolToken value)? liquidityPoolToken,
    TResult? Function(BridgedToken value)? bridgedToken,
    TResult? Function(MiscToken value)? miscToken,
    TResult? Function(ERC20 value)? erc20,
    TResult? Function(ERC721 value)? erc721,
  }) {
    return erc721?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Native value)? native,
    TResult Function(LiquidityPoolToken value)? liquidityPoolToken,
    TResult Function(BridgedToken value)? bridgedToken,
    TResult Function(MiscToken value)? miscToken,
    TResult Function(ERC20 value)? erc20,
    TResult Function(ERC721 value)? erc721,
    required TResult orElse(),
  }) {
    if (erc721 != null) {
      return erc721(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ERC721ImplToJson(
      this,
    );
  }
}

abstract class ERC721 extends TokenDetails implements IToken {
  const factory ERC721(
      {required final String symbol,
      @JsonKey(fromJson: nameFromJson) required final String name,
      @JsonKey(fromJson: decimalsFromJson) required final int decimals,
      @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
      required final String address,
      @JsonKey(name: 'balance') required final BigInt amount}) = _$ERC721Impl;
  const ERC721._() : super._();

  factory ERC721.fromJson(Map<String, dynamic> json) = _$ERC721Impl.fromJson;

  @override
  String get symbol;
  @override
  @JsonKey(fromJson: nameFromJson)
  String get name;
  @override
  @JsonKey(fromJson: decimalsFromJson)
  int get decimals;
  @override
  @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
  String get address;
  @JsonKey(name: 'balance')
  BigInt get amount;

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ERC721ImplCopyWith<_$ERC721Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
