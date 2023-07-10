// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActionResult _$ActionResultFromJson(Map<String, dynamic> json) {
  return _ActionResult.fromJson(json);
}

/// @nodoc
mixin _$ActionResult {
  bool get hasNextPage => throw _privateConstructorUsedError;
  bool get hasPrevPage => throw _privateConstructorUsedError;
  num? get nextPage => throw _privateConstructorUsedError;
  num? get prevPage => throw _privateConstructorUsedError;
  num? get page => throw _privateConstructorUsedError;
  num get totalPages => throw _privateConstructorUsedError;
  @ActionsConverter()
  @JsonKey(name: 'docs')
  List<Action> get actions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionResultCopyWith<ActionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionResultCopyWith<$Res> {
  factory $ActionResultCopyWith(
          ActionResult value, $Res Function(ActionResult) then) =
      _$ActionResultCopyWithImpl<$Res, ActionResult>;
  @useResult
  $Res call(
      {bool hasNextPage,
      bool hasPrevPage,
      num? nextPage,
      num? prevPage,
      num? page,
      num totalPages,
      @ActionsConverter() @JsonKey(name: 'docs') List<Action> actions});
}

/// @nodoc
class _$ActionResultCopyWithImpl<$Res, $Val extends ActionResult>
    implements $ActionResultCopyWith<$Res> {
  _$ActionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasNextPage = null,
    Object? hasPrevPage = null,
    Object? nextPage = freezed,
    Object? prevPage = freezed,
    Object? page = freezed,
    Object? totalPages = null,
    Object? actions = null,
  }) {
    return _then(_value.copyWith(
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevPage: null == hasPrevPage
          ? _value.hasPrevPage
          : hasPrevPage // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as num?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as num?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as num?,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as num,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Action>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActionResultCopyWith<$Res>
    implements $ActionResultCopyWith<$Res> {
  factory _$$_ActionResultCopyWith(
          _$_ActionResult value, $Res Function(_$_ActionResult) then) =
      __$$_ActionResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasNextPage,
      bool hasPrevPage,
      num? nextPage,
      num? prevPage,
      num? page,
      num totalPages,
      @ActionsConverter() @JsonKey(name: 'docs') List<Action> actions});
}

/// @nodoc
class __$$_ActionResultCopyWithImpl<$Res>
    extends _$ActionResultCopyWithImpl<$Res, _$_ActionResult>
    implements _$$_ActionResultCopyWith<$Res> {
  __$$_ActionResultCopyWithImpl(
      _$_ActionResult _value, $Res Function(_$_ActionResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasNextPage = null,
    Object? hasPrevPage = null,
    Object? nextPage = freezed,
    Object? prevPage = freezed,
    Object? page = freezed,
    Object? totalPages = null,
    Object? actions = null,
  }) {
    return _then(_$_ActionResult(
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPrevPage: null == hasPrevPage
          ? _value.hasPrevPage
          : hasPrevPage // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as num?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as num?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as num?,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as num,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Action>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActionResult implements _ActionResult {
  _$_ActionResult(
      {required this.hasNextPage,
      required this.hasPrevPage,
      required this.nextPage,
      required this.prevPage,
      required this.page,
      required this.totalPages,
      @ActionsConverter() @JsonKey(name: 'docs') required this.actions});

  factory _$_ActionResult.fromJson(Map<String, dynamic> json) =>
      _$$_ActionResultFromJson(json);

  @override
  final bool hasNextPage;
  @override
  final bool hasPrevPage;
  @override
  final num? nextPage;
  @override
  final num? prevPage;
  @override
  final num? page;
  @override
  final num totalPages;
  @override
  @ActionsConverter()
  @JsonKey(name: 'docs')
  final List<Action> actions;

  @override
  String toString() {
    return 'ActionResult(hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage, nextPage: $nextPage, prevPage: $prevPage, page: $page, totalPages: $totalPages, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionResult &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPrevPage, hasPrevPage) ||
                other.hasPrevPage == hasPrevPage) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.prevPage, prevPage) ||
                other.prevPage == prevPage) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hasNextPage,
      hasPrevPage,
      nextPage,
      prevPage,
      page,
      totalPages,
      const DeepCollectionEquality().hash(actions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionResultCopyWith<_$_ActionResult> get copyWith =>
      __$$_ActionResultCopyWithImpl<_$_ActionResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActionResultToJson(
      this,
    );
  }
}

abstract class _ActionResult implements ActionResult {
  factory _ActionResult(
      {required final bool hasNextPage,
      required final bool hasPrevPage,
      required final num? nextPage,
      required final num? prevPage,
      required final num? page,
      required final num totalPages,
      @ActionsConverter()
      @JsonKey(name: 'docs')
      required final List<Action> actions}) = _$_ActionResult;

  factory _ActionResult.fromJson(Map<String, dynamic> json) =
      _$_ActionResult.fromJson;

  @override
  bool get hasNextPage;
  @override
  bool get hasPrevPage;
  @override
  num? get nextPage;
  @override
  num? get prevPage;
  @override
  num? get page;
  @override
  num get totalPages;
  @override
  @ActionsConverter()
  @JsonKey(name: 'docs')
  List<Action> get actions;
  @override
  @JsonKey(ignore: true)
  _$$_ActionResultCopyWith<_$_ActionResult> get copyWith =>
      throw _privateConstructorUsedError;
}
