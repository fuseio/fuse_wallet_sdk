// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_call_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TradeCallParameters _$TradeCallParametersFromJson(Map<String, dynamic> json) {
  return _TradeCallParameters.fromJson(json);
}

/// @nodoc
mixin _$TradeCallParameters {
  String get methodName => throw _privateConstructorUsedError;
  List<dynamic> get args => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  Map<String, dynamic> get rawTxn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradeCallParametersCopyWith<TradeCallParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeCallParametersCopyWith<$Res> {
  factory $TradeCallParametersCopyWith(
          TradeCallParameters value, $Res Function(TradeCallParameters) then) =
      _$TradeCallParametersCopyWithImpl<$Res, TradeCallParameters>;
  @useResult
  $Res call(
      {String methodName,
      List<dynamic> args,
      String value,
      Map<String, dynamic> rawTxn});
}

/// @nodoc
class _$TradeCallParametersCopyWithImpl<$Res, $Val extends TradeCallParameters>
    implements $TradeCallParametersCopyWith<$Res> {
  _$TradeCallParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? methodName = null,
    Object? args = null,
    Object? value = null,
    Object? rawTxn = null,
  }) {
    return _then(_value.copyWith(
      methodName: null == methodName
          ? _value.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String,
      args: null == args
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      rawTxn: null == rawTxn
          ? _value.rawTxn
          : rawTxn // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeCallParametersImplCopyWith<$Res>
    implements $TradeCallParametersCopyWith<$Res> {
  factory _$$TradeCallParametersImplCopyWith(_$TradeCallParametersImpl value,
          $Res Function(_$TradeCallParametersImpl) then) =
      __$$TradeCallParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String methodName,
      List<dynamic> args,
      String value,
      Map<String, dynamic> rawTxn});
}

/// @nodoc
class __$$TradeCallParametersImplCopyWithImpl<$Res>
    extends _$TradeCallParametersCopyWithImpl<$Res, _$TradeCallParametersImpl>
    implements _$$TradeCallParametersImplCopyWith<$Res> {
  __$$TradeCallParametersImplCopyWithImpl(_$TradeCallParametersImpl _value,
      $Res Function(_$TradeCallParametersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? methodName = null,
    Object? args = null,
    Object? value = null,
    Object? rawTxn = null,
  }) {
    return _then(_$TradeCallParametersImpl(
      methodName: null == methodName
          ? _value.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String,
      args: null == args
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      rawTxn: null == rawTxn
          ? _value.rawTxn
          : rawTxn // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeCallParametersImpl implements _TradeCallParameters {
  _$TradeCallParametersImpl(
      {required this.methodName,
      required this.args,
      required this.value,
      required this.rawTxn});

  factory _$TradeCallParametersImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeCallParametersImplFromJson(json);

  @override
  final String methodName;
  @override
  final List<dynamic> args;
  @override
  final String value;
  @override
  final Map<String, dynamic> rawTxn;

  @override
  String toString() {
    return 'TradeCallParameters(methodName: $methodName, args: $args, value: $value, rawTxn: $rawTxn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeCallParametersImpl &&
            (identical(other.methodName, methodName) ||
                other.methodName == methodName) &&
            const DeepCollectionEquality().equals(other.args, args) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(other.rawTxn, rawTxn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      methodName,
      const DeepCollectionEquality().hash(args),
      value,
      const DeepCollectionEquality().hash(rawTxn));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeCallParametersImplCopyWith<_$TradeCallParametersImpl> get copyWith =>
      __$$TradeCallParametersImplCopyWithImpl<_$TradeCallParametersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeCallParametersImplToJson(
      this,
    );
  }
}

abstract class _TradeCallParameters implements TradeCallParameters {
  factory _TradeCallParameters(
      {required final String methodName,
      required final List<dynamic> args,
      required final String value,
      required final Map<String, dynamic> rawTxn}) = _$TradeCallParametersImpl;

  factory _TradeCallParameters.fromJson(Map<String, dynamic> json) =
      _$TradeCallParametersImpl.fromJson;

  @override
  String get methodName;
  @override
  List<dynamic> get args;
  @override
  String get value;
  @override
  Map<String, dynamic> get rawTxn;
  @override
  @JsonKey(ignore: true)
  _$$TradeCallParametersImplCopyWith<_$TradeCallParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
