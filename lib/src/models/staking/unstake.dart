import 'package:freezed_annotation/freezed_annotation.dart';

part 'unstake.freezed.dart';
part 'unstake.g.dart';

/// A class representing the request body for an unstaking operation.
@freezed
class UnstakeRequestBody with _$UnstakeRequestBody {
  /// Constructs a new UnstakeRequestBody instance.
  ///
  /// Parameters:
  /// - [accountAddress] – The address of the account to be unstaked.
  /// - [tokenAmount] – The amount of tokens to be unstaked.
  /// - [tokenAddress] – The address of the token to be unstaked.
  factory UnstakeRequestBody({
    required String accountAddress,
    required String tokenAmount,
    required String tokenAddress,
  }) = _UnstakeRequestBody;

  /// Creates an UnstakeRequestBody instance from a JSON object.
  ///
  /// Parameters:
  /// - [json] – A map representing the JSON object.
  ///
  /// Returns an UnstakeRequestBody instance with the corresponding properties.
  factory UnstakeRequestBody.fromJson(Map<String, dynamic> json) =>
      _$UnstakeRequestBodyFromJson(json);
}

/// A class representing the response body for an unstaking operation.
@freezed
class UnstakeResponseBody with _$UnstakeResponseBody {
  /// Constructs a new UnstakeResponseBody instance.
  ///
  /// Parameters:
  /// - [contractAddress] – The address of the unstaking contract.
  /// - [encodedABI] – The encoded Application Binary Interface (ABI) for the unstaking operation.
  factory UnstakeResponseBody({
    required String contractAddress,
    required String encodedABI,
  }) = _UnstakeResponseBody;

  /// Creates an UnstakeResponseBody instance from a JSON object.
  ///
  /// Parameters:
  /// - [json] – A map representing the JSON object.
  ///
  /// Returns an UnstakeResponseBody instance with the corresponding properties.
  factory UnstakeResponseBody.fromJson(Map<String, dynamic> json) =>
      _$UnstakeResponseBodyFromJson(json);
}
