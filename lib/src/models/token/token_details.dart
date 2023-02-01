import 'package:charge_smart_wallets_sdk/src/constants/variables.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:charge_smart_wallets_sdk/src/models/models.dart';

part 'token_details.freezed.dart';
part 'token_details.g.dart';

abstract class IToken {
  String get address;
  String get name;
  String get symbol;
}

String nameFromJson(String tokenName) {
  if (tokenName.endsWith('on Fuse')) {
    List split = tokenName.split(" ")
      ..removeWhere((ele) => ele == 'on' || ele == 'Fuse');
    return split.join(" ");
  }
  return tokenName;
}

BigInt amountFromJson(String? value) {
  return value != null ? BigInt.parse(value) : BigInt.zero;
}

String addressFromJson(String address) => address.toLowerCase();

int _decimalsFromJson(String? decimals) =>
    decimals != null && decimals != '' ? int.parse(decimals) : 0;

@Freezed(unionKey: 'type')
class TokenDetails with _$TokenDetails {
  const TokenDetails._();

  @Implements<IToken>()
  @FreezedUnionValue('native')
  const factory TokenDetails.native({
    @Default('FUSE')
        String symbol,
    @Default('Fuse Token')
        String name,
    @Default(18)
        int decimals,
    @Default(Variables.NATIVE_TOKEN_ADDRESS)
        String address,
    @JsonKey(
      fromJson: amountFromJson,
    )
        required BigInt amount,
  }) = Native;

  @Implements<IToken>()
  @FreezedUnionValue('lp')
  const factory TokenDetails.liquidityPoolToken({
    required String symbol,
    required int decimals,
    @JsonKey(
      fromJson: nameFromJson,
    )
        required String name,
    @JsonKey(
      fromJson: addressFromJson,
    )
        required String address,
    required List<LpUnderlyingTokens> underlyingTokens,
  }) = LiquidityPoolToken;

  @Implements<IToken>()
  @FreezedUnionValue('bridged')
  const factory TokenDetails.bridgedToken({
    required String symbol,
    required String logoURI,
    required int decimals,
    @JsonKey(
      fromJson: nameFromJson,
    )
        required String name,
    @JsonKey(
      fromJson: addressFromJson,
    )
        required String address,
  }) = BridgedToken;

  @Implements<IToken>()
  @FreezedUnionValue('misc')
  const factory TokenDetails.miscToken({
    required String symbol,
    required String logoURI,
    required int decimals,
    @JsonKey(
      fromJson: nameFromJson,
    )
        required String name,
    @JsonKey(
      fromJson: addressFromJson,
    )
        required String address,
  }) = MiscToken;

  @Implements<IToken>()
  @FreezedUnionValue('ERC-20')
  const factory TokenDetails.erc20({
    required String symbol,
    @JsonKey(
      fromJson: nameFromJson,
    )
        required String name,
    @Default(0)
    @JsonKey(
      fromJson: _decimalsFromJson,
    )
        int decimals,
    @JsonKey(
      name: 'contractAddress',
      fromJson: addressFromJson,
    )
        required String address,
    @JsonKey(
      name: 'balance',
    )
        required BigInt amount,
  }) = ERC20;

  @Implements<IToken>()
  @FreezedUnionValue('ERC-721')
  const factory TokenDetails.erc721({
    required String symbol,
    @JsonKey(
      fromJson: nameFromJson,
    )
        required String name,
    @JsonKey(
      fromJson: _decimalsFromJson,
    )
        required int decimals,
    @JsonKey(
      name: 'contractAddress',
      fromJson: addressFromJson,
    )
        required String address,
    @JsonKey(
      name: 'balance',
    )
        required BigInt amount,
  }) = ERC721;

  factory TokenDetails.fromJson(Map<String, dynamic> json) =>
      _$TokenDetailsFromJson(json);
}
