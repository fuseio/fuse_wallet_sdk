import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

/// A [Collection] class represents the collection data.
@freezed
class Collection with _$Collection {
  /// Creates a new [Collection] instance with the given [name], [symbol], and [address].
  ///
  /// Parameters:
  /// - [name] – The name of the collection this collectible belongs to.
  /// - [symbol] – The symbol of the collection this collectible belongs to.
  /// - [address] – The address of the collection this collectible belongs to.
  factory Collection({
    @JsonKey(name: 'collectionName') required String name,
    @JsonKey(name: 'collectionSymbol') required String symbol,
    @JsonKey(name: 'collectionAddress') required String address,
  }) = _Collection;

  /// Constructs a [Collection] from a JSON map.
  ///
  /// This method uses the generated `_$CollectionFromJson` function to deserialize
  /// the [json] object. The JSON object must have the required keys:
  /// 'collectionName', 'collectionSymbol', and 'collectionAddress'.
  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}
