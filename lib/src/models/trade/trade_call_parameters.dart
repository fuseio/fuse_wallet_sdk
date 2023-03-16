import 'package:freezed_annotation/freezed_annotation.dart';

part 'trade_call_parameters.freezed.dart';
part 'trade_call_parameters.g.dart';

/// A class representing the parameters for a trade call, including the method name, arguments, value, and raw transaction data.
@freezed
class TradeCallParameters with _$TradeCallParameters {
  /// Constructs a new TradeCallParameters instance.
  ///
  /// Parameters:
  /// - [methodName] - The name of the method being called.
  /// - [args] - A list of arguments for the method call.
  /// - [value] - The value being sent with the trade call.
  /// - [rawTxn] - A map containing the raw transaction data.
  factory TradeCallParameters({
    required String methodName,
    required List<dynamic> args,
    required String value,
    required Map<String, dynamic> rawTxn,
  }) = _TradeCallParameters;

  /// Constructs a new TradeCallParameters instance from a JSON object.
  ///
  /// Parameters:
  /// - [json] - A map containing the JSON representation of the TradeCallParameters object.
  ///
  /// Returns a new TradeCallParameters instance populated with the data from the JSON object.
  factory TradeCallParameters.fromJson(Map<String, dynamic> json) =>
      _$TradeCallParametersFromJson(json);
}
