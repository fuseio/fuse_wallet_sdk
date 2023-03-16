import 'package:freezed_annotation/freezed_annotation.dart';

part 'stake.freezed.dart';
part 'stake.g.dart';

/// A class representing the request body for a staking operation.
@freezed
class StakeRequestBody with _$StakeRequestBody {
  /// Constructs a new StakeRequestBody instance.
  ///
  /// Parameters:
  /// - [accountAddress] – The address of the account to be staked.
  /// - [tokenAmount] – The amount of tokens to be staked.
  /// - [tokenAddress] – The address of the token to be staked.
  factory StakeRequestBody({
    required String accountAddress,
    required String tokenAmount,
    required String tokenAddress,
  }) = _StakeRequestBody;

  /// Creates a StakeRequestBody instance from a JSON object.
  ///
  /// Parameters:
  /// - [json] – A map representing the JSON object.
  ///
  /// Returns a StakeRequestBody instance with the corresponding properties.
  factory StakeRequestBody.fromJson(Map<String, dynamic> json) =>
      _$StakeRequestBodyFromJson(json);
}

/// A class representing the response body for a staking operation.
@freezed
class StakeResponseBody with _$StakeResponseBody {
  /// Constructs a new StakeResponseBody instance.
  ///
  /// Parameters:
  /// - [contractAddress] – The address of the staking contract.
  /// - [encodedABI] – The encoded Application Binary Interface (ABI) for the staking operation.
  factory StakeResponseBody({
    required String contractAddress,
    required String encodedABI,
  }) = _StakeResponseBody;

  /// Creates a StakeResponseBody instance from a JSON object.
  ///
  /// Parameters:
  /// - [json] – A map representing the JSON object.
  ///
  /// Returns a StakeResponseBody instance with the corresponding properties.
  factory StakeResponseBody.fromJson(Map<String, dynamic> json) =>
      _$StakeResponseBodyFromJson(json);
}
