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
  /// - [nextPage] – A number representing the next page number.
  /// - [actions] – A list of [Action] instances associated with the ActionResult.
  factory ActionResult({
    required bool hasNextPage,
    required num nextPage,
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

class ActionsConverter implements JsonConverter<List<Action>, List<dynamic>> {
  const ActionsConverter();

  @override
  List<Action> fromJson(List<dynamic>? json) =>
      json != null ? Action.actionsFromJson(json) : [];

  @override
  List<dynamic> toJson(List<Action> instance) => instance.toList();
}
