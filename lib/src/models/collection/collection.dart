import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

/// A [Collection] class represents the collection data.
@freezed
class Collection with _$Collection {
  /// Creates a [Collection] instance.
  factory Collection({
    @JsonKey(name: 'collectionName') required String name,
    @JsonKey(name: 'collectionSymbol') required String symbol,
    @JsonKey(name: 'collectionAddress') required String address,
  }) = _Collection;

  /// Creates a [Collection] instance from a JSON map.
  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}
