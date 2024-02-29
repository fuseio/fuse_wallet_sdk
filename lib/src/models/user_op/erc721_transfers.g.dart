// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'erc721_transfers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Erc721TransfersImpl _$$Erc721TransfersImplFromJson(
        Map<String, dynamic> json) =>
    _$Erc721TransfersImpl(
      id: json['id'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      contractAddress: json['contractAddress'] as String,
      tokenId: json['tokenId'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$$Erc721TransfersImplToJson(
        _$Erc721TransfersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'to': instance.to,
      'contractAddress': instance.contractAddress,
      'tokenId': instance.tokenId,
      'name': instance.name,
      'symbol': instance.symbol,
    };
