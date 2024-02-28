import 'package:fuse_wallet_sdk/src/constants/variables.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fuse_wallet_sdk/src/models/models.dart';

part 'token_details.freezed.dart';
part 'token_details.g.dart';

/// The IToken interface defines properties common to all token types.
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

int decimalsFromJson(String? decimals) =>
    decimals != null && decimals != '' ? int.parse(decimals) : 0;

/// A class representing token details. It has different constructors for
/// different types of tokens: Native, LiquidityPoolToken, BridgedToken,
/// MiscToken, ERC20, and ERC721.
@Freezed(unionKey: 'type')
class TokenDetails with _$TokenDetails {
  const TokenDetails._();

  /// Constructs a new Native token instance.
  ///
  /// Parameters:
  /// - [symbol] – The symbol of the native token (default: 'FUSE').
  /// - [name] – The name of the native token (default: 'Fuse Token').
  /// - [decimals] – The number of decimals for the native token (default: 18).
  /// - [address] – The address of the native token (default: Variables.NATIVE_TOKEN_ADDRESS).
  /// - [amount] – The amount of the native token.
  @Implements<IToken>()
  @FreezedUnionValue('native')
  const factory TokenDetails.native({
    @Default('FUSE') String symbol,
    @Default('Fuse Token') String name,
    @Default(18) int decimals,
    @Default(Variables.NATIVE_TOKEN_ADDRESS) String address,
    @JsonKey(
      fromJson: amountFromJson,
    )
    required BigInt amount,
  }) = Native;

  /// Constructs a new LiquidityPoolToken instance.
  ///
  /// Parameters:
  /// - [symbol] – The symbol of the liquidity pool token.
  /// - [decimals] – The number of decimals for the liquidity pool token.
  /// - [name] – The name of the liquidity pool token.
  /// - [address] – The address of the liquidity pool token.
  /// - [underlyingTokens] – A list of the underlying tokens in the liquidity pool.
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

  /// Constructs a new BridgedToken instance.
  ///
  /// Parameters:
  /// - [symbol] – The symbol of the bridged token.
  /// - [logoURI] – The URI of the bridged token logo.
  /// - [decimals] – The number of decimals for the bridged token.
  /// - [name] – The name of the bridged token.
  /// - [address] – The address of the bridged token.

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

  /// Constructs a new MiscToken instance.
  ///
  /// Parameters:
  /// - [symbol] – The symbol of the miscellaneous token.
  /// - [logoURI] – The URI of the miscellaneous token logo.
  /// - [decimals] – The number of decimals for the miscellaneous token.
  /// - [name] – The name of the miscellaneous token.
  /// - [address] – The address of the miscellaneous token.
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

  /// Constructs a new ERC20 token instance.
  ///
  /// Parameters:
  /// - [symbol] – The symbol of the ERC20 token.
  /// - [name] – The name of the ERC20 token.
  /// - [decimals] – The number of decimals for the ERC20 token.
  /// - [address] – The address of the ERC20 token.
  /// - [amount] – The amount of the ERC20 token.
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
      fromJson: decimalsFromJson,
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

  /// Constructs a new ERC721 token instance.
  ///
  /// Parameters:
  /// - [symbol] – The symbol of the ERC721 token.
  /// - [name] – The name of the ERC721 token.
  /// - [decimals] – The number of decimals for the ERC721 token.
  /// - [address] – The address of the ERC721 token.
  /// - [amount] – The amount of the ERC721 token.
  @Implements<IToken>()
  @FreezedUnionValue('ERC-721')
  const factory TokenDetails.erc721({
    required String symbol,
    @JsonKey(
      fromJson: nameFromJson,
    )
    required String name,
    @JsonKey(
      fromJson: decimalsFromJson,
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

  /// Constructs a new TokenDetails instance from the provided JSON object.
  ///
  /// Parameters:
  /// - [json] – A JSON object containing the token details.
  ///
  /// Returns: A new TokenDetails instance.
  factory TokenDetails.fromJson(Map<String, dynamic> json) =>
      _$TokenDetailsFromJson(json);
}
