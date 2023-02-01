import 'package:freezed_annotation/freezed_annotation.dart';

part 'staked_token.freezed.dart';
part 'staked_token.g.dart';

@freezed
class StakedToken with _$StakedToken {
  factory StakedToken({
    required String tokenAddress,
    required String tokenSymbol,
    required String tokenName,
    required String tokenLogoURI,
    required double stakedAmount,
    required double stakedAmountUSD,
    required double earnedAmountUSD,
  }) = _StakedToken;

  factory StakedToken.fromJson(Map<String, dynamic> json) =>
      _$StakedTokenFromJson(json);
}

@freezed
class StakedTokenResponse with _$StakedTokenResponse {
  factory StakedTokenResponse({
    required double totalStakedAmountUSD,
    required double totalEarnedAmountUSD,
    required List<StakedToken> stakedTokens,
  }) = _StakedTokenResponse;

  factory StakedTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$StakedTokenResponseFromJson(json);
}
