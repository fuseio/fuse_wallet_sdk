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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  String? get to => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol,
            String name,
            int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt value,
            String? to,
            String? from)
        nativeToken,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            String? to,
            String? from)
        erc20Transfer,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt? tokenId,
            String? to,
            String? from)
        erc721Transfer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String symbol,
            String name,
            int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt value,
            String? to,
            String? from)?
        nativeToken,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            String? to,
            String? from)?
        erc20Transfer,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt? tokenId,
            String? to,
            String? from)?
        erc721Transfer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String symbol,
            String name,
            int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt value,
            String? to,
            String? from)?
        nativeToken,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            String? to,
            String? from)?
        erc20Transfer,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt? tokenId,
            String? to,
            String? from)?
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

  /// Serializes this TokenEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      @JsonKey(fromJson: amountFromJson) BigInt value,
      String? to,
      String? from});
}

/// @nodoc
class _$TokenEventCopyWithImpl<$Res, $Val extends TokenEvent>
    implements $TokenEventCopyWith<$Res> {
  _$TokenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? address = null,
    Object? value = null,
    Object? to = freezed,
    Object? from = freezed,
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
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NativeTokenImplCopyWith<$Res>
    implements $TokenEventCopyWith<$Res> {
  factory _$$NativeTokenImplCopyWith(
          _$NativeTokenImpl value, $Res Function(_$NativeTokenImpl) then) =
      __$$NativeTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String name,
      int decimals,
      String address,
      @JsonKey(fromJson: amountFromJson) BigInt value,
      String? to,
      String? from});
}

/// @nodoc
class __$$NativeTokenImplCopyWithImpl<$Res>
    extends _$TokenEventCopyWithImpl<$Res, _$NativeTokenImpl>
    implements _$$NativeTokenImplCopyWith<$Res> {
  __$$NativeTokenImplCopyWithImpl(
      _$NativeTokenImpl _value, $Res Function(_$NativeTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? decimals = null,
    Object? address = null,
    Object? value = null,
    Object? to = freezed,
    Object? from = freezed,
  }) {
    return _then(_$NativeTokenImpl(
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
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NativeTokenImpl extends NativeToken {
  const _$NativeTokenImpl(
      {this.symbol = 'FUSE',
      this.name = 'Fuse Token',
      this.decimals = 18,
      this.address = Variables.NATIVE_TOKEN_ADDRESS,
      @JsonKey(fromJson: amountFromJson) required this.value,
      this.to,
      this.from,
      final String? $type})
      : $type = $type ?? 'native',
        super._();

  factory _$NativeTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$NativeTokenImplFromJson(json);

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
  @override
  final String? to;
  @override
  final String? from;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenEvent.nativeToken(symbol: $symbol, name: $name, decimals: $decimals, address: $address, value: $value, to: $to, from: $from)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NativeTokenImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.from, from) || other.from == from));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, symbol, name, decimals, address, value, to, from);

  /// Create a copy of TokenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NativeTokenImplCopyWith<_$NativeTokenImpl> get copyWith =>
      __$$NativeTokenImplCopyWithImpl<_$NativeTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol,
            String name,
            int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt value,
            String? to,
            String? from)
        nativeToken,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            String? to,
            String? from)
        erc20Transfer,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt? tokenId,
            String? to,
            String? from)
        erc721Transfer,
  }) {
    return nativeToken(symbol, name, decimals, address, value, to, from);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String symbol,
            String name,
            int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt value,
            String? to,
            String? from)?
        nativeToken,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            String? to,
            String? from)?
        erc20Transfer,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt? tokenId,
            String? to,
            String? from)?
        erc721Transfer,
  }) {
    return nativeToken?.call(symbol, name, decimals, address, value, to, from);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String symbol,
            String name,
            int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt value,
            String? to,
            String? from)?
        nativeToken,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            String? to,
            String? from)?
        erc20Transfer,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt? tokenId,
            String? to,
            String? from)?
        erc721Transfer,
    required TResult orElse(),
  }) {
    if (nativeToken != null) {
      return nativeToken(symbol, name, decimals, address, value, to, from);
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
    return _$$NativeTokenImplToJson(
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
      @JsonKey(fromJson: amountFromJson) required final BigInt value,
      final String? to,
      final String? from}) = _$NativeTokenImpl;
  const NativeToken._() : super._();

  factory NativeToken.fromJson(Map<String, dynamic> json) =
      _$NativeTokenImpl.fromJson;

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
  String? get to;
  @override
  String? get from;

  /// Create a copy of TokenEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NativeTokenImplCopyWith<_$NativeTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ERC20TransferImplCopyWith<$Res>
    implements $TokenEventCopyWith<$Res> {
  factory _$$ERC20TransferImplCopyWith(
          _$ERC20TransferImpl value, $Res Function(_$ERC20TransferImpl) then) =
      __$$ERC20TransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      @JsonKey(fromJson: nameFromJson) String name,
      int decimals,
      @JsonKey(fromJson: addressFromJson) String address,
      BigInt value,
      String? to,
      String? from});
}

