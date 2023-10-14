import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuse_wallet_sdk/src/models/models.dart';

part 'action_result.freezed.dart';
part 'action_result.g.dart';

/// A class representing the result of an action performed on the blockchain.
///
/// It contains information about whether there's a next page of actions,
/// the next page number, and a list of actions.
@freezed
class ActionResult with _$ActionResult {
  /// Constructs an ActionResult instance.
  ///
  /// Parameters:
  /// - [hasNextPage] – A boolean representing whether there is a next page of actions.
  /// - [hasPrevPage] – A boolean representing whether there is a previous page of actions.
  /// - [nextPage] – A number representing the next page number.
  /// - [prevPage] – A number representing the previous page number.
  /// - [page] – A number representing the current page number.
  /// - [totalPages] – A number representing the total number of pages.
  /// - [actions] – A list of [Action] instances associated with the ActionResult.
  factory ActionResult({
    required bool hasNextPage,
    required bool hasPrevPage,
    required num? nextPage,
    required num? prevPage,
    required num? page,
    required num totalPages,
    @ActionsConverter() @JsonKey(name: 'docs') required List<Action> actions,
  }) = _ActionResult;

  /// Creates an ActionResult object from a JSON object.
  ///
  /// Parameters:
  /// - [json] – A map containing the JSON data.
  ///
  /// Returns an ActionResult object created from the JSON data.
  factory ActionResult.fromJson(Map<String, dynamic> json) =>
      _$ActionResultFromJson(json);
}

/// A class that implements [JsonConverter] to convert JSON objects to a list
/// of [Action] objects and vice versa.
///
/// This class can be used as a decorator with the [JsonConverter] annotation.
class ActionsConverter implements JsonConverter<List<Action>, List<dynamic>> {
  /// Constructs an ActionsConverter instance.
  const ActionsConverter();

  /// Converts a JSON object to a list of [Action] objects.
  ///
  /// Parameters:
  /// - [json] – A list of dynamic objects representing the JSON data.
  ///
  /// Returns a list of [Action] objects created from the JSON data.
  @override
  List<Action> fromJson(List<dynamic>? json) =>
      json != null ? Action.actionsFromJson(json) : [];

  /// Converts a list of [Action] objects to a JSON object.
  ///
  /// Parameters:
  /// - [instance] – A list of [Action] objects.
  ///
  /// Returns a list of dynamic objects representing the JSON data.
  @override
  List<dynamic> toJson(List<Action> instance) => instance.toList();
}
