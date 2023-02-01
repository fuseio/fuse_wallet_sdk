import 'package:freezed_annotation/freezed_annotation.dart';

part 'option.freezed.dart';
part 'option.g.dart';

@freezed
class StakingOption with _$StakingOption {
  const StakingOption._();

  factory StakingOption({
    required String tokenAddress,
    required String tokenSymbol,
    required String tokenName,
    required String tokenLogoURI,
    required double stakingApr,
  }) = _StakingOption;

  factory StakingOption.fromJson(Map<String, dynamic> json) =>
      _$StakingOptionFromJson(json);

  static List<StakingOption> optionsFromJson(Iterable<dynamic> docs) =>
      docs.map((e) => StakingOption.fromJson(e)).toList();
}
