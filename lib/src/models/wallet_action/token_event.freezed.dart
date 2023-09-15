// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenEvent _$TokenEventFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'native':
      return NativeToken.fromJson(json);
    case 'ERC-20':
      return ERC20Transfer.fromJson(json);
    case 'ERC-721':
      return ERC721Transfer.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'TokenEvent', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$TokenEvent {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(fromJson: amountFromJson)
  BigInt get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String symbol, String name, int decimals,
            String address, @JsonKey(fromJson: amountFromJson) BigInt value)
        nativeToken,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value)
        erc20Transfer,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt tokenId,
            BigInt to)
        erc721Transfer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String symbol, String name, int decimals, String address,
            @JsonKey(fromJson: amountFromJson) BigInt value)?
        nativeToken,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value)?
        erc20Transfer,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt tokenId,
            BigInt to)?
        erc721Transfer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String symbol, String name, int decimals, String address,
            @JsonKey(fromJson: amountFromJson) BigInt value)?
        nativeToken,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value)?
        erc20Transfer,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt tokenId,
            BigInt to)?
        erc721Transfer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NativeToken value) nativeToken,
    required TResult Function(ERC20Transfer value) erc20Transfer,
    required TResult Function(ERC721Transfer value) erc721Transfer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NativeToken value)? nativeToken,
    TResult? Function(ERC20Transfer value)? erc20Transfer,
    TResult? Function(ERC721Transfer value)? erc721Transfer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NativeToken value)? nativeToken,
    TResult Function(ERC20Transfer value)? erc20Transfer,
    TResult Function(ERC721Transfer value)? erc721Transfer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenEventCopyWith<TokenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenEventCopyWith<$Res> {
  factory $TokenEventCopyWith(
          TokenEvent value, $Res Function(TokenEvent) then) =
      _$TokenEventCopyWithImpl<$Res, TokenEvent>;
  @useResult
  $Res call(
      {String symbol,
      String name,
      String address,
      @JsonKey(fromJson: amountFromJson) BigInt value});
}

/// @nodoc
class _$TokenEventCopyWithImpl<$Res, $Val extends TokenEvent>
    implements $TokenEventCopyWith<$Res> {
  _$TokenEventCopyWithImpl(this._value, this._then);

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
    Object? value = null,
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
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NativeTokenCopyWith<$Res>
    implements $TokenEventCopyWith<$Res> {
  factory _$$NativeTokenCopyWith(
          _$NativeToken value, $Res Function(_$NativeToken) then) =
      __$$NativeTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String name,
      int decimals,
      String address,
      @JsonKey(fromJson: amountFromJson) BigInt value});
}

