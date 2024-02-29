// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'erc20_transfers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Erc20TransfersImpl _$$Erc20TransfersImplFromJson(Map<String, dynamic> json) =>
    _$Erc20TransfersImpl(
      id: json['id'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      value: _amountFromJson(json['value'] as String?),
      contractAddress: json['contractAddress'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      decimals: decimalsFromJson(json['decimals'] as String?),
    );

Map<String, dynamic> _$$Erc20TransfersImplToJson(
        _$Erc20TransfersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'to': instance.to,
      'value': instance.value.toString(),
      'contractAddress': instance.contractAddress,
      'name': instance.name,
      'symbol': instance.symbol,
      'decimals': instance.decimals,
    };
