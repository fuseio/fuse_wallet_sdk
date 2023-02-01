// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade_call_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TradeCallParameters _$$_TradeCallParametersFromJson(
        Map<String, dynamic> json) =>
    _$_TradeCallParameters(
      methodName: json['methodName'] as String,
      args: json['args'] as List<dynamic>,
      value: json['value'] as String,
      rawTxn: json['rawTxn'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_TradeCallParametersToJson(
        _$_TradeCallParameters instance) =>
    <String, dynamic>{
      'methodName': instance.methodName,
      'args': instance.args,
      'value': instance.value,
      'rawTxn': instance.rawTxn,
    };
