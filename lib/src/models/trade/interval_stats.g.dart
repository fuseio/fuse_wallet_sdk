// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interval_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IntervalStatsImpl _$$IntervalStatsImplFromJson(Map<String, dynamic> json) =>
    _$IntervalStatsImpl(
      timestamp: json['timestamp'] as num,
      priceChange: (json['priceChange'] as num).toDouble(),
      previousPrice: (json['previousPrice'] as num).toDouble(),
      currentPrice: (json['currentPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$$IntervalStatsImplToJson(_$IntervalStatsImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'priceChange': instance.priceChange,
      'previousPrice': instance.previousPrice,
      'currentPrice': instance.currentPrice,
    };
