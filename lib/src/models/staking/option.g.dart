// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StakingOptionImpl _$$StakingOptionImplFromJson(Map<String, dynamic> json) =>
    _$StakingOptionImpl(
      tokenAddress: json['tokenAddress'] as String,
      tokenSymbol: json['tokenSymbol'] as String,
      tokenName: json['tokenName'] as String,
      tokenLogoURI: json['tokenLogoURI'] as String,
      expired: json['expired'] as bool,
      unStakeTokenAddress: json['unStakeTokenAddress'] as String,
      stakingApr: (json['stakingApr'] as num).toDouble(),
      tvl: (json['tvl'] as num).toDouble(),
    );

Map<String, dynamic> _$$StakingOptionImplToJson(_$StakingOptionImpl instance) =>
    <String, dynamic>{
      'tokenAddress': instance.tokenAddress,
      'tokenSymbol': instance.tokenSymbol,
      'tokenName': instance.tokenName,
      'tokenLogoURI': instance.tokenLogoURI,
      'expired': instance.expired,
      'unStakeTokenAddress': instance.unStakeTokenAddress,
      'stakingApr': instance.stakingApr,
      'tvl': instance.tvl,
    };
