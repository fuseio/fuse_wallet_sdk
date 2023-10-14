// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      name: json['collectionName'] as String,
      symbol: json['collectionSymbol'] as String,
      address: json['collectionAddress'] as String,
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) =>
    <String, dynamic>{
      'collectionName': instance.name,
      'collectionSymbol': instance.symbol,
      'collectionAddress': instance.address,
    };
