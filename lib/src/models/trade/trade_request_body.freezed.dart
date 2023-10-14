// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TradeRequestBody _$TradeRequestBodyFromJson(Map<String, dynamic> json) {
  return _TradeRequestBody.fromJson(json);
}

/// @nodoc
mixin _$TradeRequestBody {
  String get currencyIn => throw _privateConstructorUsedError;
  String get currencyOut => throw _privateConstructorUsedError;
  String get amountIn => throw _privateConstructorUsedError;
  String get recipient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradeRequestBodyCopyWith<TradeRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeRequestBodyCopyWith<$Res> {
  factory $TradeRequestBodyCopyWith(
          TradeRequestBody value, $Res Function(TradeRequestBody) then) =
      _$TradeRequestBodyCopyWithImpl<$Res, TradeRequestBody>;
  @useResult
  $Res call(
      {String currencyIn,
      String currencyOut,
      String amountIn,
      String recipient});
}

/// @nodoc
class _$TradeRequestBodyCopyWithImpl<$Res, $Val extends TradeRequestBody>
    implements $TradeRequestBodyCopyWith<$Res> {
  _$TradeRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyIn = null,
    Object? currencyOut = null,
    Object? amountIn = null,
    Object? recipient = null,
  }) {
    return _then(_value.copyWith(
      currencyIn: null == currencyIn
          ? _value.currencyIn
          : currencyIn // ignore: cast_nullable_to_non_nullable
              as String,
      currencyOut: null == currencyOut
          ? _value.currencyOut
          : currencyOut // ignore: cast_nullable_to_non_nullable
              as String,
      amountIn: null == amountIn
          ? _value.amountIn
          : amountIn // ignore: cast_nullable_to_non_nullable
              as String,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeRequestBodyImplCopyWith<$Res>
    implements $TradeRequestBodyCopyWith<$Res> {
  factory _$$TradeRequestBodyImplCopyWith(_$TradeRequestBodyImpl value,
          $Res Function(_$TradeRequestBodyImpl) then) =
      __$$TradeRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currencyIn,
      String currencyOut,
      String amountIn,
      String recipient});
}

/// @nodoc
class __$$TradeRequestBodyImplCopyWithImpl<$Res>
    extends _$TradeRequestBodyCopyWithImpl<$Res, _$TradeRequestBodyImpl>
    implements _$$TradeRequestBodyImplCopyWith<$Res> {
  __$$TradeRequestBodyImplCopyWithImpl(_$TradeRequestBodyImpl _value,
      $Res Function(_$TradeRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyIn = null,
    Object? currencyOut = null,
    Object? amountIn = null,
    Object? recipient = null,
  }) {
    return _then(_$TradeRequestBodyImpl(
      currencyIn: null == currencyIn
          ? _value.currencyIn
          : currencyIn // ignore: cast_nullable_to_non_nullable
              as String,
      currencyOut: null == currencyOut
          ? _value.currencyOut
          : currencyOut // ignore: cast_nullable_to_non_nullable
              as String,
      amountIn: null == amountIn
          ? _value.amountIn
          : amountIn // ignore: cast_nullable_to_non_nullable
              as String,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeRequestBodyImpl implements _TradeRequestBody {
  _$TradeRequestBodyImpl(
      {this.currencyIn = '',
      this.currencyOut = '',
      this.amountIn = '',
      this.recipient = ''});

  factory _$TradeRequestBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeRequestBodyImplFromJson(json);

  @override
  @JsonKey()
  final String currencyIn;
  @override
  @JsonKey()
  final String currencyOut;
  @override
  @JsonKey()
  final String amountIn;
  @override
  @JsonKey()
  final String recipient;

  @override
  String toString() {
    return 'TradeRequestBody(currencyIn: $currencyIn, currencyOut: $currencyOut, amountIn: $amountIn, recipient: $recipient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeRequestBodyImpl &&
            (identical(other.currencyIn, currencyIn) ||
                other.currencyIn == currencyIn) &&
            (identical(other.currencyOut, currencyOut) ||
                other.currencyOut == currencyOut) &&
            (identical(other.amountIn, amountIn) ||
                other.amountIn == amountIn) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currencyIn, currencyOut, amountIn, recipient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeRequestBodyImplCopyWith<_$TradeRequestBodyImpl> get copyWith =>
      __$$TradeRequestBodyImplCopyWithImpl<_$TradeRequestBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _TradeRequestBody implements TradeRequestBody {
  factory _TradeRequestBody(
      {final String currencyIn,
      final String currencyOut,
      final String amountIn,
      final String recipient}) = _$TradeRequestBodyImpl;

  factory _TradeRequestBody.fromJson(Map<String, dynamic> json) =
      _$TradeRequestBodyImpl.fromJson;

  @override
  String get currencyIn;
  @override
  String get currencyOut;
  @override
  String get amountIn;
  @override
  String get recipient;
  @override
  @JsonKey(ignore: true)
  _$$TradeRequestBodyImplCopyWith<_$TradeRequestBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
