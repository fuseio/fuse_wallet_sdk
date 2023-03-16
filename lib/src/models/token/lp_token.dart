import 'package:fuse_wallet_sdk/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lp_token.freezed.dart';
part 'lp_token.g.dart';

/// A class representing the underlying tokens of a liquidity pool (LP) token.
@freezed
class LpUnderlyingTokens with _$LpUnderlyingTokens {
  /// Constructs a new LpUnderlyingTokens instance.
  ///
  /// Parameters:
  /// - [symbol] – The symbol of the underlying token.
  /// - [name] – The name of the underlying token.
  /// - [address] – The address of the underlying token.
  ///
  /// The `@JsonKey` annotations are used to customize the serialization and
  /// deserialization of the `name` and `address` properties.
  @Implements<IToken>()
  factory LpUnderlyingTokens({
    required String symbol,
    @JsonKey(
      fromJson: nameFromJson,
    )
        required String name,
    @JsonKey(
      fromJson: addressFromJson,
    )
        required String address,
  }) = _LpUnderlyingTokens;

  /// Creates an LpUnderlyingTokens instance from a JSON object.
  ///
  /// Parameters:
  /// - [json] – A map representing the JSON object.
  ///
  /// Returns an LpUnderlyingTokens instance with the corresponding properties.
  factory LpUnderlyingTokens.fromJson(Map<String, dynamic> json) =>
      _$LpUnderlyingTokensFromJson(json);
}
