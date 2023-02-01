// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthDto _$$_AuthDtoFromJson(Map<String, dynamic> json) => _$_AuthDto(
      ownerAddress: json['ownerAddress'] as String,
      signature: json['signature'] as String,
      hash: json['hash'] as String,
    );

Map<String, dynamic> _$$_AuthDtoToJson(_$_AuthDto instance) =>
    <String, dynamic>{
      'ownerAddress': instance.ownerAddress,
      'signature': instance.signature,
      'hash': instance.hash,
    };
