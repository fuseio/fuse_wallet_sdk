// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TradeDataImpl _$$TradeDataImplFromJson(Map<String, dynamic> json) =>
    _$TradeDataImpl(
      chainId: (json['chainId'] as num).toInt(),
      estimatedPriceImpact: json['estimatedPriceImpact'] as String,
      to: json['to'] as String,
      data: json['data'] as String,
      value: json['value'] as String,
      buyTokenAddress: json['buyTokenAddress'] as String,
      sellTokenAddress: json['sellTokenAddress'] as String,
      buyAmount: json['buyAmount'] as String,
      sellAmount: json['sellAmount'] as String,
      allowanceTarget: json['allowanceTarget'] as String,
    );

Map<String, dynamic> _$$TradeDataImplToJson(_$TradeDataImpl instance) =>
    <String, dynamic>{
      'chainId': instance.chainId,
      'estimatedPriceImpact': instance.estimatedPriceImpact,
      'to': instance.to,
      'data': instance.data,
      'value': instance.value,
      'buyTokenAddress': instance.buyTokenAddress,
      'sellTokenAddress': instance.sellTokenAddress,
      'buyAmount': instance.buyAmount,
      'sellAmount': instance.sellAmount,
      'allowanceTarget': instance.allowanceTarget,
    };
