// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unstake.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UnstakeRequestBody _$$_UnstakeRequestBodyFromJson(
        Map<String, dynamic> json) =>
    _$_UnstakeRequestBody(
      accountAddress: json['accountAddress'] as String,
      tokenAmount: json['tokenAmount'] as String,
      tokenAddress: json['tokenAddress'] as String,
    );

Map<String, dynamic> _$$_UnstakeRequestBodyToJson(
        _$_UnstakeRequestBody instance) =>
    <String, dynamic>{
      'accountAddress': instance.accountAddress,
      'tokenAmount': instance.tokenAmount,
      'tokenAddress': instance.tokenAddress,
    };

_$_UnstakeResponseBody _$$_UnstakeResponseBodyFromJson(
        Map<String, dynamic> json) =>
    _$_UnstakeResponseBody(
      contractAddress: json['contractAddress'] as String,
      encodedABI: json['encodedABI'] as String,
    );

Map<String, dynamic> _$$_UnstakeResponseBodyToJson(
        _$_UnstakeResponseBody instance) =>
    <String, dynamic>{
      'contractAddress': instance.contractAddress,
      'encodedABI': instance.encodedABI,
    };
