import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fuse_wallet_sdk/src/models/models.dart';

part 'token_list.freezed.dart';
part 'token_list.g.dart';

/// The TokenList class holds the token list data.
@freezed
class TokenList with _$TokenList {
  /// Default constructor for the TokenList class.
  ///
  /// Parameters:
  /// - [message] – A message indicating the status of the token list.
  /// - [status] – The status of the token list.
  /// - [result] – A list of [TokenDetails] instances representing the tokens.
  factory TokenList({
    required String message,
    required String status,
    required List<TokenDetails> result,
  }) = _TokenList;

  /// Constructs a new TokenList instance from the provided JSON object.
  ///
  /// Parameters:
  /// - [json] – A JSON object containing the token list data.
  ///
  /// Returns: A new TokenList instance.
  factory TokenList.fromJson(Map<String, dynamic> json) =>
      _$TokenListFromJson(json);
}
