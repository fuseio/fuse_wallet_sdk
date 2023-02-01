import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.dto.freezed.dart';
part 'auth.dto.g.dart';

@freezed
class AuthDto with _$AuthDto {
  factory AuthDto({
    required String ownerAddress,
    required String signature,
    required String hash,
  }) = _AuthDto;

  factory AuthDto.fromJson(Map<String, dynamic> json) => _$AuthDtoFromJson(json);
}
