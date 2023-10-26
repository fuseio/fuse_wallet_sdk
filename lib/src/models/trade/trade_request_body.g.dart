// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TradeRequestBodyImpl _$$TradeRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$TradeRequestBodyImpl(
      currencyIn: json['currencyIn'] as String? ?? '',
      currencyOut: json['currencyOut'] as String? ?? '',
      amountIn: json['amountIn'] as String? ?? '',
      recipient: json['recipient'] as String? ?? '',
    );

Map<String, dynamic> _$$TradeRequestBodyImplToJson(
        _$TradeRequestBodyImpl instance) =>
    <String, dynamic>{
      'currencyIn': instance.currencyIn,
      'currencyOut': instance.currencyOut,
      'amountIn': instance.amountIn,
      'recipient': instance.recipient,
    };
