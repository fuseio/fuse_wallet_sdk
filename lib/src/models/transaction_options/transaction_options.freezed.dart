// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TxOptions _$TxOptionsFromJson(Map<String, dynamic> json) {
  return _TxOptions.fromJson(json);
}

/// @nodoc
mixin _$TxOptions {
  String get feePerGas => throw _privateConstructorUsedError;
  int get feeIncrementPercentage => throw _privateConstructorUsedError;
  bool get isIndependentTransaction => throw _privateConstructorUsedError;
  bool get withRetry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxOptionsCopyWith<TxOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxOptionsCopyWith<$Res> {
  factory $TxOptionsCopyWith(TxOptions value, $Res Function(TxOptions) then) =
      _$TxOptionsCopyWithImpl<$Res, TxOptions>;
  @useResult
  $Res call(
      {String feePerGas,
      int feeIncrementPercentage,
      bool isIndependentTransaction,
      bool withRetry});
}

/// @nodoc
class _$TxOptionsCopyWithImpl<$Res, $Val extends TxOptions>
    implements $TxOptionsCopyWith<$Res> {
  _$TxOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feePerGas = null,
    Object? feeIncrementPercentage = null,
    Object? isIndependentTransaction = null,
    Object? withRetry = null,
  }) {
    return _then(_value.copyWith(
      feePerGas: null == feePerGas
          ? _value.feePerGas
          : feePerGas // ignore: cast_nullable_to_non_nullable
              as String,
      feeIncrementPercentage: null == feeIncrementPercentage
          ? _value.feeIncrementPercentage
          : feeIncrementPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      isIndependentTransaction: null == isIndependentTransaction
          ? _value.isIndependentTransaction
          : isIndependentTransaction // ignore: cast_nullable_to_non_nullable
              as bool,
      withRetry: null == withRetry
          ? _value.withRetry
          : withRetry // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TxOptionsImplCopyWith<$Res>
    implements $TxOptionsCopyWith<$Res> {
  factory _$$TxOptionsImplCopyWith(
          _$TxOptionsImpl value, $Res Function(_$TxOptionsImpl) then) =
      __$$TxOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String feePerGas,
      int feeIncrementPercentage,
      bool isIndependentTransaction,
      bool withRetry});
}

/// @nodoc
class __$$TxOptionsImplCopyWithImpl<$Res>
    extends _$TxOptionsCopyWithImpl<$Res, _$TxOptionsImpl>
    implements _$$TxOptionsImplCopyWith<$Res> {
  __$$TxOptionsImplCopyWithImpl(
      _$TxOptionsImpl _value, $Res Function(_$TxOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feePerGas = null,
    Object? feeIncrementPercentage = null,
    Object? isIndependentTransaction = null,
    Object? withRetry = null,
  }) {
    return _then(_$TxOptionsImpl(
      feePerGas: null == feePerGas
          ? _value.feePerGas
          : feePerGas // ignore: cast_nullable_to_non_nullable
              as String,
      feeIncrementPercentage: null == feeIncrementPercentage
          ? _value.feeIncrementPercentage
          : feeIncrementPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      isIndependentTransaction: null == isIndependentTransaction
          ? _value.isIndependentTransaction
          : isIndependentTransaction // ignore: cast_nullable_to_non_nullable
              as bool,
      withRetry: null == withRetry
          ? _value.withRetry
          : withRetry // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TxOptionsImpl implements _TxOptions {
  _$TxOptionsImpl(
      {required this.feePerGas,
      this.feeIncrementPercentage = 10,
      this.isIndependentTransaction = false,
      required this.withRetry});

  factory _$TxOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TxOptionsImplFromJson(json);

  @override
  final String feePerGas;
  @override
  @JsonKey()
  final int feeIncrementPercentage;
  @override
  @JsonKey()
  final bool isIndependentTransaction;
  @override
  final bool withRetry;

  @override
  String toString() {
    return 'TxOptions(feePerGas: $feePerGas, feeIncrementPercentage: $feeIncrementPercentage, isIndependentTransaction: $isIndependentTransaction, withRetry: $withRetry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxOptionsImpl &&
            (identical(other.feePerGas, feePerGas) ||
                other.feePerGas == feePerGas) &&
            (identical(other.feeIncrementPercentage, feeIncrementPercentage) ||
                other.feeIncrementPercentage == feeIncrementPercentage) &&
            (identical(
                    other.isIndependentTransaction, isIndependentTransaction) ||
                other.isIndependentTransaction == isIndependentTransaction) &&
            (identical(other.withRetry, withRetry) ||
                other.withRetry == withRetry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feePerGas,
      feeIncrementPercentage, isIndependentTransaction, withRetry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxOptionsImplCopyWith<_$TxOptionsImpl> get copyWith =>
      __$$TxOptionsImplCopyWithImpl<_$TxOptionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TxOptionsImplToJson(
      this,
    );
  }
}

abstract class _TxOptions implements TxOptions {
  factory _TxOptions(
      {required final String feePerGas,
      final int feeIncrementPercentage,
      final bool isIndependentTransaction,
      required final bool withRetry}) = _$TxOptionsImpl;

  factory _TxOptions.fromJson(Map<String, dynamic> json) =
      _$TxOptionsImpl.fromJson;

  @override
  String get feePerGas;
  @override
  int get feeIncrementPercentage;
  @override
  bool get isIndependentTransaction;
  @override
  bool get withRetry;
  @override
  @JsonKey(ignore: true)
  _$$TxOptionsImplCopyWith<_$TxOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
