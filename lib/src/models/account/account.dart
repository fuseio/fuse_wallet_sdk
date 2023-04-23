import 'dart:convert';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuse_wallet_sdk/src/models/collection/collectible.dart';

part 'account.freezed.dart';
part 'account.g.dart';

/// An [Account] class represents the account data.
@freezed
class Account with _$Account {
  /// Creates an [Account] instance.
  factory Account({
    required String id,
    required String address,
    @CollectibleConverter() required List<Collectible> collectibles,
  }) = _Account;

  /// Creates an [Account] instance from a JSON map.
  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

/// A custom converter for converting between JSON and a list of [Collectible] instances.
class CollectibleConverter
    implements JsonConverter<List<Collectible>, List<dynamic>> {
  /// Creates an instance of [CollectibleConverter].
  const CollectibleConverter();

  /// Converts the given JSON [List] to a list of [Collectible] instances.
  @override
  List<Collectible> fromJson(List<dynamic>? json) {
    if (json == null) {
      return [];
    } else {
      return json.map(
        (e) {
          final String descriptorUri = e['descriptorUri'];
          if (descriptorUri.startsWith('data:application/json')) {
            final Uint8List decodedBytes = base64.decode(
              descriptorUri.split(',').last,
            );
            final Map<String, dynamic> decodedMetadata = jsonDecode(
              utf8.decode(decodedBytes),
            );

            return Collectible.fromJson(e).copyWith(
              metadata: decodedMetadata,
            );
          }

          return Collectible.fromJson(e);
        },
      ).toList();
    }
  }

  /// Converts the given list of [Collectible] instances to a JSON [List].
  @override
  List<dynamic> toJson(List<Collectible> instance) => instance.toList();
}
