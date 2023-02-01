import 'package:freezed_annotation/freezed_annotation.dart';

part 'collectible.freezed.dart';
part 'collectible.g.dart';

@freezed
class Collectible with _$Collectible {
  factory Collectible({
    required String id,
    required String name,
    required String imageURL,
    required String description,
    required String collectionName,
    required String collectionSymbol,
    required String collectionAddress,
  }) = _Collectible;

  factory Collectible.fromJson(Map<String, dynamic> json) =>
      _$CollectibleFromJson(json);
}
