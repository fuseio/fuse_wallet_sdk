// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade_call_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TradeCallParametersImpl _$$TradeCallParametersImplFromJson(
        Map<String, dynamic> json) =>
    _$TradeCallParametersImpl(
      methodName: json['methodName'] as String,
      args: json['args'] as List<dynamic>,
      value: json['value'] as String,
      rawTxn: json['rawTxn'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$TradeCallParametersImplToJson(
        _$TradeCallParametersImpl instance) =>
    <String, dynamic>{
      'methodName': instance.methodName,
      'args': instance.args,
      'value': instance.value,
      'rawTxn': instance.rawTxn,
    };
