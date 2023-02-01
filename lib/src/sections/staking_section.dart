import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';

import 'package:charge_smart_wallets_sdk/src/models/models.dart';

class StakingSection {
  final Dio _dio;

  const StakingSection(this._dio);

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

  Future<DC<Exception, StakeResponseBody>> stake(
    StakeRequestBody stakeRequestBody,
  ) async {
    try {
      final Response response = await _dio.post(
        '/v0/staking/stake',
        data: stakeRequestBody.toJson(),
      );
      if (response.statusCode == 200) {
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

  Future<DC<Exception, UnstakeResponseBody>> unstake(
    UnstakeRequestBody unstakeRequestBody,
  ) async {
    try {
      final Response response = await _dio.post(
        '/v0/staking/unstake',
        data: unstakeRequestBody.toJson(),
      );
      if (response.statusCode == 200) {
        return DC.data(UnstakeResponseBody.fromJson(response.data));
      }
      return DC.error(
          Exception('Failed to fetch encoded data for unstake interaction'));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

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
