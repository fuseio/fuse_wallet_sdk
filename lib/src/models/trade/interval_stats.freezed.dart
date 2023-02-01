// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interval_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntervalStats _$IntervalStatsFromJson(Map<String, dynamic> json) {
  return _IntervalStats.fromJson(json);
}

/// @nodoc
mixin _$IntervalStats {
  num get timestamp => throw _privateConstructorUsedError;
  double get priceChange => throw _privateConstructorUsedError;
  double get previousPrice => throw _privateConstructorUsedError;
  double get currentPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntervalStatsCopyWith<IntervalStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntervalStatsCopyWith<$Res> {
  factory $IntervalStatsCopyWith(
          IntervalStats value, $Res Function(IntervalStats) then) =
      _$IntervalStatsCopyWithImpl<$Res, IntervalStats>;
  @useResult
  $Res call(
      {num timestamp,
      double priceChange,
      double previousPrice,
      double currentPrice});
}

/// @nodoc
class _$IntervalStatsCopyWithImpl<$Res, $Val extends IntervalStats>
    implements $IntervalStatsCopyWith<$Res> {
  _$IntervalStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? priceChange = null,
    Object? previousPrice = null,
    Object? currentPrice = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as num,
      priceChange: null == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double,
      previousPrice: null == previousPrice
          ? _value.previousPrice
          : previousPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IntervalStatsCopyWith<$Res>
    implements $IntervalStatsCopyWith<$Res> {
  factory _$$_IntervalStatsCopyWith(
          _$_IntervalStats value, $Res Function(_$_IntervalStats) then) =
      __$$_IntervalStatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num timestamp,
      double priceChange,
      double previousPrice,
      double currentPrice});
}

/// @nodoc
class __$$_IntervalStatsCopyWithImpl<$Res>
    extends _$IntervalStatsCopyWithImpl<$Res, _$_IntervalStats>
    implements _$$_IntervalStatsCopyWith<$Res> {
  __$$_IntervalStatsCopyWithImpl(
      _$_IntervalStats _value, $Res Function(_$_IntervalStats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? priceChange = null,
    Object? previousPrice = null,
    Object? currentPrice = null,
  }) {
    return _then(_$_IntervalStats(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as num,
      priceChange: null == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double,
      previousPrice: null == previousPrice
          ? _value.previousPrice
          : previousPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IntervalStats implements _IntervalStats {
  _$_IntervalStats(
      {required this.timestamp,
      required this.priceChange,
      required this.previousPrice,
      required this.currentPrice});

  factory _$_IntervalStats.fromJson(Map<String, dynamic> json) =>
      _$$_IntervalStatsFromJson(json);

  @override
  final num timestamp;
  @override
  final double priceChange;
  @override
  final double previousPrice;
  @override
  final double currentPrice;

  @override
  String toString() {
    return 'IntervalStats(timestamp: $timestamp, priceChange: $priceChange, previousPrice: $previousPrice, currentPrice: $currentPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntervalStats &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.priceChange, priceChange) ||
                other.priceChange == priceChange) &&
            (identical(other.previousPrice, previousPrice) ||
                other.previousPrice == previousPrice) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, timestamp, priceChange, previousPrice, currentPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IntervalStatsCopyWith<_$_IntervalStats> get copyWith =>
      __$$_IntervalStatsCopyWithImpl<_$_IntervalStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntervalStatsToJson(
      this,
    );
  }
}

abstract class _IntervalStats implements IntervalStats {
  factory _IntervalStats(
      {required final num timestamp,
      required final double priceChange,
      required final double previousPrice,
      required final double currentPrice}) = _$_IntervalStats;

  factory _IntervalStats.fromJson(Map<String, dynamic> json) =
      _$_IntervalStats.fromJson;

  @override
  num get timestamp;
  @override
  double get priceChange;
  @override
  double get previousPrice;
  @override
  double get currentPrice;
  @override
  @JsonKey(ignore: true)
  _$$_IntervalStatsCopyWith<_$_IntervalStats> get copyWith =>
      throw _privateConstructorUsedError;
}
