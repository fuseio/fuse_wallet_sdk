import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

/// An [Address] class represents the address data.
@freezed
class Address with _$Address {
  /// Creates an [Address] instance.
  factory Address({
    required String id,
  }) = _Address;

  /// Creates an [Address] instance from a JSON map.
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
