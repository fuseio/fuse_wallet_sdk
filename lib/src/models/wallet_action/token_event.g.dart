// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NativeTokenImpl _$$NativeTokenImplFromJson(Map<String, dynamic> json) =>
    _$NativeTokenImpl(
      symbol: json['symbol'] as String? ?? 'FUSE',
      name: json['name'] as String? ?? 'Fuse Token',
      decimals: json['decimals'] as int? ?? 18,
      address: json['address'] as String? ?? Variables.NATIVE_TOKEN_ADDRESS,
      value: amountFromJson(json['value'] as String?),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$NativeTokenImplToJson(_$NativeTokenImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'decimals': instance.decimals,
      'address': instance.address,
      'value': instance.value.toString(),
      'type': instance.$type,
    };

_$ERC20TransferImpl _$$ERC20TransferImplFromJson(Map<String, dynamic> json) =>
    _$ERC20TransferImpl(
      symbol: json['symbol'] as String,
      name: nameFromJson(json['name'] as String),
      decimals: json['decimals'] as int,
      address: addressFromJson(json['address'] as String),
      value: amountFromJson(json['value'] as String?),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ERC20TransferImplToJson(_$ERC20TransferImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'decimals': instance.decimals,
      'address': instance.address,
      'value': instance.value.toString(),
      'type': instance.$type,
    };

_$ERC721TransferImpl _$$ERC721TransferImplFromJson(Map<String, dynamic> json) =>
    _$ERC721TransferImpl(
      symbol: json['symbol'] as String,
      name: nameFromJson(json['name'] as String),
      address: addressFromJson(json['address'] as String),
      value: amountFromJson(json['value'] as String?),
      tokenId: json['tokenId'] == null
          ? null
          : BigInt.parse(json['tokenId'] as String),
      to: BigInt.parse(json['to'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ERC721TransferImplToJson(
        _$ERC721TransferImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'address': instance.address,
      'value': instance.value.toString(),
      'tokenId': instance.tokenId?.toString(),
      'to': instance.to.toString(),
      'type': instance.$type,
    };
