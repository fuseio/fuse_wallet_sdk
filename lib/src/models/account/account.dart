import 'dart:convert';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuse_wallet_sdk/src/models/collection/collectible.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  factory Account({
    required String id,
    required String address,
    @CollectibleConverter() required List<Collectible> collectibles,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

class CollectibleConverter
    implements JsonConverter<List<Collectible>, List<dynamic>> {
  const CollectibleConverter();

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

  @override
  List<dynamic> toJson(List<Collectible> instance) => instance.toList();
}
