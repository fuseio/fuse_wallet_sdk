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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthDto _$AuthDtoFromJson(Map<String, dynamic> json) {
  return _AuthDto.fromJson(json);
}

/// @nodoc
mixin _$AuthDto {
  String get ownerAddress => throw _privateConstructorUsedError;
  String? get smartWalletAddress => throw _privateConstructorUsedError;
  String get signature => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;

  /// Serializes this AuthDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthDtoCopyWith<AuthDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDtoCopyWith<$Res> {
  factory $AuthDtoCopyWith(AuthDto value, $Res Function(AuthDto) then) =
      _$AuthDtoCopyWithImpl<$Res, AuthDto>;
  @useResult
  $Res call(
      {String ownerAddress,
      String? smartWalletAddress,
      String signature,
      String hash});
}

/// @nodoc
class _$AuthDtoCopyWithImpl<$Res, $Val extends AuthDto>
    implements $AuthDtoCopyWith<$Res> {
  _$AuthDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerAddress = null,
    Object? smartWalletAddress = freezed,
    Object? signature = null,
    Object? hash = null,
  }) {
    return _then(_value.copyWith(
      ownerAddress: null == ownerAddress
          ? _value.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      smartWalletAddress: freezed == smartWalletAddress
          ? _value.smartWalletAddress
          : smartWalletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$AuthDtoImplCopyWith<$Res> implements $AuthDtoCopyWith<$Res> {
  factory _$$AuthDtoImplCopyWith(
          _$AuthDtoImpl value, $Res Function(_$AuthDtoImpl) then) =
      __$$AuthDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String ownerAddress,
      String? smartWalletAddress,
      String signature,
      String hash});
}

/// @nodoc
class __$$AuthDtoImplCopyWithImpl<$Res>
    extends _$AuthDtoCopyWithImpl<$Res, _$AuthDtoImpl>
    implements _$$AuthDtoImplCopyWith<$Res> {
  __$$AuthDtoImplCopyWithImpl(
      _$AuthDtoImpl _value, $Res Function(_$AuthDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerAddress = null,
    Object? smartWalletAddress = freezed,
    Object? signature = null,
    Object? hash = null,
  }) {
    return _then(_$AuthDtoImpl(
      ownerAddress: null == ownerAddress
          ? _value.ownerAddress
          : ownerAddress // ignore: cast_nullable_to_non_nullable
              as String,
      smartWalletAddress: freezed == smartWalletAddress
          ? _value.smartWalletAddress
          : smartWalletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
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

@JsonSerializable(includeIfNull: false)
class _$AuthDtoImpl implements _AuthDto {
  _$AuthDtoImpl(
      {required this.ownerAddress,
      this.smartWalletAddress,
      required this.signature,
      required this.hash});

  factory _$AuthDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthDtoImplFromJson(json);

  @override
  final String ownerAddress;
  @override
  final String? smartWalletAddress;
  @override
  final String signature;
  @override
  final String hash;

  @override
  String toString() {
    return 'AuthDto(ownerAddress: $ownerAddress, smartWalletAddress: $smartWalletAddress, signature: $signature, hash: $hash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthDtoImpl &&
            (identical(other.ownerAddress, ownerAddress) ||
                other.ownerAddress == ownerAddress) &&
            (identical(other.smartWalletAddress, smartWalletAddress) ||
                other.smartWalletAddress == smartWalletAddress) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.hash, hash) || other.hash == hash));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, ownerAddress, smartWalletAddress, signature, hash);

  /// Create a copy of AuthDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthDtoImplCopyWith<_$AuthDtoImpl> get copyWith =>
      __$$AuthDtoImplCopyWithImpl<_$AuthDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthDtoImplToJson(
      this,
    );
  }
}

abstract class _AuthDto implements AuthDto {
  factory _AuthDto(
      {required final String ownerAddress,
      final String? smartWalletAddress,
      required final String signature,
      required final String hash}) = _$AuthDtoImpl;

  factory _AuthDto.fromJson(Map<String, dynamic> json) = _$AuthDtoImpl.fromJson;

  @override
  String get ownerAddress;
  @override
  String? get smartWalletAddress;
  @override
  String get signature;
  @override
  String get hash;

  /// Create a copy of AuthDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthDtoImplCopyWith<_$AuthDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
