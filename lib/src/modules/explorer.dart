import 'dart:convert';

import 'package:data_channel/data_channel.dart';
import 'package:dio/dio.dart';

import 'package:fuse_wallet_sdk/src/constants/variables.dart';
import 'package:fuse_wallet_sdk/src/models/models.dart';

/// A class that provides methods for interacting with the Fuse blockchain explorer.
class ExplorerModule {
  final Dio _dio;

  /// Creates an instance of the [ExplorerModule] class.
  ///
  /// Parameters:
  /// - [_dio] – An instance of [Dio] for making network requests.
  const ExplorerModule(this._dio);

  /// Gets the native balance of a wallet address.
  ///
  /// Parameters:
  /// - [walletAddress] – The wallet address whose native balance is to be retrieved.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a [BigInt] representing the native balance.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, BigInt>> getNativeBalance(
    String walletAddress,
  ) async {
    try {
      final Response response = await _dio.get(
        '/v0/explorer?module=account&action=eth_get_balance&address=$walletAddress',
      );
      return DC.data(BigInt.parse(response.data['result']));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// Retrieves the contract ABI for a given contract address.
  ///
  /// Parameters:
  /// - [address] - The contract address whose ABI is to be retrieved.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, DC.data will be called with a [String] representing the contract ABI.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, String>> getABI(
    String address,
  ) async {
    try {
      final Response response = await _dio.get(
        '/v0/explorer?module=contract&action=getabi&address=$address',
      );
      return DC.data(jsonEncode(jsonDecode(response.data['result'])));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// Fetches the token list associated with a particular wallet address.
  ///
  /// Parameters:
  /// - [walletAddress] – The wallet address whose token list is to be retrieved.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a [TokenList] object.
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, TokenList>> getTokenList(
    String walletAddress,
  ) async {
    try {
      final Response response = await _dio.get(
        '/v0/explorer?module=account&action=tokenlist&address=$walletAddress',
      );
      return DC.data(TokenList.fromJson(response.data));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// Retrieves the token details related to a given contract address.
  ///
  /// If the given contract address is the native token address, then the result
  /// will contain [Native] token with 0 amount.
  ///
  /// Parameters:
  /// - [contractAddress] - Contract address of the token.
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a [TokenDetails] object.
  /// - On failure, `DC.error` will be called with an `Exception` object.
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
      return DC.data(TokenDetails.fromJson({
        ...response.data['result'],
        'balance': '0',
      }));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }

  /// Retrieves the token balance for a given contract address
  /// and wallet address from the blockchain explorer API.
  ///
  /// Parameters:
  /// - [contractAddress] the contract address
  /// - [walletAddress] the wallet address
  ///
  /// Returns a Future that completes with a [DC] object:
  /// - On success, `DC.data` will be called with a [BigInt] the token balance of the given addresses
  /// - On failure, `DC.error` will be called with an `Exception` object.
  Future<DC<Exception, BigInt>> getTokenBalance(
    String contractAddress,
    String walletAddress,
  ) async {
    if (contractAddress.toLowerCase() ==
        Variables.NATIVE_TOKEN_ADDRESS.toLowerCase()) {
      return getNativeBalance(walletAddress);
    }
    try {
      final Response response = await _dio.get(
        '/v0/explorer?module=account&action=tokenbalance&contractaddress=$contractAddress&address=$walletAddress',
      );
      return DC.data(BigInt.parse(response.data['result']));
    } catch (e) {
      return DC.error(Exception(e.toString()));
    }
  }
}
