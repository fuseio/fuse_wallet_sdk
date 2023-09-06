import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_options.freezed.dart';
part 'transaction_options.g.dart';

/// A class representing transaction options.
@freezed
class TxOptions with _$TxOptions {
  /// Constructs a new TxOptions instance.
  ///
  /// Parameters:
  /// - [feePerGas] – The gas to set for `maxFeePerGas` & `maxPriorityFeePerGas`.
  /// - [feeIncrementPercentage] –.
  /// - [withRetry] – Should retry on fee too low.
  factory TxOptions({
    required String feePerGas,
    required int feeIncrementPercentage,
    required bool withRetry,
  }) = _TxOptions;

  /// Creates a new TxOptions instance from a JSON object.
  ///
  /// Parameter:
  /// - [json] – A map representing the JSON object.
  ///
  /// Returns a new TxOptions instance with the data from the JSON object.
  factory TxOptions.fromJson(Map<String, dynamic> json) =>
      _$TxOptionsFromJson(json);
}
