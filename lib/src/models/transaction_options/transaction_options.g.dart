// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TxOptions _$$_TxOptionsFromJson(Map<String, dynamic> json) => _$_TxOptions(
      feePerGas: json['feePerGas'] as String,
      feeIncrementPercentage: json['feeIncrementPercentage'] as int,
      withRetry: json['withRetry'] as bool,
    );

Map<String, dynamic> _$$_TxOptionsToJson(_$_TxOptions instance) =>
    <String, dynamic>{
      'feePerGas': instance.feePerGas,
      'feeIncrementPercentage': instance.feeIncrementPercentage,
      'withRetry': instance.withRetry,
    };
