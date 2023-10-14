// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smart_wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SmartWalletImpl _$$SmartWalletImplFromJson(Map<String, dynamic> json) =>
    _$SmartWalletImpl(
      ownerAddress: json['ownerAddress'] as String,
      smartWalletAddress: json['smartWalletAddress'] as String,
      walletModules:
          WalletModules.fromJson(json['walletModules'] as Map<String, dynamic>),
      paddedVersion: json['paddedVersion'] as String,
      version: json['version'] as String,
      networks: (json['networks'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const ['fuse'],
    );

Map<String, dynamic> _$$SmartWalletImplToJson(_$SmartWalletImpl instance) =>
    <String, dynamic>{
      'ownerAddress': instance.ownerAddress,
      'smartWalletAddress': instance.smartWalletAddress,
      'walletModules': instance.walletModules.toJson(),
      'paddedVersion': instance.paddedVersion,
      'version': instance.version,
      'networks': instance.networks,
    };
