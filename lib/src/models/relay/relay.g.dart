// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RelayImpl _$$RelayImplFromJson(Map<String, dynamic> json) => _$RelayImpl(
      network: json['network'] as String? ?? 'fuse',
      gasPrice: json['gasPrice'] as int? ?? 0,
      gasLimit: json['gasLimit'] as int? ?? 1000000,
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

Map<String, dynamic> _$$RelayImplToJson(_$RelayImpl instance) =>
    <String, dynamic>{
      'network': instance.network,
      'gasPrice': instance.gasPrice,
      'gasLimit': instance.gasLimit,
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
