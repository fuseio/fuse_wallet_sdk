import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:charge_smart_wallets_sdk/src/models/models.dart';

part 'token_list.freezed.dart';
part 'token_list.g.dart';

@freezed
class TokenList with _$TokenList {
  factory TokenList({
    required String message,
    required String status,
    required List<TokenDetails> result,
  }) = _TokenList;

  factory TokenList.fromJson(Map<String, dynamic> json) =>
      _$TokenListFromJson(json);
}
