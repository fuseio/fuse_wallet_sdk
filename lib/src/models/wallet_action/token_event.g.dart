// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NativeToken _$$NativeTokenFromJson(Map<String, dynamic> json) =>
    _$NativeToken(
      symbol: json['symbol'] as String? ?? 'FUSE',
      name: json['name'] as String? ?? 'Fuse Token',
      decimals: json['decimals'] as int? ?? 18,
      address: json['address'] as String? ?? Variables.NATIVE_TOKEN_ADDRESS,
      value: amountFromJson(json['value'] as String?),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$NativeTokenToJson(_$NativeToken instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'decimals': instance.decimals,
      'address': instance.address,
      'value': instance.value.toString(),
      'type': instance.$type,
    };

_$ERC20Transfer _$$ERC20TransferFromJson(Map<String, dynamic> json) =>
    _$ERC20Transfer(
      symbol: json['symbol'] as String,
      name: nameFromJson(json['name'] as String),
      decimals: json['decimals'] as int,
      address: addressFromJson(json['address'] as String),
      value: amountFromJson(json['value'] as String?),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ERC20TransferToJson(_$ERC20Transfer instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'decimals': instance.decimals,
      'address': instance.address,
      'value': instance.value.toString(),
      'type': instance.$type,
    };

_$ERC721Transfer _$$ERC721TransferFromJson(Map<String, dynamic> json) =>
    _$ERC721Transfer(
      symbol: json['symbol'] as String,
      name: nameFromJson(json['name'] as String),
      address: addressFromJson(json['address'] as String),
      value: amountFromJson(json['value'] as String?),
      tokenId: BigInt.parse(json['tokenId'] as String),
      to: BigInt.parse(json['to'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ERC721TransferToJson(_$ERC721Transfer instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'address': instance.address,
      'value': instance.value.toString(),
      'tokenId': instance.tokenId.toString(),
      'to': instance.to.toString(),
      'type': instance.$type,
    };