/// @nodoc
class __$$NativeTokenCopyWithImpl<$Res>
    extends _$TokenEventCopyWithImpl<$Res, _$NativeToken>
    implements _$$NativeTokenCopyWith<$Res> {
  __$$NativeTokenCopyWithImpl(
      _$NativeToken _value, $Res Function(_$NativeToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? decimals = null,
    Object? address = null,
    Object? value = null,
  }) {
    return _then(_$NativeToken(
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
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NativeToken extends NativeToken {
  const _$NativeToken(
      {this.symbol = 'FUSE',
      this.name = 'Fuse Token',
      this.decimals = 18,
      this.address = Variables.NATIVE_TOKEN_ADDRESS,
      @JsonKey(fromJson: amountFromJson) required this.value,
      final String? $type})
      : $type = $type ?? 'native',
        super._();

  factory _$NativeToken.fromJson(Map<String, dynamic> json) =>
      _$$NativeTokenFromJson(json);

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
  final BigInt value;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenEvent.nativeToken(symbol: $symbol, name: $name, decimals: $decimals, address: $address, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NativeToken &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, name, decimals, address, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NativeTokenCopyWith<_$NativeToken> get copyWith =>
      __$$NativeTokenCopyWithImpl<_$NativeToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String symbol, String name, int decimals,
            String address, @JsonKey(fromJson: amountFromJson) BigInt value)
        nativeToken,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value)
        erc20Transfer,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt tokenId,
            BigInt to)
        erc721Transfer,
  }) {
    return nativeToken(symbol, name, decimals, address, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String symbol, String name, int decimals, String address,
            @JsonKey(fromJson: amountFromJson) BigInt value)?
        nativeToken,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value)?
        erc20Transfer,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt tokenId,
            BigInt to)?
        erc721Transfer,
  }) {
    return nativeToken?.call(symbol, name, decimals, address, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String symbol, String name, int decimals, String address,
            @JsonKey(fromJson: amountFromJson) BigInt value)?
        nativeToken,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value)?
        erc20Transfer,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt tokenId,
            BigInt to)?
        erc721Transfer,
    required TResult orElse(),
  }) {
    if (nativeToken != null) {
      return nativeToken(symbol, name, decimals, address, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NativeToken value) nativeToken,
    required TResult Function(ERC20Transfer value) erc20Transfer,
    required TResult Function(ERC721Transfer value) erc721Transfer,
  }) {
    return nativeToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NativeToken value)? nativeToken,
    TResult? Function(ERC20Transfer value)? erc20Transfer,
    TResult? Function(ERC721Transfer value)? erc721Transfer,
  }) {
    return nativeToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NativeToken value)? nativeToken,
    TResult Function(ERC20Transfer value)? erc20Transfer,
    TResult Function(ERC721Transfer value)? erc721Transfer,
    required TResult orElse(),
  }) {
    if (nativeToken != null) {
      return nativeToken(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NativeTokenToJson(
      this,
    );
  }
}

abstract class NativeToken extends TokenEvent {
  const factory NativeToken(
          {final String symbol,
          final String name,
          final int decimals,
          final String address,
          @JsonKey(fromJson: amountFromJson) required final BigInt value}) =
      _$NativeToken;
  const NativeToken._() : super._();

  factory NativeToken.fromJson(Map<String, dynamic> json) =
      _$NativeToken.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  int get decimals;
  @override
  String get address;
  @override
  @JsonKey(fromJson: amountFromJson)
  BigInt get value;
  @override
  @JsonKey(ignore: true)
  _$$NativeTokenCopyWith<_$NativeToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ERC20TransferCopyWith<$Res>
    implements $TokenEventCopyWith<$Res> {
  factory _$$ERC20TransferCopyWith(
          _$ERC20Transfer value, $Res Function(_$ERC20Transfer) then) =
      __$$ERC20TransferCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      @JsonKey(fromJson: nameFromJson) String name,
      int decimals,
      @JsonKey(fromJson: addressFromJson) String address,
      BigInt value});
}

