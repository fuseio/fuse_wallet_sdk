// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_op.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserOpImpl _$$UserOpImplFromJson(Map<String, dynamic> json) => _$UserOpImpl(
      transactionHash: json['transactionHash'] as String,
      userOpHash: json['userOpHash'] as String,
      sender: json['sender'] as String,
      entryPoint: json['entryPoint'] as String,
      paymaster: json['paymaster'] as String,
      paymasterAndData: json['paymasterAndData'] as String,
      nonce: json['nonce'] as String,
      success: json['success'] as bool,
      revertReason: json['revertReason'] as String?,
      blockTime: json['blockTime'] as String,
      blockNumber: json['blockNumber'] as String,
      target: json['target'] as String,
      beneficiary: json['beneficiary'] as String,
      erc20Transfers: (json['erc20Transfers'] as List<dynamic>?)
              ?.map((e) => Erc20Transfers.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      erc721Transfers: (json['erc721Transfers'] as List<dynamic>?)
              ?.map((e) => Erc721Transfers.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserOpImplToJson(_$UserOpImpl instance) =>
    <String, dynamic>{
      'transactionHash': instance.transactionHash,
      'userOpHash': instance.userOpHash,
      'sender': instance.sender,
      'entryPoint': instance.entryPoint,
      'paymaster': instance.paymaster,
      'paymasterAndData': instance.paymasterAndData,
      'nonce': instance.nonce,
      'success': instance.success,
      'revertReason': instance.revertReason,
      'blockTime': instance.blockTime,
      'blockNumber': instance.blockNumber,
      'target': instance.target,
      'beneficiary': instance.beneficiary,
      'erc20Transfers': instance.erc20Transfers.map((e) => e.toJson()).toList(),
      'erc721Transfers':
          instance.erc721Transfers.map((e) => e.toJson()).toList(),
    };
