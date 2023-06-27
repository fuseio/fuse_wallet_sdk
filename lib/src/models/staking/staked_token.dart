import 'package:freezed_annotation/freezed_annotation.dart';

part 'staked_token.freezed.dart';
part 'staked_token.g.dart';

/// A class representing a staked token.
@freezed
class StakedToken with _$StakedToken {
  /// Constructs a new StakedToken instance.
  ///
  /// Parameters:
  /// - [tokenAddress] – The address of the staked token.
  /// - [tokenSymbol] – The symbol of the staked token.
  /// - [tokenName] – The name of the staked token.
  /// - [tokenLogoURI] – The URI for the logo of the staked token.
  /// - [stakedAmount] – The amount of tokens staked.
  /// - [unStakeTokenAddress] – The address of the unstaking token.
  /// - [stakedAmountUSD] – The staked amount in USD.
  /// - [earnedAmountUSD] – The earned amount in USD.
  /// - [stakingApr] – The annual percentage rate (APR) for staking.
  factory StakedToken({
    required String tokenAddress,
    required String tokenSymbol,
    required String tokenName,
    required String tokenLogoURI,
    required double stakedAmount,
    required String unStakeTokenAddress,
    required double stakedAmountUSD,
    required double earnedAmountUSD,
    required double stakingApr,
  }) = _StakedToken;

  /// Creates a StakedToken instance from a JSON object.
  ///
  /// Parameters:
  /// - [json] – A map representing the JSON object.
  ///
  /// Returns a StakedToken instance with the corresponding properties.
  factory StakedToken.fromJson(Map<String, dynamic> json) =>
      _$StakedTokenFromJson(json);
}

/// A class representing a response containing staked tokens information.
@freezed
class StakedTokenResponse with _$StakedTokenResponse {
  /// Constructs a new StakedTokenResponse instance.
  ///
  /// Parameters:
  /// - [totalStakedAmountUSD] – The total staked amount in USD.
  /// - [totalEarnedAmountUSD] – The total earned amount in USD.
  /// - [stakedTokens] – A list of [StakedToken] instances.
  factory StakedTokenResponse({
    required double totalStakedAmountUSD,
    required double totalEarnedAmountUSD,
    required List<StakedToken> stakedTokens,
  }) = _StakedTokenResponse;

  /// Creates a StakedTokenResponse instance from a JSON object.
  ///
  /// Parameters:
  /// - [json] – A map representing the JSON object.
  ///
  /// Returns a StakedTokenResponse instance with the corresponding properties.
  factory StakedTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$StakedTokenResponseFromJson(json);
}
