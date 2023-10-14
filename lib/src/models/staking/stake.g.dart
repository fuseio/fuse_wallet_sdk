// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stake.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StakeRequestBodyImpl _$$StakeRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$StakeRequestBodyImpl(
      accountAddress: json['accountAddress'] as String,
      tokenAmount: json['tokenAmount'] as String,
      tokenAddress: json['tokenAddress'] as String,
    );

Map<String, dynamic> _$$StakeRequestBodyImplToJson(
        _$StakeRequestBodyImpl instance) =>
    <String, dynamic>{
      'accountAddress': instance.accountAddress,
      'tokenAmount': instance.tokenAmount,
      'tokenAddress': instance.tokenAddress,
    };

_$StakeResponseBodyImpl _$$StakeResponseBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$StakeResponseBodyImpl(
      contractAddress: json['contractAddress'] as String,
      encodedABI: json['encodedABI'] as String,
    );

Map<String, dynamic> _$$StakeResponseBodyImplToJson(
        _$StakeResponseBodyImpl instance) =>
    <String, dynamic>{
      'contractAddress': instance.contractAddress,
      'encodedABI': instance.encodedABI,
    };
