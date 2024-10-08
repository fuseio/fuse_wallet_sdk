// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unstake.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnstakeRequestBody _$UnstakeRequestBodyFromJson(Map<String, dynamic> json) {
  return _UnstakeRequestBody.fromJson(json);
}

/// @nodoc
mixin _$UnstakeRequestBody {
  String get accountAddress => throw _privateConstructorUsedError;
  String get tokenAmount => throw _privateConstructorUsedError;
  String get tokenAddress => throw _privateConstructorUsedError;

  /// Serializes this UnstakeRequestBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnstakeRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnstakeRequestBodyCopyWith<UnstakeRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnstakeRequestBodyCopyWith<$Res> {
  factory $UnstakeRequestBodyCopyWith(
          UnstakeRequestBody value, $Res Function(UnstakeRequestBody) then) =
      _$UnstakeRequestBodyCopyWithImpl<$Res, UnstakeRequestBody>;
  @useResult
  $Res call({String accountAddress, String tokenAmount, String tokenAddress});
}

/// @nodoc
class _$UnstakeRequestBodyCopyWithImpl<$Res, $Val extends UnstakeRequestBody>
    implements $UnstakeRequestBodyCopyWith<$Res> {
  _$UnstakeRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnstakeRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountAddress = null,
    Object? tokenAmount = null,
    Object? tokenAddress = null,
  }) {
    return _then(_value.copyWith(
      accountAddress: null == accountAddress
          ? _value.accountAddress
          : accountAddress // ignore: cast_nullable_to_non_nullable
              as String,
      tokenAmount: null == tokenAmount
          ? _value.tokenAmount
          : tokenAmount // ignore: cast_nullable_to_non_nullable
              as String,
      tokenAddress: null == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnstakeRequestBodyImplCopyWith<$Res>
    implements $UnstakeRequestBodyCopyWith<$Res> {
  factory _$$UnstakeRequestBodyImplCopyWith(_$UnstakeRequestBodyImpl value,
          $Res Function(_$UnstakeRequestBodyImpl) then) =
      __$$UnstakeRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accountAddress, String tokenAmount, String tokenAddress});
}

/// @nodoc
class __$$UnstakeRequestBodyImplCopyWithImpl<$Res>
    extends _$UnstakeRequestBodyCopyWithImpl<$Res, _$UnstakeRequestBodyImpl>
    implements _$$UnstakeRequestBodyImplCopyWith<$Res> {
  __$$UnstakeRequestBodyImplCopyWithImpl(_$UnstakeRequestBodyImpl _value,
      $Res Function(_$UnstakeRequestBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnstakeRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountAddress = null,
    Object? tokenAmount = null,
    Object? tokenAddress = null,
  }) {
    return _then(_$UnstakeRequestBodyImpl(
      accountAddress: null == accountAddress
          ? _value.accountAddress
          : accountAddress // ignore: cast_nullable_to_non_nullable
              as String,
      tokenAmount: null == tokenAmount
          ? _value.tokenAmount
          : tokenAmount // ignore: cast_nullable_to_non_nullable
              as String,
      tokenAddress: null == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnstakeRequestBodyImpl implements _UnstakeRequestBody {
  _$UnstakeRequestBodyImpl(
      {required this.accountAddress,
      required this.tokenAmount,
      required this.tokenAddress});

  factory _$UnstakeRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnstakeRequestBodyImplFromJson(json);

  @override
  final String accountAddress;
  @override
  final String tokenAmount;
  @override
  final String tokenAddress;

  @override
  String toString() {
    return 'UnstakeRequestBody(accountAddress: $accountAddress, tokenAmount: $tokenAmount, tokenAddress: $tokenAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnstakeRequestBodyImpl &&
            (identical(other.accountAddress, accountAddress) ||
                other.accountAddress == accountAddress) &&
            (identical(other.tokenAmount, tokenAmount) ||
                other.tokenAmount == tokenAmount) &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accountAddress, tokenAmount, tokenAddress);

  /// Create a copy of UnstakeRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnstakeRequestBodyImplCopyWith<_$UnstakeRequestBodyImpl> get copyWith =>
      __$$UnstakeRequestBodyImplCopyWithImpl<_$UnstakeRequestBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnstakeRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _UnstakeRequestBody implements UnstakeRequestBody {
  factory _UnstakeRequestBody(
      {required final String accountAddress,
      required final String tokenAmount,
      required final String tokenAddress}) = _$UnstakeRequestBodyImpl;

  factory _UnstakeRequestBody.fromJson(Map<String, dynamic> json) =
      _$UnstakeRequestBodyImpl.fromJson;

  @override
  String get accountAddress;
  @override
  String get tokenAmount;
  @override
  String get tokenAddress;

  /// Create a copy of UnstakeRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnstakeRequestBodyImplCopyWith<_$UnstakeRequestBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnstakeResponseBody _$UnstakeResponseBodyFromJson(Map<String, dynamic> json) {
  return _UnstakeResponseBody.fromJson(json);
}

/// @nodoc
mixin _$UnstakeResponseBody {
  String get contractAddress => throw _privateConstructorUsedError;
  String get encodedABI => throw _privateConstructorUsedError;

  /// Serializes this UnstakeResponseBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnstakeResponseBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnstakeResponseBodyCopyWith<UnstakeResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnstakeResponseBodyCopyWith<$Res> {
  factory $UnstakeResponseBodyCopyWith(
          UnstakeResponseBody value, $Res Function(UnstakeResponseBody) then) =
      _$UnstakeResponseBodyCopyWithImpl<$Res, UnstakeResponseBody>;
  @useResult
  $Res call({String contractAddress, String encodedABI});
}

/// @nodoc
class _$UnstakeResponseBodyCopyWithImpl<$Res, $Val extends UnstakeResponseBody>
    implements $UnstakeResponseBodyCopyWith<$Res> {
  _$UnstakeResponseBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnstakeResponseBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractAddress = null,
    Object? encodedABI = null,
  }) {
    return _then(_value.copyWith(
      contractAddress: null == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String,
      encodedABI: null == encodedABI
          ? _value.encodedABI
          : encodedABI // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnstakeResponseBodyImplCopyWith<$Res>
    implements $UnstakeResponseBodyCopyWith<$Res> {
  factory _$$UnstakeResponseBodyImplCopyWith(_$UnstakeResponseBodyImpl value,
          $Res Function(_$UnstakeResponseBodyImpl) then) =
      __$$UnstakeResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String contractAddress, String encodedABI});
}

/// @nodoc
class __$$UnstakeResponseBodyImplCopyWithImpl<$Res>
    extends _$UnstakeResponseBodyCopyWithImpl<$Res, _$UnstakeResponseBodyImpl>
    implements _$$UnstakeResponseBodyImplCopyWith<$Res> {
  __$$UnstakeResponseBodyImplCopyWithImpl(_$UnstakeResponseBodyImpl _value,
      $Res Function(_$UnstakeResponseBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnstakeResponseBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractAddress = null,
    Object? encodedABI = null,
  }) {
    return _then(_$UnstakeResponseBodyImpl(
      contractAddress: null == contractAddress
          ? _value.contractAddress
          : contractAddress // ignore: cast_nullable_to_non_nullable
              as String,
      encodedABI: null == encodedABI
          ? _value.encodedABI
          : encodedABI // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnstakeResponseBodyImpl implements _UnstakeResponseBody {
  _$UnstakeResponseBodyImpl(
      {required this.contractAddress, required this.encodedABI});

  factory _$UnstakeResponseBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnstakeResponseBodyImplFromJson(json);

  @override
  final String contractAddress;
  @override
  final String encodedABI;

  @override
  String toString() {
    return 'UnstakeResponseBody(contractAddress: $contractAddress, encodedABI: $encodedABI)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnstakeResponseBodyImpl &&
            (identical(other.contractAddress, contractAddress) ||
                other.contractAddress == contractAddress) &&
            (identical(other.encodedABI, encodedABI) ||
                other.encodedABI == encodedABI));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, contractAddress, encodedABI);

  /// Create a copy of UnstakeResponseBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnstakeResponseBodyImplCopyWith<_$UnstakeResponseBodyImpl> get copyWith =>
      __$$UnstakeResponseBodyImplCopyWithImpl<_$UnstakeResponseBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnstakeResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _UnstakeResponseBody implements UnstakeResponseBody {
  factory _UnstakeResponseBody(
      {required final String contractAddress,
      required final String encodedABI}) = _$UnstakeResponseBodyImpl;

  factory _UnstakeResponseBody.fromJson(Map<String, dynamic> json) =
      _$UnstakeResponseBodyImpl.fromJson;

  @override
  String get contractAddress;
  @override
  String get encodedABI;

  /// Create a copy of UnstakeResponseBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnstakeResponseBodyImplCopyWith<_$UnstakeResponseBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
