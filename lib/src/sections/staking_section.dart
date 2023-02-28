import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';

import 'package:fuse_wallet_sdk/src/models/models.dart';

class StakingSection {
  final Dio _dio;

  const StakingSection(this._dio);

  /// Retrieves the staking options available on the platform.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a list of [StakingOption] object.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, List<StakingOption>>> getStakingOptions() async {
    try {
      final Response response = await _dio.get(
        '/v0/staking/staking_options',
      );
      if (response.statusCode == 200) {
        return DC.data(StakingOption.optionsFromJson(response.data));
      }
      return DC.error(Exception('Failed to staking options'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// A function that returns encoded data for the staking contract call.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a [StakeResponseBody] object.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, StakeResponseBody>> stake(
    StakeRequestBody stakeRequestBody,
  ) async {
    try {
      final Response response = await _dio.post(
        '/v0/staking/stake',
        data: stakeRequestBody.toJson(),
      );
      if (response.statusCode == 201) {
        return DC.data(
          StakeResponseBody.fromJson(
            response.data,
          ),
        );
      }
      return DC.error(Exception(
        'Failed to fetch encoded data for stake interaction',
      ));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// A function that returns encoded data for unstake contract call.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a [StakeResponseBody] object.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, UnstakeResponseBody>> unstake(
    UnstakeRequestBody unstakeRequestBody,
  ) async {
    try {
      final Response response = await _dio.post(
        '/v0/staking/unstake',
        data: unstakeRequestBody.toJson(),
      );
      if (response.statusCode == 201) {
        return DC.data(UnstakeResponseBody.fromJson(response.data));
      }
      return DC.error(
          Exception('Failed to fetch encoded data for unstake interaction'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// Retrieves the staked tokens of a given smart wallet address on the platform.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a [StakedTokenResponse] object.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, StakedTokenResponse>> getStakedTokens(
    String walletAddress,
  ) async {
    try {
      final Response response = await _dio.get(
        '/v0/staking/staked_tokens/$walletAddress',
      );
      if (response.statusCode == 200) {
        return DC.data(StakedTokenResponse.fromJson(response.data));
      }
      return DC.error(Exception('Failed to get staked tokens'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }
}
