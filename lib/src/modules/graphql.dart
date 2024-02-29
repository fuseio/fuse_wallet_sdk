import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';

import 'package:fuse_wallet_sdk/src/models/models.dart';

class GraphQLModule {
  final Dio _dio;

  const GraphQLModule(this._dio);

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

  /// Retrieves a list of user operations by sender.
  ///
  /// Returns a `Future` that resolves to a `DC` (Data Container) object containing either a list of [UserOp] objects or an [Exception].
  /// The [sender] parameter specifies the sender of the user operations to retrieve.
  /// If the operation is successful, the list of user operations is returned.
  /// If an error occurs, an [Exception] is returned.
  Future<DC<Exception, List<UserOp>>> getUserOpsBySender(
    String sender,
  ) async {
    try {
      final Response result = await _dio.get(
        '/v0/graphql/userops/$sender',
      );
      if (result.data?['data']['userOps'] == null) {
        return DC.data([]);
      } else {
        return DC.data(UserOp.opsFromJson(result.data?['data']['userOps']));
      }
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }
}
