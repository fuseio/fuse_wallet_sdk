// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      id: json['id'] as String,
      address: json['address'] as String,
      collectibles:
          const CollectibleConverter().fromJson(json['collectibles'] as List),
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'collectibles':
          const CollectibleConverter().toJson(instance.collectibles),
    };
