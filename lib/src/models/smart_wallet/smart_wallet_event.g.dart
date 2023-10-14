// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smart_wallet_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SmartWalletEventImpl _$$SmartWalletEventImplFromJson(
        Map<String, dynamic> json) =>
    _$SmartWalletEventImpl(
      name: json['eventName'] as String,
      data: json['eventData'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$SmartWalletEventImplToJson(
        _$SmartWalletEventImpl instance) =>
    <String, dynamic>{
      'eventName': instance.name,
      'eventData': instance.data,
    };
