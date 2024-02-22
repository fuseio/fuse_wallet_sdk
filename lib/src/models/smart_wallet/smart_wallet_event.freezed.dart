// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smart_wallet_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SmartWalletEvent _$SmartWalletEventFromJson(Map<String, dynamic> json) {
  return _SmartWalletEvent.fromJson(json);
}

/// @nodoc
mixin _$SmartWalletEvent {
  @JsonKey(name: 'eventName')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'eventData')
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmartWalletEventCopyWith<SmartWalletEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmartWalletEventCopyWith<$Res> {
  factory $SmartWalletEventCopyWith(
          SmartWalletEvent value, $Res Function(SmartWalletEvent) then) =
      _$SmartWalletEventCopyWithImpl<$Res, SmartWalletEvent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'eventName') String name,
      @JsonKey(name: 'eventData') Map<String, dynamic> data});
}

/// @nodoc
class _$SmartWalletEventCopyWithImpl<$Res, $Val extends SmartWalletEvent>
    implements $SmartWalletEventCopyWith<$Res> {
  _$SmartWalletEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SmartWalletEventImplCopyWith<$Res>
    implements $SmartWalletEventCopyWith<$Res> {
  factory _$$SmartWalletEventImplCopyWith(_$SmartWalletEventImpl value,
          $Res Function(_$SmartWalletEventImpl) then) =
      __$$SmartWalletEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'eventName') String name,
      @JsonKey(name: 'eventData') Map<String, dynamic> data});
}

/// @nodoc
class __$$SmartWalletEventImplCopyWithImpl<$Res>
    extends _$SmartWalletEventCopyWithImpl<$Res, _$SmartWalletEventImpl>
    implements _$$SmartWalletEventImplCopyWith<$Res> {
  __$$SmartWalletEventImplCopyWithImpl(_$SmartWalletEventImpl _value,
      $Res Function(_$SmartWalletEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_$SmartWalletEventImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmartWalletEventImpl implements _SmartWalletEvent {
  _$SmartWalletEventImpl(
      {@JsonKey(name: 'eventName') required this.name,
      @JsonKey(name: 'eventData') required this.data});

  factory _$SmartWalletEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmartWalletEventImplFromJson(json);

  @override
  @JsonKey(name: 'eventName')
  final String name;
  @override
  @JsonKey(name: 'eventData')
  final Map<String, dynamic> data;

  @override
  String toString() {
    return 'SmartWalletEvent(name: $name, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmartWalletEventImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmartWalletEventImplCopyWith<_$SmartWalletEventImpl> get copyWith =>
      __$$SmartWalletEventImplCopyWithImpl<_$SmartWalletEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmartWalletEventImplToJson(
      this,
    );
  }
}

abstract class _SmartWalletEvent implements SmartWalletEvent {
  factory _SmartWalletEvent(
      {@JsonKey(name: 'eventName') required final String name,
      @JsonKey(name: 'eventData')
      required final Map<String, dynamic> data}) = _$SmartWalletEventImpl;

  factory _SmartWalletEvent.fromJson(Map<String, dynamic> json) =
      _$SmartWalletEventImpl.fromJson;

  @override
  @JsonKey(name: 'eventName')
  String get name;
  @override
  @JsonKey(name: 'eventData')
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$SmartWalletEventImplCopyWith<_$SmartWalletEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
