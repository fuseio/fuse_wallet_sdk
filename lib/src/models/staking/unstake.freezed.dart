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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnstakeRequestBody _$UnstakeRequestBodyFromJson(Map<String, dynamic> json) {
  return _UnstakeRequestBody.fromJson(json);
}

/// @nodoc
mixin _$UnstakeRequestBody {
  String get accountAddress => throw _privateConstructorUsedError;
  String get tokenAmount => throw _privateConstructorUsedError;
  String get tokenAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_UnstakeRequestBodyCopyWith<$Res>
    implements $UnstakeRequestBodyCopyWith<$Res> {
  factory _$$_UnstakeRequestBodyCopyWith(_$_UnstakeRequestBody value,
          $Res Function(_$_UnstakeRequestBody) then) =
      __$$_UnstakeRequestBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accountAddress, String tokenAmount, String tokenAddress});
}

/// @nodoc
class __$$_UnstakeRequestBodyCopyWithImpl<$Res>
    extends _$UnstakeRequestBodyCopyWithImpl<$Res, _$_UnstakeRequestBody>
    implements _$$_UnstakeRequestBodyCopyWith<$Res> {
  __$$_UnstakeRequestBodyCopyWithImpl(
      _$_UnstakeRequestBody _value, $Res Function(_$_UnstakeRequestBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountAddress = null,
    Object? tokenAmount = null,
    Object? tokenAddress = null,
  }) {
    return _then(_$_UnstakeRequestBody(
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
class _$_UnstakeRequestBody implements _UnstakeRequestBody {
  _$_UnstakeRequestBody(
      {required this.accountAddress,
      required this.tokenAmount,
      required this.tokenAddress});

  factory _$_UnstakeRequestBody.fromJson(Map<String, dynamic> json) =>
      _$$_UnstakeRequestBodyFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnstakeRequestBody &&
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
  _$$_UnstakeRequestBodyCopyWith<_$_UnstakeRequestBody> get copyWith =>
      __$$_UnstakeRequestBodyCopyWithImpl<_$_UnstakeRequestBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnstakeRequestBodyToJson(
      this,
    );
  }
}

abstract class _UnstakeRequestBody implements UnstakeRequestBody {
  factory _UnstakeRequestBody(
      {required final String accountAddress,
      required final String tokenAmount,
      required final String tokenAddress}) = _$_UnstakeRequestBody;

  factory _UnstakeRequestBody.fromJson(Map<String, dynamic> json) =
      _$_UnstakeRequestBody.fromJson;

  @override
  String get accountAddress;
  @override
  String get tokenAmount;
  @override
  String get tokenAddress;
  @override
  @JsonKey(ignore: true)
  _$$_UnstakeRequestBodyCopyWith<_$_UnstakeRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

UnstakeResponseBody _$UnstakeResponseBodyFromJson(Map<String, dynamic> json) {
  return _UnstakeResponseBody.fromJson(json);
}

/// @nodoc
mixin _$UnstakeResponseBody {
  String get contractAddress => throw _privateConstructorUsedError;
  String get encodedABI => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_UnstakeResponseBodyCopyWith<$Res>
    implements $UnstakeResponseBodyCopyWith<$Res> {
  factory _$$_UnstakeResponseBodyCopyWith(_$_UnstakeResponseBody value,
          $Res Function(_$_UnstakeResponseBody) then) =
      __$$_UnstakeResponseBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String contractAddress, String encodedABI});
}

/// @nodoc
class __$$_UnstakeResponseBodyCopyWithImpl<$Res>
    extends _$UnstakeResponseBodyCopyWithImpl<$Res, _$_UnstakeResponseBody>
    implements _$$_UnstakeResponseBodyCopyWith<$Res> {
  __$$_UnstakeResponseBodyCopyWithImpl(_$_UnstakeResponseBody _value,
      $Res Function(_$_UnstakeResponseBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contractAddress = null,
    Object? encodedABI = null,
  }) {
    return _then(_$_UnstakeResponseBody(
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
class _$_UnstakeResponseBody implements _UnstakeResponseBody {
  _$_UnstakeResponseBody(
      {required this.contractAddress, required this.encodedABI});

  factory _$_UnstakeResponseBody.fromJson(Map<String, dynamic> json) =>
      _$$_UnstakeResponseBodyFromJson(json);

  @override
  final String contractAddress;
  @override
  final String encodedABI;

  @override
  String toString() {
    return 'UnstakeResponseBody(contractAddress: $contractAddress, encodedABI: $encodedABI)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnstakeResponseBody &&
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
  _$$_UnstakeResponseBodyCopyWith<_$_UnstakeResponseBody> get copyWith =>
      __$$_UnstakeResponseBodyCopyWithImpl<_$_UnstakeResponseBody>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnstakeResponseBodyToJson(
      this,
    );
  }
}

abstract class _UnstakeResponseBody implements UnstakeResponseBody {
  factory _UnstakeResponseBody(
      {required final String contractAddress,
      required final String encodedABI}) = _$_UnstakeResponseBody;

  factory _UnstakeResponseBody.fromJson(Map<String, dynamic> json) =
      _$_UnstakeResponseBody.fromJson;

  @override
  String get contractAddress;
  @override
  String get encodedABI;
  @override
  @JsonKey(ignore: true)
  _$$_UnstakeResponseBodyCopyWith<_$_UnstakeResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}
