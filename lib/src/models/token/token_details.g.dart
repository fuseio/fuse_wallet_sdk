// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NativeImpl _$$NativeImplFromJson(Map<String, dynamic> json) => _$NativeImpl(
      symbol: json['symbol'] as String? ?? 'FUSE',
      name: json['name'] as String? ?? 'Fuse Token',
      decimals: json['decimals'] as int? ?? 18,
      address: json['address'] as String? ?? Variables.NATIVE_TOKEN_ADDRESS,
      amount: amountFromJson(json['amount'] as String?),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$NativeImplToJson(_$NativeImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'decimals': instance.decimals,
      'address': instance.address,
      'amount': instance.amount.toString(),
      'type': instance.$type,
    };

_$LiquidityPoolTokenImpl _$$LiquidityPoolTokenImplFromJson(
        Map<String, dynamic> json) =>
    _$LiquidityPoolTokenImpl(
      symbol: json['symbol'] as String,
      decimals: json['decimals'] as int,
      name: nameFromJson(json['name'] as String),
      address: addressFromJson(json['address'] as String),
      underlyingTokens: (json['underlyingTokens'] as List<dynamic>)
          .map((e) => LpUnderlyingTokens.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LiquidityPoolTokenImplToJson(
        _$LiquidityPoolTokenImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'decimals': instance.decimals,
      'name': instance.name,
      'address': instance.address,
      'underlyingTokens':
          instance.underlyingTokens.map((e) => e.toJson()).toList(),
      'type': instance.$type,
    };

_$BridgedTokenImpl _$$BridgedTokenImplFromJson(Map<String, dynamic> json) =>
    _$BridgedTokenImpl(
      symbol: json['symbol'] as String,
      logoURI: json['logoURI'] as String,
      decimals: json['decimals'] as int,
      name: nameFromJson(json['name'] as String),
      address: addressFromJson(json['address'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$BridgedTokenImplToJson(_$BridgedTokenImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'logoURI': instance.logoURI,
      'decimals': instance.decimals,
      'name': instance.name,
      'address': instance.address,
      'type': instance.$type,
    };

_$MiscTokenImpl _$$MiscTokenImplFromJson(Map<String, dynamic> json) =>
    _$MiscTokenImpl(
      symbol: json['symbol'] as String,
      logoURI: json['logoURI'] as String,
      decimals: json['decimals'] as int,
      name: nameFromJson(json['name'] as String),
      address: addressFromJson(json['address'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MiscTokenImplToJson(_$MiscTokenImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'logoURI': instance.logoURI,
      'decimals': instance.decimals,
      'name': instance.name,
      'address': instance.address,
      'type': instance.$type,
    };

_$ERC20Impl _$$ERC20ImplFromJson(Map<String, dynamic> json) => _$ERC20Impl(
      symbol: json['symbol'] as String,
      name: nameFromJson(json['name'] as String),
      decimals: json['decimals'] == null
          ? 0
          : _decimalsFromJson(json['decimals'] as String?),
      address: addressFromJson(json['contractAddress'] as String),
      amount: BigInt.parse(json['balance'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ERC20ImplToJson(_$ERC20Impl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'decimals': instance.decimals,
      'contractAddress': instance.address,
      'balance': instance.amount.toString(),
      'type': instance.$type,
    };

_$ERC721Impl _$$ERC721ImplFromJson(Map<String, dynamic> json) => _$ERC721Impl(
      symbol: json['symbol'] as String,
      name: nameFromJson(json['name'] as String),
      decimals: _decimalsFromJson(json['decimals'] as String?),
      address: addressFromJson(json['contractAddress'] as String),
      amount: BigInt.parse(json['balance'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ERC721ImplToJson(_$ERC721Impl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'decimals': instance.decimals,
      'contractAddress': instance.address,
      'balance': instance.amount.toString(),
      'type': instance.$type,
    };
