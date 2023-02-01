import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';

import 'package:charge_smart_wallets_sdk/src/constants/enum.dart';
import 'package:charge_smart_wallets_sdk/src/models/models.dart';

class TradeSection {
  final Dio _dio;

  const TradeSection(this._dio);
  Future<DC<Exception, TradeCallParameters>> requestParameters(
    TradeRequestBody swapRequestBody,
  ) async {
    try {
      final Response response = await _dio.post(
        '/v0/trade/swap/requestparameters',
        data: swapRequestBody.toJson(),
      );
      if (response.statusCode == 200) {
        return DC.data(TradeCallParameters.fromJson(response.data));
      }
      return DC.error(Exception(
          'Request Parameters failed for ${swapRequestBody.toString()}'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  Future<DC<Exception, Trade>> quote(
    TradeRequestBody swapRequestBody,
  ) async {
    try {
      final Response response = await _dio.post(
        '/v0/trade/swap/quote',
        data: swapRequestBody.toJson(),
      );
      if (response.statusCode == 200) {
        return DC.data(Trade.fromJson(response.data['data']['info']));
      }
      return DC.error(
          Exception('Failed to get quote for ${swapRequestBody.toString()}'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

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
