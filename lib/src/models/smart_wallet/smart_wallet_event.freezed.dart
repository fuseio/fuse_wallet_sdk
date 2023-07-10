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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_SmartWalletEventCopyWith<$Res>
    implements $SmartWalletEventCopyWith<$Res> {
  factory _$$_SmartWalletEventCopyWith(
          _$_SmartWalletEvent value, $Res Function(_$_SmartWalletEvent) then) =
      __$$_SmartWalletEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'eventName') String name,
      @JsonKey(name: 'eventData') Map<String, dynamic> data});
}

/// @nodoc
class __$$_SmartWalletEventCopyWithImpl<$Res>
    extends _$SmartWalletEventCopyWithImpl<$Res, _$_SmartWalletEvent>
    implements _$$_SmartWalletEventCopyWith<$Res> {
  __$$_SmartWalletEventCopyWithImpl(
      _$_SmartWalletEvent _value, $Res Function(_$_SmartWalletEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_$_SmartWalletEvent(
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
class _$_SmartWalletEvent implements _SmartWalletEvent {
  _$_SmartWalletEvent(
      {@JsonKey(name: 'eventName') required this.name,
      @JsonKey(name: 'eventData') required this.data});

  factory _$_SmartWalletEvent.fromJson(Map<String, dynamic> json) =>
      _$$_SmartWalletEventFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmartWalletEvent &&
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
  _$$_SmartWalletEventCopyWith<_$_SmartWalletEvent> get copyWith =>
      __$$_SmartWalletEventCopyWithImpl<_$_SmartWalletEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SmartWalletEventToJson(
      this,
    );
  }
}

abstract class _SmartWalletEvent implements SmartWalletEvent {
  factory _SmartWalletEvent(
      {@JsonKey(name: 'eventName') required final String name,
      @JsonKey(name: 'eventData')
      required final Map<String, dynamic> data}) = _$_SmartWalletEvent;

  factory _SmartWalletEvent.fromJson(Map<String, dynamic> json) =
      _$_SmartWalletEvent.fromJson;

  @override
  @JsonKey(name: 'eventName')
  String get name;
  @override
  @JsonKey(name: 'eventData')
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$_SmartWalletEventCopyWith<_$_SmartWalletEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
