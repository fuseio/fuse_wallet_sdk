import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';

import 'package:fuse_wallet_sdk/src/models/models.dart';

/// A class that provides methods for interacting with the Fuse Balances API.
class BalancesModule {
  final Dio _dio;

  /// Creates an instance of the [BalancesModule] class.
  ///
  /// Parameters:
  /// - [_dio] – An instance of [Dio] for making network requests.
  const BalancesModule(this._dio);

  /// Fetches the token list associated with a particular wallet address.
  ///
  /// Parameters:
  /// - [address] – The address whose token list is to be retrieved.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a [TokenList] object.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, TokenList>> getTokenList(
    String address,
  ) async {
    try {
      final Response response = await _dio.get(
        '/v0/balances/assets/$address',
      );
      return DC.data(TokenList.fromJson(response.data));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// Retrieves the Non Fungible NFT Token Balances owned by a specified address.
  ///
  /// [address] is the owner's address.
  ///
  /// Returns a [Future] that resolves to a [DC] containing either an [OperationException] or an [Account].
  Future<DC<Exception, Account>> getNFTs(
    String address,
  ) async {
    try {
      final Response result = await _dio.get(
        '/v0/balances/nft-assets/$address',
      );
      if (result.statusCode == 200) {
        if (result.data?['data']['account'] == null) {
          return DC.data(
            Account(
              id: address,
              address: address,
              collectibles: [],
            ),
          );
        } else {
          return DC.data(Account.fromJson(result.data?['data']['account']));
        }
      }
      return DC.error(Exception('Failed to fetch collectibles'));
    } catch (e, s) {
      print('error: $e');
      print('stack trace: $s');
      return DC.error(Exception(e.toString()));
    }
  }
}
