import 'package:freezed_annotation/freezed_annotation.dart';

part 'interval_stats.freezed.dart';
part 'interval_stats.g.dart';

@freezed
class IntervalStats with _$IntervalStats {
  factory IntervalStats({
    required num timestamp,
    required double priceChange,
    required double previousPrice,
    required double currentPrice,
  }) = _IntervalStats;

  factory IntervalStats.fromJson(Map<String, dynamic> json) =>
      _$IntervalStatsFromJson(json);
}
