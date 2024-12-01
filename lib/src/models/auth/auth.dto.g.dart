// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthDtoImpl _$$AuthDtoImplFromJson(Map<String, dynamic> json) =>
    _$AuthDtoImpl(
      ownerAddress: json['ownerAddress'] as String,
      smartWalletAddress: json['smartWalletAddress'] as String?,
      signature: json['signature'] as String,
      hash: json['hash'] as String,
    );

Map<String, dynamic> _$$AuthDtoImplToJson(_$AuthDtoImpl instance) =>
    <String, dynamic>{
      'ownerAddress': instance.ownerAddress,
      if (instance.smartWalletAddress case final value?)
        'smartWalletAddress': value,
      'signature': instance.signature,
      'hash': instance.hash,
    };
