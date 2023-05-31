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
  String? get description => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get imageURL => throw _privateConstructorUsedError;
  String get descriptorUri => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  String get createdAt => throw _privateConstructorUsedError;
  String get tokenId => throw _privateConstructorUsedError;
  Collection get collection => throw _privateConstructorUsedError;
  Address get owner => throw _privateConstructorUsedError;
  Address get creator => throw _privateConstructorUsedError;

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
      {String? description,
      String? name,
      String? imageURL,
      String descriptorUri,
      @JsonKey(name: 'created') String createdAt,
      String tokenId,
      Collection collection,
      Address owner,
      Address creator});

  $CollectionCopyWith<$Res> get collection;
  $AddressCopyWith<$Res> get owner;
  $AddressCopyWith<$Res> get creator;
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
    Object? description = freezed,
    Object? name = freezed,
    Object? imageURL = freezed,
    Object? descriptorUri = null,
    Object? createdAt = null,
    Object? tokenId = null,
    Object? collection = null,
    Object? owner = null,
    Object? creator = null,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptorUri: null == descriptorUri
          ? _value.descriptorUri
          : descriptorUri // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Address,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Address,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CollectionCopyWith<$Res> get collection {
    return $CollectionCopyWith<$Res>(_value.collection, (value) {
      return _then(_value.copyWith(collection: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get owner {
    return $AddressCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get creator {
    return $AddressCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
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
      {String? description,
      String? name,
      String? imageURL,
      String descriptorUri,
      @JsonKey(name: 'created') String createdAt,
      String tokenId,
      Collection collection,
      Address owner,
      Address creator});

  @override
  $CollectionCopyWith<$Res> get collection;
  @override
  $AddressCopyWith<$Res> get owner;
  @override
  $AddressCopyWith<$Res> get creator;
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
    Object? description = freezed,
    Object? name = freezed,
    Object? imageURL = freezed,
    Object? descriptorUri = null,
    Object? createdAt = null,
    Object? tokenId = null,
    Object? collection = null,
    Object? owner = null,
    Object? creator = null,
  }) {
    return _then(_$_Collectible(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageURL: freezed == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptorUri: null == descriptorUri
          ? _value.descriptorUri
          : descriptorUri // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Address,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Collectible extends _Collectible {
  _$_Collectible(
      {this.description,
      this.name,
      this.imageURL,
      required this.descriptorUri,
      @JsonKey(name: 'created') required this.createdAt,
      required this.tokenId,
      required this.collection,
      required this.owner,
      required this.creator})
      : super._();

  factory _$_Collectible.fromJson(Map<String, dynamic> json) =>
      _$$_CollectibleFromJson(json);

  @override
  final String? description;
  @override
  final String? name;
  @override
  final String? imageURL;
  @override
  final String descriptorUri;
  @override
  @JsonKey(name: 'created')
  final String createdAt;
  @override
  final String tokenId;
  @override
  final Collection collection;
  @override
  final Address owner;
  @override
  final Address creator;

  @override
  String toString() {
    return 'Collectible(description: $description, name: $name, imageURL: $imageURL, descriptorUri: $descriptorUri, createdAt: $createdAt, tokenId: $tokenId, collection: $collection, owner: $owner, creator: $creator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Collectible &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.descriptorUri, descriptorUri) ||
                other.descriptorUri == descriptorUri) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.creator, creator) || other.creator == creator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, name, imageURL,
      descriptorUri, createdAt, tokenId, collection, owner, creator);

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

abstract class _Collectible extends Collectible {
  factory _Collectible(
      {final String? description,
      final String? name,
      final String? imageURL,
      required final String descriptorUri,
      @JsonKey(name: 'created') required final String createdAt,
      required final String tokenId,
      required final Collection collection,
      required final Address owner,
      required final Address creator}) = _$_Collectible;
  _Collectible._() : super._();

  factory _Collectible.fromJson(Map<String, dynamic> json) =
      _$_Collectible.fromJson;

  @override
  String? get description;
  @override
  String? get name;
  @override
  String? get imageURL;
  @override
  String get descriptorUri;
  @override
  @JsonKey(name: 'created')
  String get createdAt;
  @override
  String get tokenId;
  @override
  Collection get collection;
  @override
  Address get owner;
  @override
  Address get creator;
  @override
  @JsonKey(ignore: true)
  _$$_CollectibleCopyWith<_$_Collectible> get copyWith =>
      throw _privateConstructorUsedError;
}
