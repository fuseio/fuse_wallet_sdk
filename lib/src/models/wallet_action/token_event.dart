import 'package:fuse_wallet_sdk/src/constants/variables.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuse_wallet_sdk/src/models/models.dart';

part 'token_event.freezed.dart';
part 'token_event.g.dart';

/// Represents different types of token events.
///
/// This class provides a way to handle different token events such as native token events,
/// ERC-20 token transfers, and ERC-721 token transfers.
@Freezed(unionKey: 'type')
class TokenEvent with _$TokenEvent {
  const TokenEvent._();

  /// Represents a native token event.
  ///
  /// Parameters:
  /// - [symbol] – The symbol of the token. Default is 'FUSE'.
  /// - [name] – The name of the token. Default is 'Fuse Token'.
  /// - [decimals] – The number of decimals the token uses. Default is 18.
  /// - [address] – The address of the token. Default is the native token address.
  /// - [value] – The value associated with the token event.
  @FreezedUnionValue('native')
  const factory TokenEvent.nativeToken({
    @Default('FUSE') String symbol,
    @Default('Fuse Token') String name,
    @Default(18) int decimals,
    @Default(Variables.NATIVE_TOKEN_ADDRESS) String address,
    @JsonKey(
      fromJson: amountFromJson,
    )
    required BigInt value,
    String? to,
    String? from,
  }) = NativeToken;

  /// Represents an ERC-20 token transfer event.
  ///
  /// Parameters:
  /// - [symbol] – The symbol of the ERC-20 token.
  /// - [name] – The name of the ERC-20 token.
  /// - [decimals] – The number of decimals the ERC-20 token uses.
  /// - [address] – The address of the ERC-20 token.
  /// - [value] – The value associated with the ERC-20 token transfer.
  @FreezedUnionValue('ERC-20')
  const factory TokenEvent.erc20Transfer({
    required String symbol,
    @JsonKey(
      fromJson: nameFromJson,
    )
    required String name,
    required int decimals,
    @JsonKey(
      fromJson: addressFromJson,
    )
    required String address,
    required BigInt value,
    String? to,
    String? from,
  }) = ERC20Transfer;

  /// Represents an ERC-721 token transfer event.
  ///
  /// Parameters:
  /// - [symbol] – The symbol of the ERC-721 token.
  /// - [name] – The name of the ERC-721 token.
  /// - [address] – The address of the ERC-721 token.
  /// - [value] – The value associated with the ERC-721 token transfer.
  /// - [tokenId] – The unique identifier of the ERC-721 token.
  /// - [to] – The recipient of the ERC-721 token transfer.
  @FreezedUnionValue('ERC-721')
  const factory TokenEvent.erc721Transfer({
    required String symbol,
    @JsonKey(
      fromJson: nameFromJson,
    )
    required String name,
    @JsonKey(
      fromJson: addressFromJson,
    )
    required String address,
    required BigInt value,
    BigInt? tokenId,
    String? to,
    String? from,
  }) = ERC721Transfer;

  /// Constructs a new TokenEvent instance from the provided JSON object.
  ///
  /// Parameters:
  /// - [json] – A JSON object containing the token details.
  ///
  /// Returns: A new TokenEvent instance.
  factory TokenEvent.fromJson(Map<String, dynamic> json) =>
      _$TokenEventFromJson(json);
}
