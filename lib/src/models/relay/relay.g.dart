// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Relay _$$_RelayFromJson(Map<String, dynamic> json) => _$_Relay(
      network: json['network'] as String? ?? 'fuse',
      gasPrice: json['gasPrice'] as int? ?? 0,
      gasLimit: json['gasLimit'] as int? ?? 700000,
      relayBody: json['relayBody'] as Map<String, dynamic>?,
      txMetadata: json['txMetadata'] as Map<String, dynamic>?,
      transactionBody:
          json['transactionBody'] as Map<String, dynamic>? ?? const {},
      walletAddress: json['walletAddress'] as String,
      walletModuleAddress: json['walletModuleAddress'] as String,
      data: json['data'] as String,
      nonce: json['nonce'] as String,
      methodName: json['methodName'] as String,
      signature: json['signature'] as String,
      walletModule: json['walletModule'] as String,
      externalId: json['externalId'] as String?,
    );

Map<String, dynamic> _$$_RelayToJson(_$_Relay instance) => <String, dynamic>{
      'network': instance.network,
      'gasPrice': instance.gasPrice,
      'gasLimit': instance.gasLimit,
      'relayBody': instance.relayBody,
      'txMetadata': instance.txMetadata,
      'transactionBody': instance.transactionBody,
      'walletAddress': instance.walletAddress,
      'walletModuleAddress': instance.walletModuleAddress,
      'data': instance.data,
      'nonce': instance.nonce,
      'methodName': instance.methodName,
      'signature': instance.signature,
      'walletModule': instance.walletModule,
      'externalId': instance.externalId,
    };
