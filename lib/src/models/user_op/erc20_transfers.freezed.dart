// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'erc20_transfers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Erc20Transfers _$Erc20TransfersFromJson(Map<String, dynamic> json) {
  return _Erc20Transfers.fromJson(json);
}

/// @nodoc
mixin _$Erc20Transfers {
  String get id => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _amountFromJson)
  BigInt get value => throw _privateConstructorUsedError;
  String get contractAddress => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(fromJson: decimalsFromJson)
  int get decimals => throw _privateConstructorUsedError;

  /// Serializes this Erc20Transfers to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Erc20Transfers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Erc20TransfersCopyWith<Erc20Transfers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Erc20TransfersCopyWith<$Res> {
  factory $Erc20TransfersCopyWith(
          Erc20Transfers value, $Res Function(Erc20Transfers) then) =
      _$Erc20TransfersCopyWithImpl<$Res, Erc20Transfers>;
  @useResult
  $Res call(
      {String id,
      String from,
      String to,
      @JsonKey(fromJson: _amountFromJson) BigInt value,
      String contractAddress,
      String name,
      String symbol,
      @JsonKey(fromJson: decimalsFromJson) int decimals});
}

/// @nodoc
class _$Erc20TransfersCopyWithImpl<$Res, $Val extends Erc20Transfers>
    implements $Erc20TransfersCopyWith<$Res> {
  _$Erc20TransfersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Erc20Transfers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? to = null,
    Object? value = null,
    Object? contractAddress = null,
    Object? name = null,
    Object? symbol = null,
    Object? decimals = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      contractAddress: null == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Erc20TransfersImplCopyWith<$Res>
    implements $Erc20TransfersCopyWith<$Res> {
  factory _$$Erc20TransfersImplCopyWith(_$Erc20TransfersImpl value,
          $Res Function(_$Erc20TransfersImpl) then) =
      __$$Erc20TransfersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String from,
      String to,
      @JsonKey(fromJson: _amountFromJson) BigInt value,
      String contractAddress,
      String name,
      String symbol,
      @JsonKey(fromJson: decimalsFromJson) int decimals});
}

/// @nodoc
class __$$Erc20TransfersImplCopyWithImpl<$Res>
    extends _$Erc20TransfersCopyWithImpl<$Res, _$Erc20TransfersImpl>
    implements _$$Erc20TransfersImplCopyWith<$Res> {
  __$$Erc20TransfersImplCopyWithImpl(
      _$Erc20TransfersImpl _value, $Res Function(_$Erc20TransfersImpl) _then)
      : super(_value, _then);

  /// Create a copy of Erc20Transfers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? to = null,
    Object? value = null,
    Object? contractAddress = null,
    Object? name = null,
    Object? symbol = null,
    Object? decimals = null,
  }) {
    return _then(_$Erc20TransfersImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      contractAddress: null == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Erc20TransfersImpl implements _Erc20Transfers {
  const _$Erc20TransfersImpl(
      {required this.id,
      required this.from,
      required this.to,
      @JsonKey(fromJson: _amountFromJson) required this.value,
      required this.contractAddress,
      required this.name,
      required this.symbol,
      @JsonKey(fromJson: decimalsFromJson) required this.decimals});

  factory _$Erc20TransfersImpl.fromJson(Map<String, dynamic> json) =>
      _$$Erc20TransfersImplFromJson(json);

  @override
  final String id;
  @override
  final String from;
  @override
  final String to;
  @override
  @JsonKey(fromJson: _amountFromJson)
  final BigInt value;
  @override
  final String contractAddress;
  @override
  final String name;
  @override
  final String symbol;
  @override
  @JsonKey(fromJson: decimalsFromJson)
  final int decimals;

  @override
  String toString() {
    return 'Erc20Transfers(id: $id, from: $from, to: $to, value: $value, contractAddress: $contractAddress, name: $name, symbol: $symbol, decimals: $decimals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Erc20TransfersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.contractAddress, contractAddress) ||
                other.contractAddress == contractAddress) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, from, to, value,
      contractAddress, name, symbol, decimals);

  /// Create a copy of Erc20Transfers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Erc20TransfersImplCopyWith<_$Erc20TransfersImpl> get copyWith =>
      __$$Erc20TransfersImplCopyWithImpl<_$Erc20TransfersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Erc20TransfersImplToJson(
      this,
    );
  }
}

abstract class _Erc20Transfers implements Erc20Transfers {
  const factory _Erc20Transfers(
          {required final String id,
          required final String from,
          required final String to,
          @JsonKey(fromJson: _amountFromJson) required final BigInt value,
          required final String contractAddress,
          required final String name,
          required final String symbol,
          @JsonKey(fromJson: decimalsFromJson) required final int decimals}) =
      _$Erc20TransfersImpl;

  factory _Erc20Transfers.fromJson(Map<String, dynamic> json) =
      _$Erc20TransfersImpl.fromJson;

  @override
  String get id;
  @override
  String get from;
  @override
  String get to;
  @override
  @JsonKey(fromJson: _amountFromJson)
  BigInt get value;
  @override
  String get contractAddress;
  @override
  String get name;
  @override
  String get symbol;
  @override
  @JsonKey(fromJson: decimalsFromJson)
  int get decimals;

  /// Create a copy of Erc20Transfers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Erc20TransfersImplCopyWith<_$Erc20TransfersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