/// @nodoc
class __$$ERC20TransferImplCopyWithImpl<$Res>
    extends _$TokenEventCopyWithImpl<$Res, _$ERC20TransferImpl>
    implements _$$ERC20TransferImplCopyWith<$Res> {
  __$$ERC20TransferImplCopyWithImpl(
      _$ERC20TransferImpl _value, $Res Function(_$ERC20TransferImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? decimals = null,
    Object? address = null,
    Object? value = null,
    Object? to = freezed,
    Object? from = freezed,
  }) {
    return _then(_$ERC20TransferImpl(
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
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ERC20TransferImpl extends ERC20Transfer {
  const _$ERC20TransferImpl(
      {required this.symbol,
      @JsonKey(fromJson: nameFromJson) required this.name,
      required this.decimals,
      @JsonKey(fromJson: addressFromJson) required this.address,
      required this.value,
      this.to,
      this.from,
      final String? $type})
      : $type = $type ?? 'ERC-20',
        super._();

  factory _$ERC20TransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$ERC20TransferImplFromJson(json);

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
  @override
  final String? to;
  @override
  final String? from;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenEvent.erc20Transfer(symbol: $symbol, name: $name, decimals: $decimals, address: $address, value: $value, to: $to, from: $from)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ERC20TransferImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.from, from) || other.from == from));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, symbol, name, decimals, address, value, to, from);

  /// Create a copy of TokenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ERC20TransferImplCopyWith<_$ERC20TransferImpl> get copyWith =>
      __$$ERC20TransferImplCopyWithImpl<_$ERC20TransferImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol,
            String name,
            int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt value,
            String? to,
            String? from)
        nativeToken,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            String? to,
            String? from)
        erc20Transfer,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt? tokenId,
            String? to,
            String? from)
        erc721Transfer,
  }) {
    return erc20Transfer(symbol, name, decimals, address, value, to, from);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String symbol,
            String name,
            int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt value,
            String? to,
            String? from)?
        nativeToken,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            String? to,
            String? from)?
        erc20Transfer,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt? tokenId,
            String? to,
            String? from)?
        erc721Transfer,
  }) {
    return erc20Transfer?.call(
        symbol, name, decimals, address, value, to, from);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String symbol,
            String name,
            int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt value,
            String? to,
            String? from)?
        nativeToken,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            String? to,
            String? from)?
        erc20Transfer,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt? tokenId,
            String? to,
            String? from)?
        erc721Transfer,
    required TResult orElse(),
  }) {
    if (erc20Transfer != null) {
      return erc20Transfer(symbol, name, decimals, address, value, to, from);
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
    return _$$ERC20TransferImplToJson(
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
      required final BigInt value,
      final String? to,
      final String? from}) = _$ERC20TransferImpl;
  const ERC20Transfer._() : super._();

  factory ERC20Transfer.fromJson(Map<String, dynamic> json) =
      _$ERC20TransferImpl.fromJson;

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
  String? get to;
  @override
  String? get from;

  /// Create a copy of TokenEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ERC20TransferImplCopyWith<_$ERC20TransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ERC721TransferImplCopyWith<$Res>
    implements $TokenEventCopyWith<$Res> {
  factory _$$ERC721TransferImplCopyWith(_$ERC721TransferImpl value,
          $Res Function(_$ERC721TransferImpl) then) =
      __$$ERC721TransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      @JsonKey(fromJson: nameFromJson) String name,
      @JsonKey(fromJson: addressFromJson) String address,
      BigInt value,
      BigInt? tokenId,
      String? to,
      String? from});
}

