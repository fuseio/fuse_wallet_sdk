import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.dto.freezed.dart';
part 'auth.dto.g.dart';

/// Represents an authentication object containing the owner's address, signature, and hash.
///
/// Use [AuthDto.fromJson] to create an instance from a JSON object.
@freezed
class AuthDto with _$AuthDto {
  /// Constructs an AuthDto instance.
  ///
  /// Parameters:
  /// - [ownerAddress] – The owner's address.
  /// - [signature] – The owner's signature of the hash.
  /// - [hash] – The hash of the data to be signed.
  factory AuthDto({
    required String ownerAddress,
    required String signature,
    required String hash,
  }) = _AuthDto;

  /// Creates an AuthDto instance from a JSON object.
  ///
  /// Parameters:
  /// - [json] – A map representing a JSON object.
  ///
  /// Returns an AuthDto instance.
  factory AuthDto.fromJson(Map<String, dynamic> json) =>
      _$AuthDtoFromJson(json);
}
