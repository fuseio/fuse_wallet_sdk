// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Native _$$NativeFromJson(Map<String, dynamic> json) => _$Native(
      symbol: json['symbol'] as String? ?? 'FUSE',
      name: json['name'] as String? ?? 'Fuse Token',
      decimals: json['decimals'] as int? ?? 18,
      address: json['address'] as String? ?? Variables.NATIVE_TOKEN_ADDRESS,
      amount: amountFromJson(json['amount'] as String?),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$NativeToJson(_$Native instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'decimals': instance.decimals,
      'address': instance.address,
      'amount': instance.amount.toString(),
      'type': instance.$type,
    };

_$LiquidityPoolToken _$$LiquidityPoolTokenFromJson(Map<String, dynamic> json) =>
    _$LiquidityPoolToken(
      symbol: json['symbol'] as String,
      decimals: json['decimals'] as int,
      name: nameFromJson(json['name'] as String),
      address: addressFromJson(json['address'] as String),
      underlyingTokens: (json['underlyingTokens'] as List<dynamic>)
          .map((e) => LpUnderlyingTokens.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LiquidityPoolTokenToJson(
        _$LiquidityPoolToken instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'decimals': instance.decimals,
      'name': instance.name,
      'address': instance.address,
      'underlyingTokens':
          instance.underlyingTokens.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

_$BridgedToken _$$BridgedTokenFromJson(Map<String, dynamic> json) =>
    _$BridgedToken(
      symbol: json['symbol'] as String,
      logoURI: json['logoURI'] as String,
      decimals: json['decimals'] as int,
      name: nameFromJson(json['name'] as String),
      address: addressFromJson(json['address'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BridgedTokenToJson(_$BridgedToken instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'logoURI': instance.logoURI,
      'decimals': instance.decimals,
      'name': instance.name,
      'address': instance.address,
      'type': instance.$type,
    };

_$MiscToken _$$MiscTokenFromJson(Map<String, dynamic> json) => _$MiscToken(
      symbol: json['symbol'] as String,
      logoURI: json['logoURI'] as String,
      decimals: json['decimals'] as int,
      name: nameFromJson(json['name'] as String),
      address: addressFromJson(json['address'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MiscTokenToJson(_$MiscToken instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'logoURI': instance.logoURI,
      'decimals': instance.decimals,
      'name': instance.name,
      'address': instance.address,
      'type': instance.$type,
    };

_$ERC20 _$$ERC20FromJson(Map<String, dynamic> json) => _$ERC20(
      symbol: json['symbol'] as String,
      name: nameFromJson(json['name'] as String),
      decimals: json['decimals'] == null
          ? 0
          : _decimalsFromJson(json['decimals'] as String?),
      address: addressFromJson(json['contractAddress'] as String),
      amount: BigInt.parse(json['balance'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ERC20ToJson(_$ERC20 instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'decimals': instance.decimals,
      'contractAddress': instance.address,
      'balance': instance.amount.toString(),
      'type': instance.$type,
    };

_$ERC721 _$$ERC721FromJson(Map<String, dynamic> json) => _$ERC721(
      symbol: json['symbol'] as String,
      name: nameFromJson(json['name'] as String),
      decimals: _decimalsFromJson(json['decimals'] as String?),
      address: addressFromJson(json['contractAddress'] as String),
      amount: BigInt.parse(json['balance'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ERC721ToJson(_$ERC721 instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'decimals': instance.decimals,
      'contractAddress': instance.address,
      'balance': instance.amount.toString(),
      'type': instance.$type,
    };
