// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TradeRequest _$TradeRequestFromJson(Map<String, dynamic> json) {
  return _TradeRequest.fromJson(json);
}

/// @nodoc
mixin _$TradeRequest {
  String get inputToken => throw _privateConstructorUsedError;
  String get outputToken => throw _privateConstructorUsedError;
  BigInt get inputAmount => throw _privateConstructorUsedError;
  bool get exactIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradeRequestCopyWith<TradeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeRequestCopyWith<$Res> {
  factory $TradeRequestCopyWith(
          TradeRequest value, $Res Function(TradeRequest) then) =
      _$TradeRequestCopyWithImpl<$Res, TradeRequest>;
  @useResult
  $Res call(
      {String inputToken,
      String outputToken,
      BigInt inputAmount,
      bool exactIn});
}

/// @nodoc
class _$TradeRequestCopyWithImpl<$Res, $Val extends TradeRequest>
    implements $TradeRequestCopyWith<$Res> {
  _$TradeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputToken = null,
    Object? outputToken = null,
    Object? inputAmount = null,
    Object? exactIn = null,
  }) {
    return _then(_value.copyWith(
      inputToken: null == inputToken
          ? _value.inputToken
          : inputToken // ignore: cast_nullable_to_non_nullable
              as String,
      outputToken: null == outputToken
          ? _value.outputToken
          : outputToken // ignore: cast_nullable_to_non_nullable
              as String,
      inputAmount: null == inputAmount
          ? _value.inputAmount
          : inputAmount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      exactIn: null == exactIn
          ? _value.exactIn
          : exactIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeRequestImplCopyWith<$Res>
    implements $TradeRequestCopyWith<$Res> {
  factory _$$TradeRequestImplCopyWith(
          _$TradeRequestImpl value, $Res Function(_$TradeRequestImpl) then) =
      __$$TradeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String inputToken,
      String outputToken,
      BigInt inputAmount,
      bool exactIn});
}

/// @nodoc
class __$$TradeRequestImplCopyWithImpl<$Res>
    extends _$TradeRequestCopyWithImpl<$Res, _$TradeRequestImpl>
    implements _$$TradeRequestImplCopyWith<$Res> {
  __$$TradeRequestImplCopyWithImpl(
      _$TradeRequestImpl _value, $Res Function(_$TradeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputToken = null,
    Object? outputToken = null,
    Object? inputAmount = null,
    Object? exactIn = null,
  }) {
    return _then(_$TradeRequestImpl(
      inputToken: null == inputToken
          ? _value.inputToken
          : inputToken // ignore: cast_nullable_to_non_nullable
              as String,
      outputToken: null == outputToken
          ? _value.outputToken
          : outputToken // ignore: cast_nullable_to_non_nullable
              as String,
      inputAmount: null == inputAmount
          ? _value.inputAmount
          : inputAmount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      exactIn: null == exactIn
          ? _value.exactIn
          : exactIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeRequestImpl extends _TradeRequest {
  const _$TradeRequestImpl(
      {required this.inputToken,
      required this.outputToken,
      required this.inputAmount,
      required this.exactIn})
      : super._();

  factory _$TradeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeRequestImplFromJson(json);

  @override
  final String inputToken;
  @override
  final String outputToken;
  @override
  final BigInt inputAmount;
  @override
  final bool exactIn;

  @override
  String toString() {
    return 'TradeRequest(inputToken: $inputToken, outputToken: $outputToken, inputAmount: $inputAmount, exactIn: $exactIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeRequestImpl &&
            (identical(other.inputToken, inputToken) ||
                other.inputToken == inputToken) &&
            (identical(other.outputToken, outputToken) ||
                other.outputToken == outputToken) &&
            (identical(other.inputAmount, inputAmount) ||
                other.inputAmount == inputAmount) &&
            (identical(other.exactIn, exactIn) || other.exactIn == exactIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, inputToken, outputToken, inputAmount, exactIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeRequestImplCopyWith<_$TradeRequestImpl> get copyWith =>
      __$$TradeRequestImplCopyWithImpl<_$TradeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeRequestImplToJson(
      this,
    );
  }
}

abstract class _TradeRequest extends TradeRequest {
  const factory _TradeRequest(
      {required final String inputToken,
      required final String outputToken,
      required final BigInt inputAmount,
      required final bool exactIn}) = _$TradeRequestImpl;
  const _TradeRequest._() : super._();

  factory _TradeRequest.fromJson(Map<String, dynamic> json) =
      _$TradeRequestImpl.fromJson;

  @override
  String get inputToken;
  @override
  String get outputToken;
  @override
  BigInt get inputAmount;
  @override
  bool get exactIn;
  @override
  @JsonKey(ignore: true)
  _$$TradeRequestImplCopyWith<_$TradeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
