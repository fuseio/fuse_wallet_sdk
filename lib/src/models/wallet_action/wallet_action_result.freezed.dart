// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_action_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletActionResult _$WalletActionResultFromJson(Map<String, dynamic> json) {
  return _WalletActionResult.fromJson(json);
}

/// @nodoc
mixin _$WalletActionResult {
  bool get hasNextPage => throw _privateConstructorUsedError;
  bool get hasPrevPage => throw _privateConstructorUsedError;
  num? get nextPage => throw _privateConstructorUsedError;
  num? get prevPage => throw _privateConstructorUsedError;
  num? get page => throw _privateConstructorUsedError;
  num get totalDocs => throw _privateConstructorUsedError;
  num get limit => throw _privateConstructorUsedError;
  num get totalPages => throw _privateConstructorUsedError;
  num get pagingCounter => throw _privateConstructorUsedError;
  @WalletActionsConverter()
  @JsonKey(name: 'docs')
  List<WalletAction> get actions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletActionResultCopyWith<WalletActionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletActionResultCopyWith<$Res> {
  factory $WalletActionResultCopyWith(
          WalletActionResult value, $Res Function(WalletActionResult) then) =
      _$WalletActionResultCopyWithImpl<$Res, WalletActionResult>;
  @useResult
  $Res call(
      {bool hasNextPage,
      bool hasPrevPage,
      num? nextPage,
      num? prevPage,
      num? page,
      num totalDocs,
      num limit,
      num totalPages,
      num pagingCounter,
      @WalletActionsConverter()
      @JsonKey(name: 'docs')
      List<WalletAction> actions});
}

/// @nodoc
class _$WalletActionResultCopyWithImpl<$Res, $Val extends WalletActionResult>
    implements $WalletActionResultCopyWith<$Res> {
  _$WalletActionResultCopyWithImpl(this._value, this._then);

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
    Object? totalDocs = null,
    Object? limit = null,
    Object? totalPages = null,
    Object? pagingCounter = null,
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
      totalDocs: null == totalDocs
          ? _value.totalDocs
          : totalDocs // ignore: cast_nullable_to_non_nullable
              as num,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as num,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as num,
      pagingCounter: null == pagingCounter
          ? _value.pagingCounter
          : pagingCounter // ignore: cast_nullable_to_non_nullable
              as num,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<WalletAction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletActionResultImplCopyWith<$Res>
    implements $WalletActionResultCopyWith<$Res> {
  factory _$$WalletActionResultImplCopyWith(_$WalletActionResultImpl value,
          $Res Function(_$WalletActionResultImpl) then) =
      __$$WalletActionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasNextPage,
      bool hasPrevPage,
      num? nextPage,
      num? prevPage,
      num? page,
      num totalDocs,
      num limit,
      num totalPages,
      num pagingCounter,
      @WalletActionsConverter()
      @JsonKey(name: 'docs')
      List<WalletAction> actions});
}

/// @nodoc
class __$$WalletActionResultImplCopyWithImpl<$Res>
    extends _$WalletActionResultCopyWithImpl<$Res, _$WalletActionResultImpl>
    implements _$$WalletActionResultImplCopyWith<$Res> {
  __$$WalletActionResultImplCopyWithImpl(_$WalletActionResultImpl _value,
      $Res Function(_$WalletActionResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasNextPage = null,
    Object? hasPrevPage = null,
    Object? nextPage = freezed,
    Object? prevPage = freezed,
    Object? page = freezed,
    Object? totalDocs = null,
    Object? limit = null,
    Object? totalPages = null,
    Object? pagingCounter = null,
    Object? actions = null,
  }) {
    return _then(_$WalletActionResultImpl(
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
      totalDocs: null == totalDocs
          ? _value.totalDocs
          : totalDocs // ignore: cast_nullable_to_non_nullable
              as num,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as num,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as num,
      pagingCounter: null == pagingCounter
          ? _value.pagingCounter
          : pagingCounter // ignore: cast_nullable_to_non_nullable
              as num,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<WalletAction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletActionResultImpl implements _WalletActionResult {
  _$WalletActionResultImpl(
      {required this.hasNextPage,
      required this.hasPrevPage,
      required this.nextPage,
      required this.prevPage,
      required this.page,
      required this.totalDocs,
      required this.limit,
      required this.totalPages,
      required this.pagingCounter,
      @WalletActionsConverter() @JsonKey(name: 'docs') required this.actions});

  factory _$WalletActionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletActionResultImplFromJson(json);

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
  final num totalDocs;
  @override
  final num limit;
  @override
  final num totalPages;
  @override
  final num pagingCounter;
  @override
  @WalletActionsConverter()
  @JsonKey(name: 'docs')
  final List<WalletAction> actions;

  @override
  String toString() {
    return 'WalletActionResult(hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage, nextPage: $nextPage, prevPage: $prevPage, page: $page, totalDocs: $totalDocs, limit: $limit, totalPages: $totalPages, pagingCounter: $pagingCounter, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletActionResultImpl &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPrevPage, hasPrevPage) ||
                other.hasPrevPage == hasPrevPage) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.prevPage, prevPage) ||
                other.prevPage == prevPage) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalDocs, totalDocs) ||
                other.totalDocs == totalDocs) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.pagingCounter, pagingCounter) ||
                other.pagingCounter == pagingCounter) &&
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
      totalDocs,
      limit,
      totalPages,
      pagingCounter,
      const DeepCollectionEquality().hash(actions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletActionResultImplCopyWith<_$WalletActionResultImpl> get copyWith =>
      __$$WalletActionResultImplCopyWithImpl<_$WalletActionResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletActionResultImplToJson(
      this,
    );
  }
}

abstract class _WalletActionResult implements WalletActionResult {
  factory _WalletActionResult(
      {required final bool hasNextPage,
      required final bool hasPrevPage,
      required final num? nextPage,
      required final num? prevPage,
      required final num? page,
      required final num totalDocs,
      required final num limit,
      required final num totalPages,
      required final num pagingCounter,
      @WalletActionsConverter()
      @JsonKey(name: 'docs')
      required final List<WalletAction> actions}) = _$WalletActionResultImpl;

  factory _WalletActionResult.fromJson(Map<String, dynamic> json) =
      _$WalletActionResultImpl.fromJson;

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
  num get totalDocs;
  @override
  num get limit;
  @override
  num get totalPages;
  @override
  num get pagingCounter;
  @override
  @WalletActionsConverter()
  @JsonKey(name: 'docs')
  List<WalletAction> get actions;
  @override
  @JsonKey(ignore: true)
  _$$WalletActionResultImplCopyWith<_$WalletActionResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
