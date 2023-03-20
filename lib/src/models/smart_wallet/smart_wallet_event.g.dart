// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smart_wallet_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SmartWalletEvent _$$_SmartWalletEventFromJson(Map<String, dynamic> json) =>
    _$_SmartWalletEvent(
      name: json['eventName'] as String,
      data: json['eventData'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_SmartWalletEventToJson(_$_SmartWalletEvent instance) =>
    <String, dynamic>{
      'eventName': instance.name,
      'eventData': instance.data,
    };
