import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuse_wallet_sdk/src/models/models.dart';

part 'wallet_action_result.freezed.dart';
part 'wallet_action_result.g.dart';

/// Represents the result of an action performed on the blockchain.
///
/// This class provides details about the pagination and the list of actions
/// performed on the blockchain.
@freezed
class WalletActionResult with _$WalletActionResult {
  /// Constructs a `WalletActionResult` instance.
  ///
  /// - [hasNextPage] - indicates if there's a next page available.
  /// - [hasPrevPage] - indicates if there's a previous page available.
  /// - [nextPage] - provides the number of the next page.
  /// - [prevPage] - provides the number of the previous page.
  /// - [page] provides the current page number.
  /// - [totalDocs] - provides the total number of documents or actions.
  /// - [limit] - provides the limit for the number of actions per page.
  /// - [totalPages] - provides the total number of pages available.
  /// - [pagingCounter] - provides the current paging counter.
  /// - [actions] - provides a list of wallet actions.
  factory WalletActionResult({
    required bool hasNextPage,
    required bool hasPrevPage,
    required num? nextPage,
    required num? prevPage,
    required num? page,
    required num totalDocs,
    required num limit,
    required num totalPages,
    required num pagingCounter,
    @WalletActionsConverter()
    @JsonKey(name: 'docs')
    required List<WalletAction> actions,
  }) = _WalletActionResult;

  /// Creates a `WalletActionResult` object from a JSON map.
  factory WalletActionResult.fromJson(Map<String, dynamic> json) =>
      _$WalletActionResultFromJson(json);
}

/// Converts JSON objects to a list of `WalletAction` objects and vice versa.
///
/// This converter helps in serializing and deserializing the `WalletAction` objects
/// to and from JSON format.
class WalletActionsConverter
    implements JsonConverter<List<WalletAction>, List<dynamic>> {
  const WalletActionsConverter();

  @override
  List<WalletAction> fromJson(List<dynamic>? json) =>
      json?.map((e) => WalletAction.fromJson(e)).toList() ?? [];

  @override
  List<dynamic> toJson(List<WalletAction> instance) =>
      instance.map((e) => e.toJson()).toList();
}
