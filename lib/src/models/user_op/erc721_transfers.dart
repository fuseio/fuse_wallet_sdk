import 'package:freezed_annotation/freezed_annotation.dart';

part 'erc721_transfers.freezed.dart';
part 'erc721_transfers.g.dart';

@freezed
class Erc721Transfers with _$Erc721Transfers {
  const factory Erc721Transfers({
    required String id,
    required String from,
    required String to,
    required String contractAddress,
    required String tokenId,
    required String name,
    required String symbol,
  }) = _Erc721Transfers;

  factory Erc721Transfers.fromJson(Map<String, Object?> json) =>
      _$Erc721TransfersFromJson(json);
}
