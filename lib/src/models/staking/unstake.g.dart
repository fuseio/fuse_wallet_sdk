// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unstake.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnstakeRequestBodyImpl _$$UnstakeRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$UnstakeRequestBodyImpl(
      accountAddress: json['accountAddress'] as String,
      tokenAmount: json['tokenAmount'] as String,
      tokenAddress: json['tokenAddress'] as String,
    );

Map<String, dynamic> _$$UnstakeRequestBodyImplToJson(
        _$UnstakeRequestBodyImpl instance) =>
    <String, dynamic>{
      'accountAddress': instance.accountAddress,
      'tokenAmount': instance.tokenAmount,
      'tokenAddress': instance.tokenAddress,
    };

_$UnstakeResponseBodyImpl _$$UnstakeResponseBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$UnstakeResponseBodyImpl(
      contractAddress: json['contractAddress'] as String,
      encodedABI: json['encodedABI'] as String,
    );

Map<String, dynamic> _$$UnstakeResponseBodyImplToJson(
        _$UnstakeResponseBodyImpl instance) =>
    <String, dynamic>{
      'contractAddress': instance.contractAddress,
      'encodedABI': instance.encodedABI,
    };
