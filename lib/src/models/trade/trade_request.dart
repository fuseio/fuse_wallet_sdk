import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuse_wallet_sdk/fuse_wallet_sdk.dart';

part 'trade_request.freezed.dart';
part 'trade_request.g.dart';

/// Represents the body of a trade request.
///
/// This class includes necessary details such as the input and output currencies,
/// and the amount to be traded. It supports operations for both exact input and
/// exact output trading scenarios.
@freezed
class TradeRequest with _$TradeRequest {
  const TradeRequest._();

  /// Constructs a [TradeRequest] with the required parameters.
  ///
  /// [inputToken] and [outputToken] are the addresses of the input and output tokens
  /// respectively, [inputAmount] specifies the amount of the input token to be traded,
  /// and [exactIn] determines the type of trade (exact input or exact output).
  const factory TradeRequest({
    required String inputToken,
    required String outputToken,
    required BigInt inputAmount,
    required bool exactIn,
  }) = _TradeRequest;

  /// Generates a map of parameters for making API requests based on the trade details.
  ///
  /// Depending on the [exactIn] flag, it sets up the parameters differently for
  /// exact input or exact output trades. For exact input trades, the sell amount is specified,
  /// and for exact output trades, the buy amount is specified.
  Map<String, dynamic> getParams() {
    return exactIn
        ? {
            'sellToken': getToken(inputToken),
            'buyToken': getToken(outputToken),
            'sellAmount': inputAmount.toString(),
          }
        : {
            'buyToken': getToken(outputToken),
            'sellToken': getToken(inputToken),
            'buyAmount': inputAmount.toString(),
          };
  }

  /// Resolves the token address to a more human-readable form if applicable.
  ///
  /// If the token address corresponds to a native token, this method returns a predefined
  /// string ('FUSE' in this case). Otherwise, it returns the token address as-is. This is
  /// useful for APIs that require token identifiers in a specific format.
  String getToken(String tokenAddress) {
    if (ContractsUtils.isNativeToken(tokenAddress)) {
      return 'FUSE';
    } else {
      return tokenAddress;
    }
  }

  /// Creates a new TradeRequest instance from the provided JSON map.
  ///
  /// Parameters:
  /// - [json] – A map containing the JSON representation of a TradeRequest.
  ///
  /// Returns a TradeRequest instance.
  factory TradeRequest.fromJson(Map<String, Object?> json) =>
      _$TradeRequestFromJson(json);
}
