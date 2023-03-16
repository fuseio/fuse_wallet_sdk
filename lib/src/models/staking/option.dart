import 'package:freezed_annotation/freezed_annotation.dart';

part 'option.freezed.dart';
part 'option.g.dart';

/// A class representing a staking option in a staking platform.
@freezed
class StakingOption with _$StakingOption {
  const StakingOption._();

  /// Constructs a new StakingOption instance.
  ///
  /// Parameters:
  /// - [tokenAddress] – The address of the staking token.
  /// - [tokenSymbol] – The symbol of the staking token.
  /// - [tokenName] – The name of the staking token.
  /// - [tokenLogoURI] – The URI for the logo of the staking token.
  /// - [unStakeTokenAddress] – The address of the unstaking token.
  /// - [stakingApr] – The annual percentage rate (APR) for staking.
  factory StakingOption({
    required String tokenAddress,
    required String tokenSymbol,
    required String tokenName,
    required String tokenLogoURI,
    required String unStakeTokenAddress,
    required double stakingApr,
  }) = _StakingOption;

  /// Creates a StakingOption instance from a JSON object.
  ///
  /// Parameters:
  /// - [json] – A map representing the JSON object.
  ///
  /// Returns a StakingOption instance with the corresponding properties.
  factory StakingOption.fromJson(Map<String, dynamic> json) =>
      _$StakingOptionFromJson(json);

  /// Creates a list of StakingOption instances from a list of JSON objects.
  ///
  /// Parameters:
  /// - [docs] – An iterable of JSON objects.
  ///
  /// Returns a list of StakingOption instances with the corresponding properties.
  static List<StakingOption> optionsFromJson(Iterable<dynamic> docs) =>
      docs.map((e) => StakingOption.fromJson(e)).toList();
}
