import 'package:freezed_annotation/freezed_annotation.dart';

part 'collectible.freezed.dart';
part 'collectible.g.dart';

/// A data class representing a collectible item in a collection.
///
/// This class uses the Freezed package to simplify the data class implementation.
/// It also provides a factory constructor for creating a `Collectible` object from JSON.
@freezed
class Collectible with _$Collectible {
  /// Constructs a new `Collectible` instance.
  ///
  /// Parameters:
  /// - [id] – The unique identifier of the collectible.
  /// - [name] – The name of the collectible.
  /// - [imageURL] – The URL of the collectible's image.
  /// - [description] – A description of the collectible.
  /// - [collectionName] – The name of the collection this collectible belongs to.
  /// - [collectionSymbol] – The symbol of the collection this collectible belongs to.
  /// - [collectionAddress] – The address of the collection this collectible belongs to.
  factory Collectible({
    required String id,
    required String name,
    required String imageURL,
    required String description,
    required String collectionName,
    required String collectionSymbol,
    required String collectionAddress,
  }) = _Collectible;

  /// Creates a new `Collectible` object from the provided JSON data.
  ///
  /// Parameters:
  /// - [json] – A Map containing the JSON data.
  ///
  /// Returns: A `Collectible` object created from the provided JSON data.
  factory Collectible.fromJson(Map<String, dynamic> json) =>
      _$CollectibleFromJson(json);
}
