// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthDto _$AuthDtoFromJson(Map<String, dynamic> json) {
  return _AuthDto.fromJson(json);
}

/// @nodoc
mixin _$AuthDto {
  String get ownerAddress => throw _privateConstructorUsedError;
  String get signature => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDtoCopyWith<AuthDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDtoCopyWith<$Res> {
  factory $AuthDtoCopyWith(AuthDto value, $Res Function(AuthDto) then) =
      _$AuthDtoCopyWithImpl<$Res, AuthDto>;
  @useResult
  $Res call({String ownerAddress, String signature, String hash});
}

/// @nodoc
class _$AuthDtoCopyWithImpl<$Res, $Val extends AuthDto>
    implements $AuthDtoCopyWith<$Res> {
  _$AuthDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerAddress = null,
    Object? signature = null,
    Object? hash = null,
  }) {
    return _then(_value.copyWith(
      ownerAddress: null == ownerAddress
          ? _value.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthDtoCopyWith<$Res> implements $AuthDtoCopyWith<$Res> {
  factory _$$_AuthDtoCopyWith(
          _$_AuthDto value, $Res Function(_$_AuthDto) then) =
      __$$_AuthDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ownerAddress, String signature, String hash});
}

/// @nodoc
class __$$_AuthDtoCopyWithImpl<$Res>
    extends _$AuthDtoCopyWithImpl<$Res, _$_AuthDto>
    implements _$$_AuthDtoCopyWith<$Res> {
  __$$_AuthDtoCopyWithImpl(_$_AuthDto _value, $Res Function(_$_AuthDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerAddress = null,
    Object? signature = null,
    Object? hash = null,
  }) {
    return _then(_$_AuthDto(
      ownerAddress: null == ownerAddress
          ? _value.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthDto implements _AuthDto {
  _$_AuthDto(
      {required this.ownerAddress,
      required this.signature,
      required this.hash});

  factory _$_AuthDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthDtoFromJson(json);

  @override
  final String ownerAddress;
  @override
  final String signature;
  @override
  final String hash;

  @override
  String toString() {
    return 'AuthDto(ownerAddress: $ownerAddress, signature: $signature, hash: $hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthDto &&
            (identical(other.ownerAddress, ownerAddress) ||
                other.ownerAddress == ownerAddress) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.hash, hash) || other.hash == hash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ownerAddress, signature, hash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthDtoCopyWith<_$_AuthDto> get copyWith =>
      __$$_AuthDtoCopyWithImpl<_$_AuthDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthDtoToJson(
      this,
    );
  }
}

abstract class _AuthDto implements AuthDto {
  factory _AuthDto(
      {required final String ownerAddress,
      required final String signature,
      required final String hash}) = _$_AuthDto;

  factory _AuthDto.fromJson(Map<String, dynamic> json) = _$_AuthDto.fromJson;

  @override
  String get ownerAddress;
  @override
  String get signature;
  @override
  String get hash;
  @override
  @JsonKey(ignore: true)
  _$$_AuthDtoCopyWith<_$_AuthDto> get copyWith =>
      throw _privateConstructorUsedError;
}
