import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';

import 'package:fuse_wallet_sdk/src/models/models.dart';

/// A class to handle trade-related operations in the Fuse Wallet SDK.
///
/// Provides methods to request trade parameters, get trade quotes, fetch token prices,
/// price changes, interval statistics, and token details.
class TradeModule {
  final Dio _dio;

  const TradeModule(this._dio);

  /// Get a quote for a trade request.
  ///
  /// [tradeRequest] is a [TradeRequest] object containing the parameters for the trade request.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a [Trade] object.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, TradeData>> quote(
    TradeRequest tradeRequest,
  ) async {
    try {
      final Response response = await _dio.get(
        '/v1/trade/quote',
        queryParameters: tradeRequest.getParams(),
      );
      return DC.data(TradeData.fromJson(response.data));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// Retrieves the current price for the given token address.
  ///
  /// Parameters:
  /// - [tokenAddress]: A `String` representing the token address.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a [String] object.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, String>> price(
    String tokenAddress,
  ) async {
    try {
      final Response response = await _dio.get(
        '/v0/trade/price/$tokenAddress',
      );
      if (response.statusCode == 200) {
        return DC.data(response.data['data']['price'] ?? '0');
      }
      return DC.error(Exception('Failed to get price for token $tokenAddress'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// Fetches the price change for a given token address.
  ///
  /// [tokenAddress] is the address of the token to fetch the price change for.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a [String] object.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, String>> priceChange(
    String tokenAddress,
  ) async {
    try {
      final Response response = await _dio.get(
        '/v0/trade/pricechange/$tokenAddress',
      );
      if (response.statusCode == 200) {
        return DC.data(response.data['data']['priceChange'] ?? '0');
      }
      return DC
          .error(Exception('Failed to get price change for $tokenAddress'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// Retrieves interval statistics for the specified [tokenAddress] and [timeFrame].
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a [List<IntervalStats>] object.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, List<IntervalStats>>> interval(
    String tokenAddress,
    TimeFrame timeFrame,
  ) async {
    try {
      final Response response = await _dio.get(
        '/v0/trade/pricechange/interval/${timeFrame.name.toUpperCase()}/$tokenAddress',
      );
      if (response.statusCode == 200) {
        return DC.data((response.data['data'] as List<dynamic>)
            .map((stats) => IntervalStats.fromJson(stats))
            .toList());
      }
      return DC
          .error(Exception('Failed to get interval data for $tokenAddress'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// Fetches a list of token details
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a [List<TokenDetails>] object.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, List<TokenDetails>>> fetchTokens() async {
    try {
      final Response response = await _dio.get(
        '/v0/trade/tokens',
      );
      if (response.statusCode == 200) {
        return DC.data((response.data['data']['tokens'] as List<dynamic>)
            .map((stats) => TokenDetails.fromJson(stats))
            .toList());
      }
      return DC.error(Exception('Failed to fetch tokens'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }
}
