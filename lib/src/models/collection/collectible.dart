import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuse_wallet_sdk/src/models/collection/address.dart';
import 'package:fuse_wallet_sdk/src/models/collection/collection.dart';

part 'collectible.freezed.dart';
part 'collectible.g.dart';

/// A [Collectible] class represents the collectible data.
@freezed
class Collectible with _$Collectible {
  const Collectible._();

  /// Returns true if the [metadata] is not null.
  bool get hasMetadata => metadata != null;

  /// Creates a [Collectible] instance.
  factory Collectible({
    String? description,
    String? name,
    String? imageURL,
    required String descriptorUri,
    @JsonKey(fromJson: _savedAtFromJson, toJson: _savedAtToJson)
        required DateTime created,
    required String tokenId,
    required Collection collection,
    required Address owner,
    required Address creator,
    Map<String, dynamic>? metadata,
  }) = _Collectible;

  /// Creates a [Collectible] instance from a JSON map.
  factory Collectible.fromJson(Map<String, dynamic> json) =>
      _$CollectibleFromJson(json);
}

int _savedAtToJson(DateTime savedAt) => savedAt.millisecondsSinceEpoch;

DateTime _savedAtFromJson(String savedAtMillisecondsSinceEpoch) {
  return DateTime.fromMillisecondsSinceEpoch(
    int.parse(
          savedAtMillisecondsSinceEpoch,
        ) *
        1000,
  );
}
