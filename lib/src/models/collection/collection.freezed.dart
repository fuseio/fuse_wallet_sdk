// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  return _Collection.fromJson(json);
}

/// @nodoc
mixin _$Collection {
  String get collectionName => throw _privateConstructorUsedError;
  String get collectionSymbol => throw _privateConstructorUsedError;
  String get collectionAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionCopyWith<Collection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionCopyWith<$Res> {
  factory $CollectionCopyWith(
          Collection value, $Res Function(Collection) then) =
      _$CollectionCopyWithImpl<$Res, Collection>;
  @useResult
  $Res call(
      {String collectionName,
      String collectionSymbol,
      String collectionAddress});
}

/// @nodoc
class _$CollectionCopyWithImpl<$Res, $Val extends Collection>
    implements $CollectionCopyWith<$Res> {
  _$CollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionName = null,
    Object? collectionSymbol = null,
    Object? collectionAddress = null,
  }) {
    return _then(_value.copyWith(
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      collectionSymbol: null == collectionSymbol
          ? _value.collectionSymbol
          : collectionSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      collectionAddress: null == collectionAddress
          ? _value.collectionAddress
          : collectionAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CollectionCopyWith<$Res>
    implements $CollectionCopyWith<$Res> {
  factory _$$_CollectionCopyWith(
          _$_Collection value, $Res Function(_$_Collection) then) =
      __$$_CollectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String collectionName,
      String collectionSymbol,
      String collectionAddress});
}

/// @nodoc
class __$$_CollectionCopyWithImpl<$Res>
    extends _$CollectionCopyWithImpl<$Res, _$_Collection>
    implements _$$_CollectionCopyWith<$Res> {
  __$$_CollectionCopyWithImpl(
      _$_Collection _value, $Res Function(_$_Collection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionName = null,
    Object? collectionSymbol = null,
    Object? collectionAddress = null,
  }) {
    return _then(_$_Collection(
      collectionName: null == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String,
      collectionSymbol: null == collectionSymbol
          ? _value.collectionSymbol
          : collectionSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      collectionAddress: null == collectionAddress
          ? _value.collectionAddress
          : collectionAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Collection implements _Collection {
  _$_Collection(
      {required this.collectionName,
      required this.collectionSymbol,
      required this.collectionAddress});

  factory _$_Collection.fromJson(Map<String, dynamic> json) =>
      _$$_CollectionFromJson(json);

  @override
  final String collectionName;
  @override
  final String collectionSymbol;
  @override
  final String collectionAddress;

  @override
  String toString() {
    return 'Collection(collectionName: $collectionName, collectionSymbol: $collectionSymbol, collectionAddress: $collectionAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Collection &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.collectionSymbol, collectionSymbol) ||
                other.collectionSymbol == collectionSymbol) &&
            (identical(other.collectionAddress, collectionAddress) ||
                other.collectionAddress == collectionAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, collectionName, collectionSymbol, collectionAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollectionCopyWith<_$_Collection> get copyWith =>
      __$$_CollectionCopyWithImpl<_$_Collection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectionToJson(
      this,
    );
  }
}

abstract class _Collection implements Collection {
  factory _Collection(
      {required final String collectionName,
      required final String collectionSymbol,
      required final String collectionAddress}) = _$_Collection;

  factory _Collection.fromJson(Map<String, dynamic> json) =
      _$_Collection.fromJson;

  @override
  String get collectionName;
  @override
  String get collectionSymbol;
  @override
  String get collectionAddress;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionCopyWith<_$_Collection> get copyWith =>
      throw _privateConstructorUsedError;
}
