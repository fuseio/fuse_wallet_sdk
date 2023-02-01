// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staked_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StakedToken _$$_StakedTokenFromJson(Map<String, dynamic> json) =>
    _$_StakedToken(
      tokenAddress: json['tokenAddress'] as String,
      tokenSymbol: json['tokenSymbol'] as String,
      tokenName: json['tokenName'] as String,
      tokenLogoURI: json['tokenLogoURI'] as String,
      stakedAmount: (json['stakedAmount'] as num).toDouble(),
      stakedAmountUSD: (json['stakedAmountUSD'] as num).toDouble(),
      earnedAmountUSD: (json['earnedAmountUSD'] as num).toDouble(),
    );

Map<String, dynamic> _$$_StakedTokenToJson(_$_StakedToken instance) =>
    <String, dynamic>{
      'tokenAddress': instance.tokenAddress,
      'tokenSymbol': instance.tokenSymbol,
      'tokenName': instance.tokenName,
      'tokenLogoURI': instance.tokenLogoURI,
      'stakedAmount': instance.stakedAmount,
      'stakedAmountUSD': instance.stakedAmountUSD,
      'earnedAmountUSD': instance.earnedAmountUSD,
    };

_$_StakedTokenResponse _$$_StakedTokenResponseFromJson(
        Map<String, dynamic> json) =>
    _$_StakedTokenResponse(
      totalStakedAmountUSD: (json['totalStakedAmountUSD'] as num).toDouble(),
      totalEarnedAmountUSD: (json['totalEarnedAmountUSD'] as num).toDouble(),
      stakedTokens: (json['stakedTokens'] as List<dynamic>)
          .map((e) => StakedToken.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StakedTokenResponseToJson(
        _$_StakedTokenResponse instance) =>
    <String, dynamic>{
      'totalStakedAmountUSD': instance.totalStakedAmountUSD,
      'totalEarnedAmountUSD': instance.totalEarnedAmountUSD,
      'stakedTokens': instance.stakedTokens.map((e) => e.toJson()).toList(),
    };
