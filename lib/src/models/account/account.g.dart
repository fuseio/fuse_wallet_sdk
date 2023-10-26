// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      id: json['id'] as String,
      address: json['address'] as String,
      collectibles:
          const CollectibleConverter().fromJson(json['collectibles'] as List),
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'collectibles':
          const CollectibleConverter().toJson(instance.collectibles),
    };
