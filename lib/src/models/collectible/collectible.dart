import 'dart:convert';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuse_wallet_sdk/src/models/models.dart';

part 'collectible.freezed.dart';
part 'collectible.g.dart';

/// A data class representing a collectible item in a collection.
///
/// The `Collectible` class represents a unique item or asset in a collection.
/// Each collectible has an owner and creator, and can belong to a specific collection.
/// Additional metadata can be associated with each collectible.
@freezed
class Collectible with _$Collectible {
// Private constructor for the Collectible class.
  const Collectible._();

  /// Creates a new `Collectible` instance with the given properties.
  ///
  /// Parameters:
  /// - [description]: An optional description of the collectible.
  /// - [name]: An optional name for the collectible.
  /// - [imageURL]: An optional URL for an image representing the collectible.
  /// - [descriptorUri]: The descriptor URI for the collectible.
  /// - [created]: The date when the collectible was created in unix time.
  /// - [tokenId]: The unique identifier of the collectible.
  /// - [collection]: The collection to which the collectible belongs.
  /// - [owner]: The current owner of the collectible.
  /// - [creator]: The original creator of the collectible.
  /// - [metadata]: Optional metadata associated with the collectible.
  factory Collectible({
    String? description,
    String? name,
    String? imageURL,
    required String descriptorUri,
    @JsonKey(name: 'created') required String createdAt,
    required String tokenId,
    required Collection collection,
    required Address owner,
    required Address creator,
  }) = _Collectible;

  Map<String, dynamic>? decodeDescriptorUri() {
    final String descriptorUri = this.descriptorUri;
    if (descriptorUri.startsWith('data:application/json')) {
      final Uint8List decodedBytes = base64.decode(
        descriptorUri.split(',').last,
      );
      final Map<String, dynamic> decodedMetadata = jsonDecode(
        utf8.decode(decodedBytes),
      );
      return decodedMetadata;
    }
    return null;
  }

  String? get image {
    if (imageURL != null) {
      return imageURL;
    } else {
      final Map<String, dynamic>? decodedMetadata = decodeDescriptorUri();
      if (decodedMetadata != null && decodedMetadata.containsKey('image')) {
        return decodedMetadata['image'] as String?;
      }
    }
    return null;
  }

  /// Creates a `Collectible` instance from a JSON object.
  factory Collectible.fromJson(Map<String, dynamic> json) =>
      _$CollectibleFromJson(json);
}
