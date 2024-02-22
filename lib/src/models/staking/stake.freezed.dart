// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stake.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StakeRequestBody _$StakeRequestBodyFromJson(Map<String, dynamic> json) {
  return _StakeRequestBody.fromJson(json);
}

/// @nodoc
mixin _$StakeRequestBody {
  String get accountAddress => throw _privateConstructorUsedError;
  String get tokenAmount => throw _privateConstructorUsedError;
  String get tokenAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StakeRequestBodyCopyWith<StakeRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakeRequestBodyCopyWith<$Res> {
  factory $StakeRequestBodyCopyWith(
          StakeRequestBody value, $Res Function(StakeRequestBody) then) =
      _$StakeRequestBodyCopyWithImpl<$Res, StakeRequestBody>;
  @useResult
  $Res call({String accountAddress, String tokenAmount, String tokenAddress});
}

/// @nodoc
class _$StakeRequestBodyCopyWithImpl<$Res, $Val extends StakeRequestBody>
    implements $StakeRequestBodyCopyWith<$Res> {
  _$StakeRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$StakeRequestBodyImplCopyWith<$Res>
    implements $StakeRequestBodyCopyWith<$Res> {
  factory _$$StakeRequestBodyImplCopyWith(_$StakeRequestBodyImpl value,
          $Res Function(_$StakeRequestBodyImpl) then) =
      __$$StakeRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accountAddress, String tokenAmount, String tokenAddress});
}

/// @nodoc
class __$$StakeRequestBodyImplCopyWithImpl<$Res>
    extends _$StakeRequestBodyCopyWithImpl<$Res, _$StakeRequestBodyImpl>
    implements _$$StakeRequestBodyImplCopyWith<$Res> {
  __$$StakeRequestBodyImplCopyWithImpl(_$StakeRequestBodyImpl _value,
      $Res Function(_$StakeRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountAddress = null,
    Object? tokenAmount = null,
    Object? tokenAddress = null,
  }) {
    return _then(_$StakeRequestBodyImpl(
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
class _$StakeRequestBodyImpl implements _StakeRequestBody {
  _$StakeRequestBodyImpl(
      {required this.accountAddress,
      required this.tokenAmount,
      required this.tokenAddress});

  factory _$StakeRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$StakeRequestBodyImplFromJson(json);

  @override
  final String accountAddress;
  @override
  final String tokenAmount;
  @override
  final String tokenAddress;

  @override
  String toString() {
    return 'StakeRequestBody(accountAddress: $accountAddress, tokenAmount: $tokenAmount, tokenAddress: $tokenAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeRequestBodyImpl &&
            (identical(other.accountAddress, accountAddress) ||
                other.accountAddress == accountAddress) &&
            (identical(other.tokenAmount, tokenAmount) ||
                other.tokenAmount == tokenAmount) &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accountAddress, tokenAmount, tokenAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeRequestBodyImplCopyWith<_$StakeRequestBodyImpl> get copyWith =>
      __$$StakeRequestBodyImplCopyWithImpl<_$StakeRequestBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StakeRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _StakeRequestBody implements StakeRequestBody {
  factory _StakeRequestBody(
      {required final String accountAddress,
      required final String tokenAmount,
      required final String tokenAddress}) = _$StakeRequestBodyImpl;

  factory _StakeRequestBody.fromJson(Map<String, dynamic> json) =
      _$StakeRequestBodyImpl.fromJson;

  @override
  String get accountAddress;
  @override
  String get tokenAmount;
  @override
  String get tokenAddress;
  @override
  @JsonKey(ignore: true)
  _$$StakeRequestBodyImplCopyWith<_$StakeRequestBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StakeResponseBody _$StakeResponseBodyFromJson(Map<String, dynamic> json) {
  return _StakeResponseBody.fromJson(json);
}

/// @nodoc
mixin _$StakeResponseBody {
  String get contractAddress => throw _privateConstructorUsedError;
  String get encodedABI => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StakeResponseBodyCopyWith<StakeResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StakeResponseBodyCopyWith<$Res> {
  factory $StakeResponseBodyCopyWith(
          StakeResponseBody value, $Res Function(StakeResponseBody) then) =
      _$StakeResponseBodyCopyWithImpl<$Res, StakeResponseBody>;
  @useResult
  $Res call({String contractAddress, String encodedABI});
}

/// @nodoc
class _$StakeResponseBodyCopyWithImpl<$Res, $Val extends StakeResponseBody>
    implements $StakeResponseBodyCopyWith<$Res> {
  _$StakeResponseBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$StakeResponseBodyImplCopyWith<$Res>
    implements $StakeResponseBodyCopyWith<$Res> {
  factory _$$StakeResponseBodyImplCopyWith(_$StakeResponseBodyImpl value,
          $Res Function(_$StakeResponseBodyImpl) then) =
      __$$StakeResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String contractAddress, String encodedABI});
}

/// @nodoc
class __$$StakeResponseBodyImplCopyWithImpl<$Res>
    extends _$StakeResponseBodyCopyWithImpl<$Res, _$StakeResponseBodyImpl>
    implements _$$StakeResponseBodyImplCopyWith<$Res> {
  __$$StakeResponseBodyImplCopyWithImpl(_$StakeResponseBodyImpl _value,
      $Res Function(_$StakeResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractAddress = null,
    Object? encodedABI = null,
  }) {
    return _then(_$StakeResponseBodyImpl(
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
class _$StakeResponseBodyImpl implements _StakeResponseBody {
  _$StakeResponseBodyImpl(
      {required this.contractAddress, required this.encodedABI});

  factory _$StakeResponseBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$StakeResponseBodyImplFromJson(json);

  @override
  final String contractAddress;
  @override
  final String encodedABI;

  @override
  String toString() {
    return 'StakeResponseBody(contractAddress: $contractAddress, encodedABI: $encodedABI)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeResponseBodyImpl &&
            (identical(other.contractAddress, contractAddress) ||
                other.contractAddress == contractAddress) &&
            (identical(other.encodedABI, encodedABI) ||
                other.encodedABI == encodedABI));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contractAddress, encodedABI);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeResponseBodyImplCopyWith<_$StakeResponseBodyImpl> get copyWith =>
      __$$StakeResponseBodyImplCopyWithImpl<_$StakeResponseBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StakeResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _StakeResponseBody implements StakeResponseBody {
  factory _StakeResponseBody(
      {required final String contractAddress,
      required final String encodedABI}) = _$StakeResponseBodyImpl;

  factory _StakeResponseBody.fromJson(Map<String, dynamic> json) =
      _$StakeResponseBodyImpl.fromJson;

  @override
  String get contractAddress;
  @override
  String get encodedABI;
  @override
  @JsonKey(ignore: true)
  _$$StakeResponseBodyImplCopyWith<_$StakeResponseBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
