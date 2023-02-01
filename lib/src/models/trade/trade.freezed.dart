// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Trade _$TradeFromJson(Map<String, dynamic> json) {
  return _Trade.fromJson(json);
}

/// @nodoc
mixin _$Trade {
  String get inputAmount => throw _privateConstructorUsedError;
  String get outputAmount => throw _privateConstructorUsedError;
  List<String> get route => throw _privateConstructorUsedError;
  String get inputToken => throw _privateConstructorUsedError;
  String get outputToken => throw _privateConstructorUsedError;
  String get executionPrice => throw _privateConstructorUsedError;
  String get nextMidPrice => throw _privateConstructorUsedError;
  String get priceImpact => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradeCopyWith<Trade> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeCopyWith<$Res> {
  factory $TradeCopyWith(Trade value, $Res Function(Trade) then) =
      _$TradeCopyWithImpl<$Res, Trade>;
  @useResult
  $Res call(
      {String inputAmount,
      String outputAmount,
      List<String> route,
      String inputToken,
      String outputToken,
      String executionPrice,
      String nextMidPrice,
      String priceImpact});
}

/// @nodoc
class _$TradeCopyWithImpl<$Res, $Val extends Trade>
    implements $TradeCopyWith<$Res> {
  _$TradeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputAmount = null,
    Object? outputAmount = null,
    Object? route = null,
    Object? inputToken = null,
    Object? outputToken = null,
    Object? executionPrice = null,
    Object? nextMidPrice = null,
    Object? priceImpact = null,
  }) {
    return _then(_value.copyWith(
      inputAmount: null == inputAmount
          ? _value.inputAmount
          : inputAmount // ignore: cast_nullable_to_non_nullable
              as String,
      outputAmount: null == outputAmount
          ? _value.outputAmount
          : outputAmount // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as List<String>,
      inputToken: null == inputToken
          ? _value.inputToken
          : inputToken // ignore: cast_nullable_to_non_nullable
              as String,
      outputToken: null == outputToken
          ? _value.outputToken
          : outputToken // ignore: cast_nullable_to_non_nullable
              as String,
      executionPrice: null == executionPrice
          ? _value.executionPrice
          : executionPrice // ignore: cast_nullable_to_non_nullable
              as String,
      nextMidPrice: null == nextMidPrice
          ? _value.nextMidPrice
          : nextMidPrice // ignore: cast_nullable_to_non_nullable
              as String,
      priceImpact: null == priceImpact
          ? _value.priceImpact
          : priceImpact // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TradeCopyWith<$Res> implements $TradeCopyWith<$Res> {
  factory _$$_TradeCopyWith(_$_Trade value, $Res Function(_$_Trade) then) =
      __$$_TradeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String inputAmount,
      String outputAmount,
      List<String> route,
      String inputToken,
      String outputToken,
      String executionPrice,
      String nextMidPrice,
      String priceImpact});
}

/// @nodoc
class __$$_TradeCopyWithImpl<$Res> extends _$TradeCopyWithImpl<$Res, _$_Trade>
    implements _$$_TradeCopyWith<$Res> {
  __$$_TradeCopyWithImpl(_$_Trade _value, $Res Function(_$_Trade) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputAmount = null,
    Object? outputAmount = null,
    Object? route = null,
    Object? inputToken = null,
    Object? outputToken = null,
    Object? executionPrice = null,
    Object? nextMidPrice = null,
    Object? priceImpact = null,
  }) {
    return _then(_$_Trade(
      inputAmount: null == inputAmount
          ? _value.inputAmount
          : inputAmount // ignore: cast_nullable_to_non_nullable
              as String,
      outputAmount: null == outputAmount
          ? _value.outputAmount
          : outputAmount // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as List<String>,
      inputToken: null == inputToken
          ? _value.inputToken
          : inputToken // ignore: cast_nullable_to_non_nullable
              as String,
      outputToken: null == outputToken
          ? _value.outputToken
          : outputToken // ignore: cast_nullable_to_non_nullable
              as String,
      executionPrice: null == executionPrice
          ? _value.executionPrice
          : executionPrice // ignore: cast_nullable_to_non_nullable
              as String,
      nextMidPrice: null == nextMidPrice
          ? _value.nextMidPrice
          : nextMidPrice // ignore: cast_nullable_to_non_nullable
              as String,
      priceImpact: null == priceImpact
          ? _value.priceImpact
          : priceImpact // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trade implements _Trade {
  _$_Trade(
      {required this.inputAmount,
      required this.outputAmount,
      required this.route,
      required this.inputToken,
      required this.outputToken,
      required this.executionPrice,
      required this.nextMidPrice,
      required this.priceImpact});

  factory _$_Trade.fromJson(Map<String, dynamic> json) =>
      _$$_TradeFromJson(json);

  @override
  final String inputAmount;
  @override
  final String outputAmount;
  @override
  final List<String> route;
  @override
  final String inputToken;
  @override
  final String outputToken;
  @override
  final String executionPrice;
  @override
  final String nextMidPrice;
  @override
  final String priceImpact;

  @override
  String toString() {
    return 'Trade(inputAmount: $inputAmount, outputAmount: $outputAmount, route: $route, inputToken: $inputToken, outputToken: $outputToken, executionPrice: $executionPrice, nextMidPrice: $nextMidPrice, priceImpact: $priceImpact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trade &&
            (identical(other.inputAmount, inputAmount) ||
                other.inputAmount == inputAmount) &&
            (identical(other.outputAmount, outputAmount) ||
                other.outputAmount == outputAmount) &&
            const DeepCollectionEquality().equals(other.route, route) &&
            (identical(other.inputToken, inputToken) ||
                other.inputToken == inputToken) &&
            (identical(other.outputToken, outputToken) ||
                other.outputToken == outputToken) &&
            (identical(other.executionPrice, executionPrice) ||
                other.executionPrice == executionPrice) &&
            (identical(other.nextMidPrice, nextMidPrice) ||
                other.nextMidPrice == nextMidPrice) &&
            (identical(other.priceImpact, priceImpact) ||
                other.priceImpact == priceImpact));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      inputAmount,
      outputAmount,
      const DeepCollectionEquality().hash(route),
      inputToken,
      outputToken,
      executionPrice,
      nextMidPrice,
      priceImpact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TradeCopyWith<_$_Trade> get copyWith =>
      __$$_TradeCopyWithImpl<_$_Trade>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TradeToJson(
      this,
    );
  }
}

abstract class _Trade implements Trade {
  factory _Trade(
      {required final String inputAmount,
      required final String outputAmount,
      required final List<String> route,
      required final String inputToken,
      required final String outputToken,
      required final String executionPrice,
      required final String nextMidPrice,
      required final String priceImpact}) = _$_Trade;

  factory _Trade.fromJson(Map<String, dynamic> json) = _$_Trade.fromJson;

  @override
  String get inputAmount;
  @override
  String get outputAmount;
  @override
  List<String> get route;
  @override
  String get inputToken;
  @override
  String get outputToken;
  @override
  String get executionPrice;
  @override
  String get nextMidPrice;
  @override
  String get priceImpact;
  @override
  @JsonKey(ignore: true)
  _$$_TradeCopyWith<_$_Trade> get copyWith =>
      throw _privateConstructorUsedError;
}
