// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TxOptionsImpl _$$TxOptionsImplFromJson(Map<String, dynamic> json) =>
    _$TxOptionsImpl(
      feeIncrementPercentage:
          (json['feeIncrementPercentage'] as num?)?.toInt() ?? 10,
      useNonceSequence: json['useNonceSequence'] as bool? ?? false,
      customNonceKey: json['customNonceKey'] == null
          ? null
          : BigInt.parse(json['customNonceKey'] as String),
      withRetry: json['withRetry'] as bool,
    );

Map<String, dynamic> _$$TxOptionsImplToJson(_$TxOptionsImpl instance) =>
    <String, dynamic>{
      'feeIncrementPercentage': instance.feeIncrementPercentage,
      'useNonceSequence': instance.useNonceSequence,
      'customNonceKey': instance.customNonceKey?.toString(),
      'withRetry': instance.withRetry,
    };
