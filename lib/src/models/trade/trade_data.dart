import 'package:freezed_annotation/freezed_annotation.dart';

part 'trade_data.freezed.dart';
part 'trade_data.g.dart';

/// Represents the data associated with a trade on a blockchain.
///
/// This class encapsulates all necessary details needed to execute a trade, including
/// the blockchain chain ID, the impact of the trade on the price, the addresses involved,
/// and the amounts to be bought or sold.
@freezed
class TradeData with _$TradeData {
  /// Constructs a [TradeData] instance with detailed information about a trade.
  ///
  /// Includes the blockchain [chainId] where the trade will occur, the [estimatedPriceImpact]
  /// which indicates the potential change in price due to the trade, [to] the recipient address,
  /// [data] the payload data of the trade transaction, [value] the amount of native blockchain
  /// currency (if any) to be sent with the transaction. It also requires the addresses of the
  /// buy and sell tokens, the amounts to be bought and sold, and the [allowanceTarget],
  /// which is the address authorized to spend the tokens.
  const factory TradeData({
    required int chainId,
    required String estimatedPriceImpact,
    required String to,
    required String data,
    required String value,
    required String buyTokenAddress,
    required String sellTokenAddress,
    required String buyAmount,
    required String sellAmount,
    required String allowanceTarget,
  }) = _TradeData;

  /// Creates a new TradeData instance from the provided JSON map.
  ///
  /// Parameters:
  /// - [json] – A map containing the JSON representation of a TradeData.
  ///
  /// Returns a TradeData instance.
  factory TradeData.fromJson(Map<String, Object?> json) =>
      _$TradeDataFromJson(json);
}
