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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  int get decimals => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String symbol, String name, int decimals,
            String address, @JsonKey(fromJson: amountFromJson) BigInt amount)
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc721,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String symbol, String name, int decimals, String address,
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc721,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String symbol, String name, int decimals, String address,
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenDetailsCopyWith<TokenDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDetailsCopyWith<$Res> {
  factory $TokenDetailsCopyWith(
          TokenDetails value, $Res Function(TokenDetails) then) =
      _$TokenDetailsCopyWithImpl<$Res, TokenDetails>;
  @useResult
  $Res call({String symbol, String name, int decimals, String address});
}

/// @nodoc
class _$TokenDetailsCopyWithImpl<$Res, $Val extends TokenDetails>
    implements $TokenDetailsCopyWith<$Res> {
  _$TokenDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$NativeCopyWith<$Res> implements $TokenDetailsCopyWith<$Res> {
  factory _$$NativeCopyWith(_$Native value, $Res Function(_$Native) then) =
      __$$NativeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String name,
      int decimals,
      String address,
      @JsonKey(fromJson: amountFromJson) BigInt amount});
}

/// @nodoc
class __$$NativeCopyWithImpl<$Res>
    extends _$TokenDetailsCopyWithImpl<$Res, _$Native>
    implements _$$NativeCopyWith<$Res> {
  __$$NativeCopyWithImpl(_$Native _value, $Res Function(_$Native) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? decimals = null,
    Object? address = null,
    Object? amount = null,
  }) {
    return _then(_$Native(
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
class _$Native extends Native {
  const _$Native(
      {this.symbol = 'FUSE',
      this.name = 'Fuse Token',
      this.decimals = 18,
      this.address = Variables.NATIVE_TOKEN_ADDRESS,
      @JsonKey(fromJson: amountFromJson) required this.amount,
      final String? $type})
      : $type = $type ?? 'native',
        super._();

  factory _$Native.fromJson(Map<String, dynamic> json) =>
      _$$NativeFromJson(json);

  @override
  @JsonKey()
  final String symbol;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Native &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, name, decimals, address, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NativeCopyWith<_$Native> get copyWith =>
      __$$NativeCopyWithImpl<_$Native>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String symbol, String name, int decimals,
            String address, @JsonKey(fromJson: amountFromJson) BigInt amount)
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    TResult? Function(String symbol, String name, int decimals, String address,
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    TResult Function(String symbol, String name, int decimals, String address,
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    return _$$NativeToJson(
      this,
    );
  }
}

abstract class Native extends TokenDetails implements IToken {
  const factory Native(
          {final String symbol,
          final String name,
          final int decimals,
          final String address,
          @JsonKey(fromJson: amountFromJson) required final BigInt amount}) =
      _$Native;
  const Native._() : super._();

  factory Native.fromJson(Map<String, dynamic> json) = _$Native.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  int get decimals;
  @override
  String get address;
  @JsonKey(fromJson: amountFromJson)
  BigInt get amount;
  @override
  @JsonKey(ignore: true)
  _$$NativeCopyWith<_$Native> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LiquidityPoolTokenCopyWith<$Res>
    implements $TokenDetailsCopyWith<$Res> {
  factory _$$LiquidityPoolTokenCopyWith(_$LiquidityPoolToken value,
          $Res Function(_$LiquidityPoolToken) then) =
      __$$LiquidityPoolTokenCopyWithImpl<$Res>;
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
class __$$LiquidityPoolTokenCopyWithImpl<$Res>
    extends _$TokenDetailsCopyWithImpl<$Res, _$LiquidityPoolToken>
    implements _$$LiquidityPoolTokenCopyWith<$Res> {
  __$$LiquidityPoolTokenCopyWithImpl(
      _$LiquidityPoolToken _value, $Res Function(_$LiquidityPoolToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? decimals = null,
    Object? name = null,
    Object? address = null,
    Object? underlyingTokens = null,
  }) {
    return _then(_$LiquidityPoolToken(
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
class _$LiquidityPoolToken extends LiquidityPoolToken {
  const _$LiquidityPoolToken(
      {required this.symbol,
      required this.decimals,
      @JsonKey(fromJson: nameFromJson) required this.name,
      @JsonKey(fromJson: addressFromJson) required this.address,
      required this.underlyingTokens,
      final String? $type})
      : $type = $type ?? 'lp',
        super._();

  factory _$LiquidityPoolToken.fromJson(Map<String, dynamic> json) =>
      _$$LiquidityPoolTokenFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiquidityPoolToken &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other.underlyingTokens, underlyingTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, decimals, name, address,
      const DeepCollectionEquality().hash(underlyingTokens));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LiquidityPoolTokenCopyWith<_$LiquidityPoolToken> get copyWith =>
      __$$LiquidityPoolTokenCopyWithImpl<_$LiquidityPoolToken>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String symbol, String name, int decimals,
            String address, @JsonKey(fromJson: amountFromJson) BigInt amount)
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    TResult? Function(String symbol, String name, int decimals, String address,
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    TResult Function(String symbol, String name, int decimals, String address,
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    return _$$LiquidityPoolTokenToJson(
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
      _$LiquidityPoolToken;
  const LiquidityPoolToken._() : super._();

  factory LiquidityPoolToken.fromJson(Map<String, dynamic> json) =
      _$LiquidityPoolToken.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$LiquidityPoolTokenCopyWith<_$LiquidityPoolToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BridgedTokenCopyWith<$Res>
    implements $TokenDetailsCopyWith<$Res> {
  factory _$$BridgedTokenCopyWith(
          _$BridgedToken value, $Res Function(_$BridgedToken) then) =
      __$$BridgedTokenCopyWithImpl<$Res>;
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
class __$$BridgedTokenCopyWithImpl<$Res>
    extends _$TokenDetailsCopyWithImpl<$Res, _$BridgedToken>
    implements _$$BridgedTokenCopyWith<$Res> {
  __$$BridgedTokenCopyWithImpl(
      _$BridgedToken _value, $Res Function(_$BridgedToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? logoURI = null,
    Object? decimals = null,
    Object? name = null,
    Object? address = null,
  }) {
    return _then(_$BridgedToken(
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
class _$BridgedToken extends BridgedToken {
  const _$BridgedToken(
      {required this.symbol,
      required this.logoURI,
      required this.decimals,
      @JsonKey(fromJson: nameFromJson) required this.name,
      @JsonKey(fromJson: addressFromJson) required this.address,
      final String? $type})
      : $type = $type ?? 'bridged',
        super._();

  factory _$BridgedToken.fromJson(Map<String, dynamic> json) =>
      _$$BridgedTokenFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BridgedToken &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.logoURI, logoURI) || other.logoURI == logoURI) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, logoURI, decimals, name, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BridgedTokenCopyWith<_$BridgedToken> get copyWith =>
      __$$BridgedTokenCopyWithImpl<_$BridgedToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String symbol, String name, int decimals,
            String address, @JsonKey(fromJson: amountFromJson) BigInt amount)
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    TResult? Function(String symbol, String name, int decimals, String address,
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    TResult Function(String symbol, String name, int decimals, String address,
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    return _$$BridgedTokenToJson(
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
      _$BridgedToken;
  const BridgedToken._() : super._();

  factory BridgedToken.fromJson(Map<String, dynamic> json) =
      _$BridgedToken.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$BridgedTokenCopyWith<_$BridgedToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MiscTokenCopyWith<$Res>
    implements $TokenDetailsCopyWith<$Res> {
  factory _$$MiscTokenCopyWith(
          _$MiscToken value, $Res Function(_$MiscToken) then) =
      __$$MiscTokenCopyWithImpl<$Res>;
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
class __$$MiscTokenCopyWithImpl<$Res>
    extends _$TokenDetailsCopyWithImpl<$Res, _$MiscToken>
    implements _$$MiscTokenCopyWith<$Res> {
  __$$MiscTokenCopyWithImpl(
      _$MiscToken _value, $Res Function(_$MiscToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? logoURI = null,
    Object? decimals = null,
    Object? name = null,
    Object? address = null,
  }) {
    return _then(_$MiscToken(
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
class _$MiscToken extends MiscToken {
  const _$MiscToken(
      {required this.symbol,
      required this.logoURI,
      required this.decimals,
      @JsonKey(fromJson: nameFromJson) required this.name,
      @JsonKey(fromJson: addressFromJson) required this.address,
      final String? $type})
      : $type = $type ?? 'misc',
        super._();

  factory _$MiscToken.fromJson(Map<String, dynamic> json) =>
      _$$MiscTokenFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiscToken &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.logoURI, logoURI) || other.logoURI == logoURI) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, logoURI, decimals, name, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MiscTokenCopyWith<_$MiscToken> get copyWith =>
      __$$MiscTokenCopyWithImpl<_$MiscToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String symbol, String name, int decimals,
            String address, @JsonKey(fromJson: amountFromJson) BigInt amount)
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    TResult? Function(String symbol, String name, int decimals, String address,
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    TResult Function(String symbol, String name, int decimals, String address,
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    return _$$MiscTokenToJson(
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
      _$MiscToken;
  const MiscToken._() : super._();

  factory MiscToken.fromJson(Map<String, dynamic> json) = _$MiscToken.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$MiscTokenCopyWith<_$MiscToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ERC20CopyWith<$Res> implements $TokenDetailsCopyWith<$Res> {
  factory _$$ERC20CopyWith(_$ERC20 value, $Res Function(_$ERC20) then) =
      __$$ERC20CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      @JsonKey(fromJson: nameFromJson) String name,
      @JsonKey(fromJson: _decimalsFromJson) int decimals,
      @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
      String address,
      @JsonKey(name: 'balance') BigInt amount});
}

/// @nodoc
class __$$ERC20CopyWithImpl<$Res>
    extends _$TokenDetailsCopyWithImpl<$Res, _$ERC20>
    implements _$$ERC20CopyWith<$Res> {
  __$$ERC20CopyWithImpl(_$ERC20 _value, $Res Function(_$ERC20) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? decimals = null,
    Object? address = null,
    Object? amount = null,
  }) {
    return _then(_$ERC20(
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
class _$ERC20 extends ERC20 {
  const _$ERC20(
      {required this.symbol,
      @JsonKey(fromJson: nameFromJson) required this.name,
      @JsonKey(fromJson: _decimalsFromJson) this.decimals = 0,
      @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
      required this.address,
      @JsonKey(name: 'balance') required this.amount,
      final String? $type})
      : $type = $type ?? 'ERC-20',
        super._();

  factory _$ERC20.fromJson(Map<String, dynamic> json) => _$$ERC20FromJson(json);

  @override
  final String symbol;
  @override
  @JsonKey(fromJson: nameFromJson)
  final String name;
  @override
  @JsonKey(fromJson: _decimalsFromJson)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ERC20 &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, name, decimals, address, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ERC20CopyWith<_$ERC20> get copyWith =>
      __$$ERC20CopyWithImpl<_$ERC20>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String symbol, String name, int decimals,
            String address, @JsonKey(fromJson: amountFromJson) BigInt amount)
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    TResult? Function(String symbol, String name, int decimals, String address,
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    TResult Function(String symbol, String name, int decimals, String address,
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    return _$$ERC20ToJson(
      this,
    );
  }
}

abstract class ERC20 extends TokenDetails implements IToken {
  const factory ERC20(
      {required final String symbol,
      @JsonKey(fromJson: nameFromJson) required final String name,
      @JsonKey(fromJson: _decimalsFromJson) final int decimals,
      @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
      required final String address,
      @JsonKey(name: 'balance') required final BigInt amount}) = _$ERC20;
  const ERC20._() : super._();

  factory ERC20.fromJson(Map<String, dynamic> json) = _$ERC20.fromJson;

  @override
  String get symbol;
  @override
  @JsonKey(fromJson: nameFromJson)
  String get name;
  @override
  @JsonKey(fromJson: _decimalsFromJson)
  int get decimals;
  @override
  @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
  String get address;
  @JsonKey(name: 'balance')
  BigInt get amount;
  @override
  @JsonKey(ignore: true)
  _$$ERC20CopyWith<_$ERC20> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ERC721CopyWith<$Res> implements $TokenDetailsCopyWith<$Res> {
  factory _$$ERC721CopyWith(_$ERC721 value, $Res Function(_$ERC721) then) =
      __$$ERC721CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      @JsonKey(fromJson: nameFromJson) String name,
      @JsonKey(fromJson: _decimalsFromJson) int decimals,
      @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
      String address,
      @JsonKey(name: 'balance') BigInt amount});
}

/// @nodoc
class __$$ERC721CopyWithImpl<$Res>
    extends _$TokenDetailsCopyWithImpl<$Res, _$ERC721>
    implements _$$ERC721CopyWith<$Res> {
  __$$ERC721CopyWithImpl(_$ERC721 _value, $Res Function(_$ERC721) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? decimals = null,
    Object? address = null,
    Object? amount = null,
  }) {
    return _then(_$ERC721(
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
class _$ERC721 extends ERC721 {
  const _$ERC721(
      {required this.symbol,
      @JsonKey(fromJson: nameFromJson) required this.name,
      @JsonKey(fromJson: _decimalsFromJson) required this.decimals,
      @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
      required this.address,
      @JsonKey(name: 'balance') required this.amount,
      final String? $type})
      : $type = $type ?? 'ERC-721',
        super._();

  factory _$ERC721.fromJson(Map<String, dynamic> json) =>
      _$$ERC721FromJson(json);

  @override
  final String symbol;
  @override
  @JsonKey(fromJson: nameFromJson)
  final String name;
  @override
  @JsonKey(fromJson: _decimalsFromJson)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ERC721 &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, name, decimals, address, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ERC721CopyWith<_$ERC721> get copyWith =>
      __$$ERC721CopyWithImpl<_$ERC721>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String symbol, String name, int decimals,
            String address, @JsonKey(fromJson: amountFromJson) BigInt amount)
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)
        erc20,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    TResult? Function(String symbol, String name, int decimals, String address,
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    TResult Function(String symbol, String name, int decimals, String address,
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
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
            @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
            String address,
            @JsonKey(name: 'balance') BigInt amount)?
        erc20,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: _decimalsFromJson) int decimals,
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
    return _$$ERC721ToJson(
      this,
    );
  }
}

abstract class ERC721 extends TokenDetails implements IToken {
  const factory ERC721(
      {required final String symbol,
      @JsonKey(fromJson: nameFromJson) required final String name,
      @JsonKey(fromJson: _decimalsFromJson) required final int decimals,
      @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
      required final String address,
      @JsonKey(name: 'balance') required final BigInt amount}) = _$ERC721;
  const ERC721._() : super._();

  factory ERC721.fromJson(Map<String, dynamic> json) = _$ERC721.fromJson;

  @override
  String get symbol;
  @override
  @JsonKey(fromJson: nameFromJson)
  String get name;
  @override
  @JsonKey(fromJson: _decimalsFromJson)
  int get decimals;
  @override
  @JsonKey(name: 'contractAddress', fromJson: addressFromJson)
  String get address;
  @JsonKey(name: 'balance')
  BigInt get amount;
  @override
  @JsonKey(ignore: true)
  _$$ERC721CopyWith<_$ERC721> get copyWith =>
      throw _privateConstructorUsedError;
}
