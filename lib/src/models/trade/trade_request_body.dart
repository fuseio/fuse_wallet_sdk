import 'package:freezed_annotation/freezed_annotation.dart';

part 'trade_request_body.freezed.dart';
part 'trade_request_body.g.dart';

/// A class representing the body of a trade request, which includes the input currency,
/// output currency, input amount, and recipient address.
@freezed
class TradeRequestBody with _$TradeRequestBody {
  /// Constructs a new TradeRequestBody instance.
  ///
  /// Parameters:
  /// - [currencyIn] – The input currency for the trade (default: '').
  /// - [currencyOut] – The output currency for the trade (default: '').
  /// - [amountIn] – The amount of input currency to be traded (default: '').
  /// - [recipient] – The recipient address to receive the output currency (default: '').
  factory TradeRequestBody({
    @Default('') String currencyIn,
    @Default('') String currencyOut,
    @Default('') String amountIn,
    @Default('') String recipient,
  }) = _TradeRequestBody;

  /// Creates a new TradeRequestBody instance from the provided JSON map.
  ///
  /// Parameters:
  /// - [json] – A map containing the JSON representation of a TradeRequestBody.
  ///
  /// Returns a TradeRequestBody instance.
  factory TradeRequestBody.fromJson(Map<String, dynamic> json) =>
      _$TradeRequestBodyFromJson(json);
}
