// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collectible.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Collectible _$$_CollectibleFromJson(Map<String, dynamic> json) =>
    _$_Collectible(
      description: json['description'] as String?,
      name: json['name'] as String?,
      imageURL: json['imageURL'] as String?,
      descriptorUri: json['descriptorUri'] as String,
      created: _savedAtFromJson(json['created'] as String),
      tokenId: json['tokenId'] as String,
      collection:
          Collection.fromJson(json['collection'] as Map<String, dynamic>),
      owner: Address.fromJson(json['owner'] as Map<String, dynamic>),
      creator: Address.fromJson(json['creator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CollectibleToJson(_$_Collectible instance) =>
    <String, dynamic>{
      'description': instance.description,
      'name': instance.name,
      'imageURL': instance.imageURL,
      'descriptorUri': instance.descriptorUri,
      'created': _savedAtToJson(instance.created),
      'tokenId': instance.tokenId,
      'collection': instance.collection.toJson(),
      'owner': instance.owner.toJson(),
      'creator': instance.creator.toJson(),
    };
