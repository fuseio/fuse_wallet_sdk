// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_upgrade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletUpgradeImpl _$$WalletUpgradeImplFromJson(Map<String, dynamic> json) =>
    _$WalletUpgradeImpl(
      version: json['version'] as String?,
      contractAddress: json['contractAddress'] as String,
      paddedVersion: json['paddedVersion'] as String?,
      disabledModules: Map<String, String>.from(json['disabledModules'] as Map),
      enabledModules: Map<String, String>.from(json['enabledModules'] as Map),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$WalletUpgradeImplToJson(_$WalletUpgradeImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'contractAddress': instance.contractAddress,
      'paddedVersion': instance.paddedVersion,
      'disabledModules': instance.disabledModules,
      'enabledModules': instance.enabledModules,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_id': instance.id,
    };
