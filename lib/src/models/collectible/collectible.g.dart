// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collectible.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Collectible _$$_CollectibleFromJson(Map<String, dynamic> json) =>
    _$_Collectible(
      id: json['id'] as String,
      name: json['name'] as String,
      imageURL: json['imageURL'] as String,
      description: json['description'] as String,
      collectionName: json['collectionName'] as String,
      collectionSymbol: json['collectionSymbol'] as String,
      collectionAddress: json['collectionAddress'] as String,
    );

Map<String, dynamic> _$$_CollectibleToJson(_$_Collectible instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageURL': instance.imageURL,
      'description': instance.description,
      'collectionName': instance.collectionName,
      'collectionSymbol': instance.collectionSymbol,
      'collectionAddress': instance.collectionAddress,
    };
