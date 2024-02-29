import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../token/token_details.dart';

part 'erc20_transfers.freezed.dart';
part 'erc20_transfers.g.dart';

BigInt _amountFromJson(String? value) {
  return value != null
      ? BigInt.parse(Decimal.parse(value).toString())
      : BigInt.zero;
}

@freezed
class Erc20Transfers with _$Erc20Transfers {
  const factory Erc20Transfers({
    required String id,
    required String from,
    required String to,
    @JsonKey(
      fromJson: _amountFromJson,
    )
    required BigInt value,
    required String contractAddress,
    required String name,
    required String symbol,
    @JsonKey(
      fromJson: decimalsFromJson,
    )
    required int decimals,
  }) = _Erc20Transfers;

  factory Erc20Transfers.fromJson(Map<String, Object?> json) =>
      _$Erc20TransfersFromJson(json);
}
