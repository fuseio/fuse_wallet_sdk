// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lp_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LpUnderlyingTokensImpl _$$LpUnderlyingTokensImplFromJson(
        Map<String, dynamic> json) =>
    _$LpUnderlyingTokensImpl(
      symbol: json['symbol'] as String,
      name: nameFromJson(json['name'] as String),
      address: addressFromJson(json['address'] as String),
    );

Map<String, dynamic> _$$LpUnderlyingTokensImplToJson(
        _$LpUnderlyingTokensImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'address': instance.address,
    };
