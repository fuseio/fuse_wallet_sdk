import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';

import 'package:charge_smart_wallets_sdk/src/constants/variables.dart';
import 'package:charge_smart_wallets_sdk/src/models/models.dart';

class ExplorerSection {
  final Dio _dio;

  const ExplorerSection(this._dio);

  Future<DC<Exception, TokenList>> getTokenList(
    String walletAddress,
  ) async {
    try {
      final Response response = await _dio.get(
        '/v0/explorer?module=account&action=tokenlist&address=$walletAddress',
      );
      if (response.data['status'] == '1') {
        return DC.data(TokenList.fromJson(response.data));
      }
      return DC.error(Exception(response.data['message']));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  Future<DC<Exception, TokenDetails>> getTokenDetails(
    String contractAddress,
  ) async {
    try {
      if (contractAddress.toLowerCase() ==
          Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
        return DC.data(Native(amount: BigInt.zero));
      }
      final Response response = await _dio.get(
        '/v0/explorer?module=token&action=getToken&contractaddress=$contractAddress',
      );
      if (response.data['status'] == '1') {
        return DC.data(TokenDetails.fromJson(
            {...response.data['result'], 'balance': '0'}));
      }
      return DC.error(Exception(response.data['message']));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  Future<DC<Exception, BigInt>> getTokenBalance(
    String contractAddress,
    String walletAddress,
  ) async {
    try {
      final Response response = await _dio.get(
        '?module=account&action=tokenbalance&contractaddress=$contractAddress&address=$walletAddress',
      );
      if (response.data['status'] == '1') {
        return DC.data(BigInt.parse(response.data['result']));
      }
      return DC.error(Exception(response.data['message']));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }
}
