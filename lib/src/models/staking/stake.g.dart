// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stake.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StakeRequestBody _$$_StakeRequestBodyFromJson(Map<String, dynamic> json) =>
    _$_StakeRequestBody(
      accountAddress: json['accountAddress'] as String,
      tokenAmount: json['tokenAmount'] as String,
      tokenAddress: json['tokenAddress'] as String,
    );

Map<String, dynamic> _$$_StakeRequestBodyToJson(_$_StakeRequestBody instance) =>
    <String, dynamic>{
      'accountAddress': instance.accountAddress,
      'tokenAmount': instance.tokenAmount,
      'tokenAddress': instance.tokenAddress,
    };

_$_StakeResponseBody _$$_StakeResponseBodyFromJson(Map<String, dynamic> json) =>
    _$_StakeResponseBody(
      contractAddress: json['contractAddress'] as String,
      encodedABI: json['encodedABI'] as String,
    );

Map<String, dynamic> _$$_StakeResponseBodyToJson(
        _$_StakeResponseBody instance) =>
    <String, dynamic>{
      'contractAddress': instance.contractAddress,
      'encodedABI': instance.encodedABI,
    };