/// @nodoc
class __$$ERC20TransferCopyWithImpl<$Res>
    extends _$TokenEventCopyWithImpl<$Res, _$ERC20Transfer>
    implements _$$ERC20TransferCopyWith<$Res> {
  __$$ERC20TransferCopyWithImpl(
      _$ERC20Transfer _value, $Res Function(_$ERC20Transfer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? decimals = null,
    Object? address = null,
    Object? value = null,
  }) {
    return _then(_$ERC20Transfer(
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
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ERC20Transfer extends ERC20Transfer {
  const _$ERC20Transfer(
      {required this.symbol,
      @JsonKey(fromJson: nameFromJson) required this.name,
      required this.decimals,
      @JsonKey(fromJson: addressFromJson) required this.address,
      required this.value,
      final String? $type})
      : $type = $type ?? 'ERC-20',
        super._();

  factory _$ERC20Transfer.fromJson(Map<String, dynamic> json) =>
      _$$ERC20TransferFromJson(json);

  @override
  final String symbol;
  @override
  @JsonKey(fromJson: nameFromJson)
  final String name;
  @override
  final int decimals;
  @override
  @JsonKey(fromJson: addressFromJson)
  final String address;
  @override
  final BigInt value;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenEvent.erc20Transfer(symbol: $symbol, name: $name, decimals: $decimals, address: $address, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ERC20Transfer &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, name, decimals, address, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ERC20TransferCopyWith<_$ERC20Transfer> get copyWith =>
      __$$ERC20TransferCopyWithImpl<_$ERC20Transfer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String symbol, String name, int decimals,
            String address, @JsonKey(fromJson: amountFromJson) BigInt value)
        nativeToken,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value)
        erc20Transfer,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt tokenId,
            BigInt to)
        erc721Transfer,
  }) {
    return erc20Transfer(symbol, name, decimals, address, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String symbol, String name, int decimals, String address,
            @JsonKey(fromJson: amountFromJson) BigInt value)?
        nativeToken,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value)?
        erc20Transfer,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt tokenId,
            BigInt to)?
        erc721Transfer,
  }) {
    return erc20Transfer?.call(symbol, name, decimals, address, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String symbol, String name, int decimals, String address,
            @JsonKey(fromJson: amountFromJson) BigInt value)?
        nativeToken,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value)?
        erc20Transfer,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt tokenId,
            BigInt to)?
        erc721Transfer,
    required TResult orElse(),
  }) {
    if (erc20Transfer != null) {
      return erc20Transfer(symbol, name, decimals, address, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NativeToken value) nativeToken,
    required TResult Function(ERC20Transfer value) erc20Transfer,
    required TResult Function(ERC721Transfer value) erc721Transfer,
  }) {
    return erc20Transfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NativeToken value)? nativeToken,
    TResult? Function(ERC20Transfer value)? erc20Transfer,
    TResult? Function(ERC721Transfer value)? erc721Transfer,
  }) {
    return erc20Transfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NativeToken value)? nativeToken,
    TResult Function(ERC20Transfer value)? erc20Transfer,
    TResult Function(ERC721Transfer value)? erc721Transfer,
    required TResult orElse(),
  }) {
    if (erc20Transfer != null) {
      return erc20Transfer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ERC20TransferToJson(
      this,
    );
  }
}

abstract class ERC20Transfer extends TokenEvent {
  const factory ERC20Transfer(
      {required final String symbol,
      @JsonKey(fromJson: nameFromJson) required final String name,
      required final int decimals,
      @JsonKey(fromJson: addressFromJson) required final String address,
      required final BigInt value}) = _$ERC20Transfer;
  const ERC20Transfer._() : super._();

  factory ERC20Transfer.fromJson(Map<String, dynamic> json) =
      _$ERC20Transfer.fromJson;

  @override
  String get symbol;
  @override
  @JsonKey(fromJson: nameFromJson)
  String get name;
  int get decimals;
  @override
  @JsonKey(fromJson: addressFromJson)
  String get address;
  @override
  BigInt get value;
  @override
  @JsonKey(ignore: true)
  _$$ERC20TransferCopyWith<_$ERC20Transfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ERC721TransferCopyWith<$Res>
    implements $TokenEventCopyWith<$Res> {
  factory _$$ERC721TransferCopyWith(
          _$ERC721Transfer value, $Res Function(_$ERC721Transfer) then) =
      __$$ERC721TransferCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      @JsonKey(fromJson: nameFromJson) String name,
      @JsonKey(fromJson: addressFromJson) String address,
      BigInt value,
      BigInt tokenId,
      BigInt to});
}

