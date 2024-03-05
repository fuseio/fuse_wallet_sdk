// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TradeRequestImpl _$$TradeRequestImplFromJson(Map<String, dynamic> json) =>
    _$TradeRequestImpl(
      inputToken: json['inputToken'] as String,
      outputToken: json['outputToken'] as String,
      inputAmount: BigInt.parse(json['inputAmount'] as String),
      exactIn: json['exactIn'] as bool,
    );

Map<String, dynamic> _$$TradeRequestImplToJson(_$TradeRequestImpl instance) =>
    <String, dynamic>{
      'inputToken': instance.inputToken,
      'outputToken': instance.outputToken,
      'inputAmount': instance.inputAmount.toString(),
      'exactIn': instance.exactIn,
    };
