import 'package:freezed_annotation/freezed_annotation.dart';

part 'interval_stats.freezed.dart';
part 'interval_stats.g.dart';

/// A class representing interval-based statistics for a financial instrument.
@freezed
class IntervalStats with _$IntervalStats {
  /// Constructs a new IntervalStats instance.
  ///
  /// Parameters:
  /// - [timestamp] – The timestamp for the interval in milliseconds.
  /// - [priceChange] – The price change of the financial instrument during the interval.
  /// - [previousPrice] – The price of the financial instrument at the beginning of the interval.
  /// - [currentPrice] – The price of the financial instrument at the end of the interval.
  factory IntervalStats({
    required num timestamp,
    required double priceChange,
    required double previousPrice,
    required double currentPrice,
  }) = _IntervalStats;

  /// Creates a new IntervalStats instance from a JSON object.
  ///
  /// Parameter:
  /// - [json] – A map representing the JSON object.
  ///
  /// Returns a new IntervalStats instance with the data from the JSON object.
  factory IntervalStats.fromJson(Map<String, dynamic> json) =>
      _$IntervalStatsFromJson(json);
}