/// @nodoc
class __$$ERC721TransferCopyWithImpl<$Res>
    extends _$TokenEventCopyWithImpl<$Res, _$ERC721Transfer>
    implements _$$ERC721TransferCopyWith<$Res> {
  __$$ERC721TransferCopyWithImpl(
      _$ERC721Transfer _value, $Res Function(_$ERC721Transfer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? address = null,
    Object? value = null,
    Object? tokenId = null,
    Object? to = null,
  }) {
    return _then(_$ERC721Transfer(
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
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as BigInt,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ERC721Transfer extends ERC721Transfer {
  const _$ERC721Transfer(
      {required this.symbol,
      @JsonKey(fromJson: nameFromJson) required this.name,
      @JsonKey(fromJson: addressFromJson) required this.address,
      required this.value,
      required this.tokenId,
      required this.to,
      final String? $type})
      : $type = $type ?? 'ERC-721',
        super._();

  factory _$ERC721Transfer.fromJson(Map<String, dynamic> json) =>
      _$$ERC721TransferFromJson(json);

  @override
  final String symbol;
  @override
  @JsonKey(fromJson: nameFromJson)
  final String name;
  @override
  @JsonKey(fromJson: addressFromJson)
  final String address;
  @override
  final BigInt value;
  @override
  final BigInt tokenId;
  @override
  final BigInt to;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenEvent.erc721Transfer(symbol: $symbol, name: $name, address: $address, value: $value, tokenId: $tokenId, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ERC721Transfer &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, name, address, value, tokenId, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ERC721TransferCopyWith<_$ERC721Transfer> get copyWith =>
      __$$ERC721TransferCopyWithImpl<_$ERC721Transfer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String symbol, String name, int decimals,
            String address, @JsonKey(fromJson: amountFromJson) BigInt value)
        nativeToken,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value)
        erc20Transfer,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt tokenId,
            BigInt to)
        erc721Transfer,
  }) {
    return erc721Transfer(symbol, name, address, value, tokenId, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String symbol, String name, int decimals, String address,
            @JsonKey(fromJson: amountFromJson) BigInt value)?
        nativeToken,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value)?
        erc20Transfer,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt tokenId,
            BigInt to)?
        erc721Transfer,
  }) {
    return erc721Transfer?.call(symbol, name, address, value, tokenId, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String symbol, String name, int decimals, String address,
            @JsonKey(fromJson: amountFromJson) BigInt value)?
        nativeToken,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value)?
        erc20Transfer,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt tokenId,
            BigInt to)?
        erc721Transfer,
    required TResult orElse(),
  }) {
    if (erc721Transfer != null) {
      return erc721Transfer(symbol, name, address, value, tokenId, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NativeToken value) nativeToken,
    required TResult Function(ERC20Transfer value) erc20Transfer,
    required TResult Function(ERC721Transfer value) erc721Transfer,
  }) {
    return erc721Transfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NativeToken value)? nativeToken,
    TResult? Function(ERC20Transfer value)? erc20Transfer,
    TResult? Function(ERC721Transfer value)? erc721Transfer,
  }) {
    return erc721Transfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NativeToken value)? nativeToken,
    TResult Function(ERC20Transfer value)? erc20Transfer,
    TResult Function(ERC721Transfer value)? erc721Transfer,
    required TResult orElse(),
  }) {
    if (erc721Transfer != null) {
      return erc721Transfer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ERC721TransferToJson(
      this,
    );
  }
}

abstract class ERC721Transfer extends TokenEvent {
  const factory ERC721Transfer(
      {required final String symbol,
      @JsonKey(fromJson: nameFromJson) required final String name,
      @JsonKey(fromJson: addressFromJson) required final String address,
      required final BigInt value,
      required final BigInt tokenId,
      required final BigInt to}) = _$ERC721Transfer;
  const ERC721Transfer._() : super._();

  factory ERC721Transfer.fromJson(Map<String, dynamic> json) =
      _$ERC721Transfer.fromJson;

  @override
  String get symbol;
  @override
  @JsonKey(fromJson: nameFromJson)
  String get name;
  @override
  @JsonKey(fromJson: addressFromJson)
  String get address;
  @override
  BigInt get value;
  BigInt get tokenId;
  BigInt get to;
  @override
  @JsonKey(ignore: true)
  _$$ERC721TransferCopyWith<_$ERC721Transfer> get copyWith =>
      throw _privateConstructorUsedError;
}