/// @nodoc
class __$$ERC721TransferImplCopyWithImpl<$Res>
    extends _$TokenEventCopyWithImpl<$Res, _$ERC721TransferImpl>
    implements _$$ERC721TransferImplCopyWith<$Res> {
  __$$ERC721TransferImplCopyWithImpl(
      _$ERC721TransferImpl _value, $Res Function(_$ERC721TransferImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? address = null,
    Object? value = null,
    Object? tokenId = freezed,
    Object? to = freezed,
    Object? from = freezed,
  }) {
    return _then(_$ERC721TransferImpl(
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
      tokenId: freezed == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ERC721TransferImpl extends ERC721Transfer {
  const _$ERC721TransferImpl(
      {required this.symbol,
      @JsonKey(fromJson: nameFromJson) required this.name,
      @JsonKey(fromJson: addressFromJson) required this.address,
      required this.value,
      this.tokenId,
      this.to,
      this.from,
      final String? $type})
      : $type = $type ?? 'ERC-721',
        super._();

  factory _$ERC721TransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$ERC721TransferImplFromJson(json);

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
  final BigInt? tokenId;
  @override
  final String? to;
  @override
  final String? from;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TokenEvent.erc721Transfer(symbol: $symbol, name: $name, address: $address, value: $value, tokenId: $tokenId, to: $to, from: $from)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ERC721TransferImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.from, from) || other.from == from));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, name, address, value, tokenId, to, from);

  /// Create a copy of TokenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ERC721TransferImplCopyWith<_$ERC721TransferImpl> get copyWith =>
      __$$ERC721TransferImplCopyWithImpl<_$ERC721TransferImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String symbol,
            String name,
            int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt value,
            String? to,
            String? from)
        nativeToken,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            String? to,
            String? from)
        erc20Transfer,
    required TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt? tokenId,
            String? to,
            String? from)
        erc721Transfer,
  }) {
    return erc721Transfer(symbol, name, address, value, tokenId, to, from);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String symbol,
            String name,
            int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt value,
            String? to,
            String? from)?
        nativeToken,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            String? to,
            String? from)?
        erc20Transfer,
    TResult? Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt? tokenId,
            String? to,
            String? from)?
        erc721Transfer,
  }) {
    return erc721Transfer?.call(
        symbol, name, address, value, tokenId, to, from);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String symbol,
            String name,
            int decimals,
            String address,
            @JsonKey(fromJson: amountFromJson) BigInt value,
            String? to,
            String? from)?
        nativeToken,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            int decimals,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            String? to,
            String? from)?
        erc20Transfer,
    TResult Function(
            String symbol,
            @JsonKey(fromJson: nameFromJson) String name,
            @JsonKey(fromJson: addressFromJson) String address,
            BigInt value,
            BigInt? tokenId,
            String? to,
            String? from)?
        erc721Transfer,
    required TResult orElse(),
  }) {
    if (erc721Transfer != null) {
      return erc721Transfer(symbol, name, address, value, tokenId, to, from);
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
    return _$$ERC721TransferImplToJson(
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
      final BigInt? tokenId,
      final String? to,
      final String? from}) = _$ERC721TransferImpl;
  const ERC721Transfer._() : super._();

  factory ERC721Transfer.fromJson(Map<String, dynamic> json) =
      _$ERC721TransferImpl.fromJson;

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
  BigInt? get tokenId;
  @override
  String? get to;
  @override
  String? get from;

  /// Create a copy of TokenEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ERC721TransferImplCopyWith<_$ERC721TransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
