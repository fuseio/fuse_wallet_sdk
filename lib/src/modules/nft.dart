import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';

import 'package:fuse_wallet_sdk/src/models/models.dart';

class NftModule {
  final Dio _dio;

  const NftModule(this._dio);

  /// Retrieves the collectibles owned by a specified address.
  ///
  /// [owner] is the owner's address.
  ///
  /// Returns a [Future] that resolves to a [DC] containing either an [OperationException] or an [Account].
  Future<DC<Exception, Account>> getCollectiblesByOwner(
    String walletAddress,
  ) async {
    try {
      final Response result = await _dio.get(
        '/v0/graphql/collectibles/$walletAddress',
      );
      if (result.statusCode == 200) {
        if (result.data?['data']['account'] == null) {
          return DC.data(
            Account(
              id: walletAddress,
              address: walletAddress,
              collectibles: [],
            ),
          );
        } else {
          return DC.data(Account.fromJson(result.data?['data']['account']));
        }
      }
      return DC.error(Exception('Failed to fetch collectibles'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }
}
