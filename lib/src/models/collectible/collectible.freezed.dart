// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collectible.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Collectible _$CollectibleFromJson(Map<String, dynamic> json) {
  return _Collectible.fromJson(json);
}

/// @nodoc
mixin _$Collectible {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get collectionName => throw _privateConstructorUsedError;
  String get collectionSymbol => throw _privateConstructorUsedError;
  String get collectionAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectibleCopyWith<Collectible> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectibleCopyWith<$Res> {
  factory $CollectibleCopyWith(
          Collectible value, $Res Function(Collectible) then) =
      _$CollectibleCopyWithImpl<$Res, Collectible>;
  @useResult
  $Res call(
      {String id,
      String name,
      String imageURL,
      String description,
      String collectionName,
      String collectionSymbol,
      String collectionAddress});
}

/// @nodoc
class _$CollectibleCopyWithImpl<$Res, $Val extends Collectible>
    implements $CollectibleCopyWith<$Res> {
  _$CollectibleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageURL = null,
    Object? description = null,
    Object? collectionName = null,
    Object? collectionSymbol = null,
    Object? collectionAddress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_CollectibleCopyWith<$Res>
    implements $CollectibleCopyWith<$Res> {
  factory _$$_CollectibleCopyWith(
          _$_Collectible value, $Res Function(_$_Collectible) then) =
      __$$_CollectibleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String imageURL,
      String description,
      String collectionName,
      String collectionSymbol,
      String collectionAddress});
}

/// @nodoc
class __$$_CollectibleCopyWithImpl<$Res>
    extends _$CollectibleCopyWithImpl<$Res, _$_Collectible>
    implements _$$_CollectibleCopyWith<$Res> {
  __$$_CollectibleCopyWithImpl(
      _$_Collectible _value, $Res Function(_$_Collectible) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageURL = null,
    Object? description = null,
    Object? collectionName = null,
    Object? collectionSymbol = null,
    Object? collectionAddress = null,
  }) {
    return _then(_$_Collectible(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_Collectible implements _Collectible {
  _$_Collectible(
      {required this.id,
      required this.name,
      required this.imageURL,
      required this.description,
      required this.collectionName,
      required this.collectionSymbol,
      required this.collectionAddress});

  factory _$_Collectible.fromJson(Map<String, dynamic> json) =>
      _$$_CollectibleFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageURL;
  @override
  final String description;
  @override
  final String collectionName;
  @override
  final String collectionSymbol;
  @override
  final String collectionAddress;

  @override
  String toString() {
    return 'Collectible(id: $id, name: $name, imageURL: $imageURL, description: $description, collectionName: $collectionName, collectionSymbol: $collectionSymbol, collectionAddress: $collectionAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Collectible &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.collectionSymbol, collectionSymbol) ||
                other.collectionSymbol == collectionSymbol) &&
            (identical(other.collectionAddress, collectionAddress) ||
                other.collectionAddress == collectionAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageURL, description,
      collectionName, collectionSymbol, collectionAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollectibleCopyWith<_$_Collectible> get copyWith =>
      __$$_CollectibleCopyWithImpl<_$_Collectible>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectibleToJson(
      this,
    );
  }
}

abstract class _Collectible implements Collectible {
  factory _Collectible(
      {required final String id,
      required final String name,
      required final String imageURL,
      required final String description,
      required final String collectionName,
      required final String collectionSymbol,
      required final String collectionAddress}) = _$_Collectible;

  factory _Collectible.fromJson(Map<String, dynamic> json) =
      _$_Collectible.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageURL;
  @override
  String get description;
  @override
  String get collectionName;
  @override
  String get collectionSymbol;
  @override
  String get collectionAddress;
  @override
  @JsonKey(ignore: true)
  _$$_CollectibleCopyWith<_$_Collectible> get copyWith =>
      throw _privateConstructorUsedError;
}
