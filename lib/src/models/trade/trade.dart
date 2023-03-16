import 'package:freezed_annotation/freezed_annotation.dart';

part 'trade.freezed.dart';
part 'trade.g.dart';

/// A Trade class representing a trade in a decentralized exchange.
///
/// This class contains information about the input and output amounts, the route,
/// input and output tokens, execution price, next mid price, and price impact.
@freezed
class Trade with _$Trade {
  /// Creates a new Trade instance.
  ///
  /// Parameters:
  /// - [inputAmount] – The amount of the input token.
  /// - [outputAmount] – The amount of the output token.
  /// - [route] – A list of strings representing the route of the trade.
  /// - [inputToken] – The input token of the trade.
  /// - [outputToken] – The output token of the trade.
  /// - [executionPrice] – The execution price of the trade.
  /// - [nextMidPrice] – The next mid price of the trade.
  /// - [priceImpact] – The price impact of the trade.
  factory Trade({
    required String inputAmount,
    required String outputAmount,
    required List<String> route,
    required String inputToken,
    required String outputToken,
    required String executionPrice,
    required String nextMidPrice,
    required String priceImpact,
  }) = _Trade;

  /// Creates a Trade instance from a JSON object.
  ///
  /// Parameter:
  /// - [json] – A map containing the JSON representation of the Trade object.
  factory Trade.fromJson(Map<String, dynamic> json) => _$TradeFromJson(json);
}
