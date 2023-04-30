import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fuse_wallet_sdk/src/models/models.dart';

part 'account.freezed.dart';
part 'account.g.dart';

/// Represents a user account with an ID, address, and a list of collectibles.
@freezed
class Account with _$Account {
  /// Creates a new Account instance with the specified [id], [address],
  /// and [collectibles].
  ///
  /// Parameters:
  /// - [id]: The current owner of the collectible.
  /// - [address]: The current owner of the collectible.
  /// - [collectibles]: The collectibles of the address.
  factory Account({
    required String id,
    required String address,
    @CollectibleConverter() required List<Collectible> collectibles,
  }) = _Account;

  /// Creates a new Account instance from the provided [json] data.
  ///
  /// The [json] parameter must be a valid JSON object containing keys
  /// for 'id', 'address', and 'collectibles'.
  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

/// A JSON converter to convert between a list of Collectible instances and
/// a list of JSON objects.
class CollectibleConverter
    implements JsonConverter<List<Collectible>, List<dynamic>> {
  /// Creates an instance of CollectibleConverter.
  const CollectibleConverter();

  /// Converts JSON data to a list of Collectible instances.
  @override
  List<Collectible> fromJson(List<dynamic>? json) {
    if (json == null) {
      return [];
    } else {
      return json.map(
        (e) {
          Collectible collectible = Collectible.fromJson(e);
          final Map<String, dynamic>? metadata =
              collectible.decodeDescriptorUri();
          if (collectible.name == null && metadata?['name'] != null) {
            collectible = collectible.copyWith(
              name: metadata!['name'],
            );
          }

          if (collectible.imageURL == null && metadata?['image'] != null) {
            collectible = collectible.copyWith(
              imageURL: metadata!['image'],
            );
          }

          return collectible;
        },
      ).toList();
    }
  }

  /// Converts a list of Collectible instances to a list of JSON objects.
  @override
  List<dynamic> toJson(List<Collectible> instance) => instance.toList();
}
