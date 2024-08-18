// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'erc721_transfers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Erc721Transfers _$Erc721TransfersFromJson(Map<String, dynamic> json) {
  return _Erc721Transfers.fromJson(json);
}

/// @nodoc
mixin _$Erc721Transfers {
  String get id => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get contractAddress => throw _privateConstructorUsedError;
  String get tokenId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;

  /// Serializes this Erc721Transfers to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Erc721Transfers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Erc721TransfersCopyWith<Erc721Transfers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Erc721TransfersCopyWith<$Res> {
  factory $Erc721TransfersCopyWith(
          Erc721Transfers value, $Res Function(Erc721Transfers) then) =
      _$Erc721TransfersCopyWithImpl<$Res, Erc721Transfers>;
  @useResult
  $Res call(
      {String id,
      String from,
      String to,
      String contractAddress,
      String tokenId,
      String name,
      String symbol});
}

/// @nodoc
class _$Erc721TransfersCopyWithImpl<$Res, $Val extends Erc721Transfers>
    implements $Erc721TransfersCopyWith<$Res> {
  _$Erc721TransfersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Erc721Transfers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? to = null,
    Object? contractAddress = null,
    Object? tokenId = null,
    Object? name = null,
    Object? symbol = null,
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
      contractAddress: null == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String,
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Erc721TransfersImplCopyWith<$Res>
    implements $Erc721TransfersCopyWith<$Res> {
  factory _$$Erc721TransfersImplCopyWith(_$Erc721TransfersImpl value,
          $Res Function(_$Erc721TransfersImpl) then) =
      __$$Erc721TransfersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String from,
      String to,
      String contractAddress,
      String tokenId,
      String name,
      String symbol});
}

/// @nodoc
class __$$Erc721TransfersImplCopyWithImpl<$Res>
    extends _$Erc721TransfersCopyWithImpl<$Res, _$Erc721TransfersImpl>
    implements _$$Erc721TransfersImplCopyWith<$Res> {
  __$$Erc721TransfersImplCopyWithImpl(
      _$Erc721TransfersImpl _value, $Res Function(_$Erc721TransfersImpl) _then)
      : super(_value, _then);

  /// Create a copy of Erc721Transfers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? to = null,
    Object? contractAddress = null,
    Object? tokenId = null,
    Object? name = null,
    Object? symbol = null,
  }) {
    return _then(_$Erc721TransfersImpl(
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
      contractAddress: null == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String,
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Erc721TransfersImpl implements _Erc721Transfers {
  const _$Erc721TransfersImpl(
      {required this.id,
      required this.from,
      required this.to,
      required this.contractAddress,
      required this.tokenId,
      required this.name,
      required this.symbol});

  factory _$Erc721TransfersImpl.fromJson(Map<String, dynamic> json) =>
      _$$Erc721TransfersImplFromJson(json);

  @override
  final String id;
  @override
  final String from;
  @override
  final String to;
  @override
  final String contractAddress;
  @override
  final String tokenId;
  @override
  final String name;
  @override
  final String symbol;

  @override
  String toString() {
    return 'Erc721Transfers(id: $id, from: $from, to: $to, contractAddress: $contractAddress, tokenId: $tokenId, name: $name, symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Erc721TransfersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.contractAddress, contractAddress) ||
                other.contractAddress == contractAddress) &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, from, to, contractAddress, tokenId, name, symbol);

  /// Create a copy of Erc721Transfers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Erc721TransfersImplCopyWith<_$Erc721TransfersImpl> get copyWith =>
      __$$Erc721TransfersImplCopyWithImpl<_$Erc721TransfersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Erc721TransfersImplToJson(
      this,
    );
  }
}

abstract class _Erc721Transfers implements Erc721Transfers {
  const factory _Erc721Transfers(
      {required final String id,
      required final String from,
      required final String to,
      required final String contractAddress,
      required final String tokenId,
      required final String name,
      required final String symbol}) = _$Erc721TransfersImpl;

  factory _Erc721Transfers.fromJson(Map<String, dynamic> json) =
      _$Erc721TransfersImpl.fromJson;

  @override
  String get id;
  @override
  String get from;
  @override
  String get to;
  @override
  String get contractAddress;
  @override
  String get tokenId;
  @override
  String get name;
  @override
  String get symbol;

  /// Create a copy of Erc721Transfers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Erc721TransfersImplCopyWith<_$Erc721TransfersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
