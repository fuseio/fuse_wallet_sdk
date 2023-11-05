// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletAction _$WalletActionFromJson(Map<String, dynamic> json) {
  switch (json['name']) {
    case 'batchTransaction':
      return BatchTransaction.fromJson(json);
    case 'tokenTransfer':
      return TokenTransfer.fromJson(json);
    case 'tokenReceive':
      return TokenReceive.fromJson(json);
    case 'nftReceive':
      return NftReceive.fromJson(json);
    case 'swapTokens':
      return SwapTokens.fromJson(json);
    case 'nftTransfer':
      return NftTransfer.fromJson(json);
    case 'approveToken':
      return ApproveToken.fromJson(json);
    case 'stakeTokens':
      return StakeTokensAction.fromJson(json);
    case 'unstakeTokens':
      return UnstakeTokensAction.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'name', 'WalletAction',
          'Invalid union type "${json['name']}"!');
  }
}

/// @nodoc
mixin _$WalletAction {
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  int get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get txHash => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int? get blockNumber => throw _privateConstructorUsedError;
  String? get userOpHash => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<TokenEvent> get sent => throw _privateConstructorUsedError;
  List<TokenEvent> get received => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        batchTransaction,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        swapTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        approveToken,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        stakeTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        unstakeTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BatchTransaction value) batchTransaction,
    required TResult Function(TokenTransfer value) tokenTransfer,
    required TResult Function(TokenReceive value) tokenReceive,
    required TResult Function(NftReceive value) nftReceive,
    required TResult Function(SwapTokens value) swapTokens,
    required TResult Function(NftTransfer value) nftTransfer,
    required TResult Function(ApproveToken value) approveToken,
    required TResult Function(StakeTokensAction value) stakeTokens,
    required TResult Function(UnstakeTokensAction value) unstakeTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BatchTransaction value)? batchTransaction,
    TResult? Function(TokenTransfer value)? tokenTransfer,
    TResult? Function(TokenReceive value)? tokenReceive,
    TResult? Function(NftReceive value)? nftReceive,
    TResult? Function(SwapTokens value)? swapTokens,
    TResult? Function(NftTransfer value)? nftTransfer,
    TResult? Function(ApproveToken value)? approveToken,
    TResult? Function(StakeTokensAction value)? stakeTokens,
    TResult? Function(UnstakeTokensAction value)? unstakeTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BatchTransaction value)? batchTransaction,
    TResult Function(TokenTransfer value)? tokenTransfer,
    TResult Function(TokenReceive value)? tokenReceive,
    TResult Function(NftReceive value)? nftReceive,
    TResult Function(SwapTokens value)? swapTokens,
    TResult Function(NftTransfer value)? nftTransfer,
    TResult Function(ApproveToken value)? approveToken,
    TResult Function(StakeTokensAction value)? stakeTokens,
    TResult Function(UnstakeTokensAction value)? unstakeTokens,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletActionCopyWith<WalletAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletActionCopyWith<$Res> {
  factory $WalletActionCopyWith(
          WalletAction value, $Res Function(WalletAction) then) =
      _$WalletActionCopyWithImpl<$Res, WalletAction>;
  @useResult
  $Res call(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String userOpHash,
      String description,
      List<TokenEvent> sent,
      List<TokenEvent> received});
}

/// @nodoc
class _$WalletActionCopyWithImpl<$Res, $Val extends WalletAction>
    implements $WalletActionCopyWith<$Res> {
  _$WalletActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? userOpHash = null,
    Object? description = null,
    Object? sent = null,
    Object? received = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      userOpHash: null == userOpHash
          ? _value.userOpHash!
          : userOpHash // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BatchTransactionImplCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$BatchTransactionImplCopyWith(_$BatchTransactionImpl value,
          $Res Function(_$BatchTransactionImpl) then) =
      __$$BatchTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String userOpHash,
      String description,
      List<TokenEvent> sent,
      List<TokenEvent> received});
}

/// @nodoc
class __$$BatchTransactionImplCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$BatchTransactionImpl>
    implements _$$BatchTransactionImplCopyWith<$Res> {
  __$$BatchTransactionImplCopyWithImpl(_$BatchTransactionImpl _value,
      $Res Function(_$BatchTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? userOpHash = null,
    Object? description = null,
    Object? sent = null,
    Object? received = null,
  }) {
    return _then(_$BatchTransactionImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      userOpHash: null == userOpHash
          ? _value.userOpHash
          : userOpHash // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BatchTransactionImpl extends BatchTransaction {
  const _$BatchTransactionImpl(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'batchTransaction',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.userOpHash,
      required this.description,
      this.sent = const [],
      this.received = const []})
      : super._();

  factory _$BatchTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchTransactionImplFromJson(json);

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;
  @override
  final String userOpHash;
  @override
  final String description;
  @override
  @JsonKey()
  final List<TokenEvent> sent;
  @override
  @JsonKey()
  final List<TokenEvent> received;

  @override
  String toString() {
    return 'WalletAction.batchTransaction(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, userOpHash: $userOpHash, description: $description, sent: $sent, received: $received)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchTransactionImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.userOpHash, userOpHash) ||
                other.userOpHash == userOpHash) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.sent, sent) &&
            const DeepCollectionEquality().equals(other.received, received));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      userOpHash,
      description,
      const DeepCollectionEquality().hash(sent),
      const DeepCollectionEquality().hash(received));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchTransactionImplCopyWith<_$BatchTransactionImpl> get copyWith =>
      __$$BatchTransactionImplCopyWithImpl<_$BatchTransactionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        batchTransaction,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        swapTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        approveToken,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        stakeTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        unstakeTokens,
  }) {
    return batchTransaction(timestamp, id, name, txHash, status, blockNumber,
        userOpHash, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
  }) {
    return batchTransaction?.call(timestamp, id, name, txHash, status,
        blockNumber, userOpHash, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (batchTransaction != null) {
      return batchTransaction(timestamp, id, name, txHash, status, blockNumber,
          userOpHash, description, sent, received);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BatchTransaction value) batchTransaction,
    required TResult Function(TokenTransfer value) tokenTransfer,
    required TResult Function(TokenReceive value) tokenReceive,
    required TResult Function(NftReceive value) nftReceive,
    required TResult Function(SwapTokens value) swapTokens,
    required TResult Function(NftTransfer value) nftTransfer,
    required TResult Function(ApproveToken value) approveToken,
    required TResult Function(StakeTokensAction value) stakeTokens,
    required TResult Function(UnstakeTokensAction value) unstakeTokens,
  }) {
    return batchTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BatchTransaction value)? batchTransaction,
    TResult? Function(TokenTransfer value)? tokenTransfer,
    TResult? Function(TokenReceive value)? tokenReceive,
    TResult? Function(NftReceive value)? nftReceive,
    TResult? Function(SwapTokens value)? swapTokens,
    TResult? Function(NftTransfer value)? nftTransfer,
    TResult? Function(ApproveToken value)? approveToken,
    TResult? Function(StakeTokensAction value)? stakeTokens,
    TResult? Function(UnstakeTokensAction value)? unstakeTokens,
  }) {
    return batchTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BatchTransaction value)? batchTransaction,
    TResult Function(TokenTransfer value)? tokenTransfer,
    TResult Function(TokenReceive value)? tokenReceive,
    TResult Function(NftReceive value)? nftReceive,
    TResult Function(SwapTokens value)? swapTokens,
    TResult Function(NftTransfer value)? nftTransfer,
    TResult Function(ApproveToken value)? approveToken,
    TResult Function(StakeTokensAction value)? stakeTokens,
    TResult Function(UnstakeTokensAction value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (batchTransaction != null) {
      return batchTransaction(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchTransactionImplToJson(
      this,
    );
  }
}

abstract class BatchTransaction extends WalletAction {
  const factory BatchTransaction(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String userOpHash,
      required final String description,
      final List<TokenEvent> sent,
      final List<TokenEvent> received}) = _$BatchTransactionImpl;
  const BatchTransaction._() : super._();

  factory BatchTransaction.fromJson(Map<String, dynamic> json) =
      _$BatchTransactionImpl.fromJson;

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  @override
  String get userOpHash;
  @override
  String get description;
  @override
  List<TokenEvent> get sent;
  @override
  List<TokenEvent> get received;
  @override
  @JsonKey(ignore: true)
  _$$BatchTransactionImplCopyWith<_$BatchTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenTransferImplCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$TokenTransferImplCopyWith(
          _$TokenTransferImpl value, $Res Function(_$TokenTransferImpl) then) =
      __$$TokenTransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String userOpHash,
      String status,
      int? blockNumber,
      String description,
      List<TokenEvent> sent,
      List<TokenEvent> received});
}

/// @nodoc
class __$$TokenTransferImplCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$TokenTransferImpl>
    implements _$$TokenTransferImplCopyWith<$Res> {
  __$$TokenTransferImplCopyWithImpl(
      _$TokenTransferImpl _value, $Res Function(_$TokenTransferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? userOpHash = null,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? description = null,
    Object? sent = null,
    Object? received = null,
  }) {
    return _then(_$TokenTransferImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      userOpHash: null == userOpHash
          ? _value.userOpHash
          : userOpHash // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenTransferImpl extends TokenTransfer {
  const _$TokenTransferImpl(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'tokenTransfer',
      this.txHash,
      required this.userOpHash,
      required this.status,
      this.blockNumber = 0,
      required this.description,
      this.sent = const [],
      this.received = const []})
      : super._();

  factory _$TokenTransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenTransferImplFromJson(json);

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String userOpHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;
  @override
  final String description;
  @override
  @JsonKey()
  final List<TokenEvent> sent;
  @override
  @JsonKey()
  final List<TokenEvent> received;

  @override
  String toString() {
    return 'WalletAction.tokenTransfer(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, userOpHash: $userOpHash, status: $status, blockNumber: $blockNumber, description: $description, sent: $sent, received: $received)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenTransferImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.userOpHash, userOpHash) ||
                other.userOpHash == userOpHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.sent, sent) &&
            const DeepCollectionEquality().equals(other.received, received));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      userOpHash,
      status,
      blockNumber,
      description,
      const DeepCollectionEquality().hash(sent),
      const DeepCollectionEquality().hash(received));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenTransferImplCopyWith<_$TokenTransferImpl> get copyWith =>
      __$$TokenTransferImplCopyWithImpl<_$TokenTransferImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        batchTransaction,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        swapTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        approveToken,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        stakeTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        unstakeTokens,
  }) {
    return tokenTransfer(timestamp, id, name, txHash, userOpHash, status,
        blockNumber, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
  }) {
    return tokenTransfer?.call(timestamp, id, name, txHash, userOpHash, status,
        blockNumber, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (tokenTransfer != null) {
      return tokenTransfer(timestamp, id, name, txHash, userOpHash, status,
          blockNumber, description, sent, received);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BatchTransaction value) batchTransaction,
    required TResult Function(TokenTransfer value) tokenTransfer,
    required TResult Function(TokenReceive value) tokenReceive,
    required TResult Function(NftReceive value) nftReceive,
    required TResult Function(SwapTokens value) swapTokens,
    required TResult Function(NftTransfer value) nftTransfer,
    required TResult Function(ApproveToken value) approveToken,
    required TResult Function(StakeTokensAction value) stakeTokens,
    required TResult Function(UnstakeTokensAction value) unstakeTokens,
  }) {
    return tokenTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BatchTransaction value)? batchTransaction,
    TResult? Function(TokenTransfer value)? tokenTransfer,
    TResult? Function(TokenReceive value)? tokenReceive,
    TResult? Function(NftReceive value)? nftReceive,
    TResult? Function(SwapTokens value)? swapTokens,
    TResult? Function(NftTransfer value)? nftTransfer,
    TResult? Function(ApproveToken value)? approveToken,
    TResult? Function(StakeTokensAction value)? stakeTokens,
    TResult? Function(UnstakeTokensAction value)? unstakeTokens,
  }) {
    return tokenTransfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BatchTransaction value)? batchTransaction,
    TResult Function(TokenTransfer value)? tokenTransfer,
    TResult Function(TokenReceive value)? tokenReceive,
    TResult Function(NftReceive value)? nftReceive,
    TResult Function(SwapTokens value)? swapTokens,
    TResult Function(NftTransfer value)? nftTransfer,
    TResult Function(ApproveToken value)? approveToken,
    TResult Function(StakeTokensAction value)? stakeTokens,
    TResult Function(UnstakeTokensAction value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (tokenTransfer != null) {
      return tokenTransfer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenTransferImplToJson(
      this,
    );
  }
}

abstract class TokenTransfer extends WalletAction {
  const factory TokenTransfer(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String userOpHash,
      required final String status,
      final int? blockNumber,
      required final String description,
      final List<TokenEvent> sent,
      final List<TokenEvent> received}) = _$TokenTransferImpl;
  const TokenTransfer._() : super._();

  factory TokenTransfer.fromJson(Map<String, dynamic> json) =
      _$TokenTransferImpl.fromJson;

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String get userOpHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  @override
  String get description;
  @override
  List<TokenEvent> get sent;
  @override
  List<TokenEvent> get received;
  @override
  @JsonKey(ignore: true)
  _$$TokenTransferImplCopyWith<_$TokenTransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenReceiveImplCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$TokenReceiveImplCopyWith(
          _$TokenReceiveImpl value, $Res Function(_$TokenReceiveImpl) then) =
      __$$TokenReceiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String? userOpHash,
      String status,
      int? blockNumber,
      String description,
      List<TokenEvent> sent,
      List<TokenEvent> received});
}

/// @nodoc
class __$$TokenReceiveImplCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$TokenReceiveImpl>
    implements _$$TokenReceiveImplCopyWith<$Res> {
  __$$TokenReceiveImplCopyWithImpl(
      _$TokenReceiveImpl _value, $Res Function(_$TokenReceiveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? userOpHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? description = null,
    Object? sent = null,
    Object? received = null,
  }) {
    return _then(_$TokenReceiveImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      userOpHash: freezed == userOpHash
          ? _value.userOpHash
          : userOpHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenReceiveImpl extends TokenReceive {
  const _$TokenReceiveImpl(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'tokenReceive',
      this.txHash,
      this.userOpHash,
      required this.status,
      this.blockNumber = 0,
      required this.description,
      this.sent = const [],
      this.received = const []})
      : super._();

  factory _$TokenReceiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenReceiveImplFromJson(json);

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String? userOpHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;
  @override
  final String description;
  @override
  @JsonKey()
  final List<TokenEvent> sent;
  @override
  @JsonKey()
  final List<TokenEvent> received;

  @override
  String toString() {
    return 'WalletAction.tokenReceive(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, userOpHash: $userOpHash, status: $status, blockNumber: $blockNumber, description: $description, sent: $sent, received: $received)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenReceiveImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.userOpHash, userOpHash) ||
                other.userOpHash == userOpHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.sent, sent) &&
            const DeepCollectionEquality().equals(other.received, received));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      userOpHash,
      status,
      blockNumber,
      description,
      const DeepCollectionEquality().hash(sent),
      const DeepCollectionEquality().hash(received));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenReceiveImplCopyWith<_$TokenReceiveImpl> get copyWith =>
      __$$TokenReceiveImplCopyWithImpl<_$TokenReceiveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        batchTransaction,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        swapTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        approveToken,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        stakeTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        unstakeTokens,
  }) {
    return tokenReceive(timestamp, id, name, txHash, userOpHash, status,
        blockNumber, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
  }) {
    return tokenReceive?.call(timestamp, id, name, txHash, userOpHash, status,
        blockNumber, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (tokenReceive != null) {
      return tokenReceive(timestamp, id, name, txHash, userOpHash, status,
          blockNumber, description, sent, received);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BatchTransaction value) batchTransaction,
    required TResult Function(TokenTransfer value) tokenTransfer,
    required TResult Function(TokenReceive value) tokenReceive,
    required TResult Function(NftReceive value) nftReceive,
    required TResult Function(SwapTokens value) swapTokens,
    required TResult Function(NftTransfer value) nftTransfer,
    required TResult Function(ApproveToken value) approveToken,
    required TResult Function(StakeTokensAction value) stakeTokens,
    required TResult Function(UnstakeTokensAction value) unstakeTokens,
  }) {
    return tokenReceive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BatchTransaction value)? batchTransaction,
    TResult? Function(TokenTransfer value)? tokenTransfer,
    TResult? Function(TokenReceive value)? tokenReceive,
    TResult? Function(NftReceive value)? nftReceive,
    TResult? Function(SwapTokens value)? swapTokens,
    TResult? Function(NftTransfer value)? nftTransfer,
    TResult? Function(ApproveToken value)? approveToken,
    TResult? Function(StakeTokensAction value)? stakeTokens,
    TResult? Function(UnstakeTokensAction value)? unstakeTokens,
  }) {
    return tokenReceive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BatchTransaction value)? batchTransaction,
    TResult Function(TokenTransfer value)? tokenTransfer,
    TResult Function(TokenReceive value)? tokenReceive,
    TResult Function(NftReceive value)? nftReceive,
    TResult Function(SwapTokens value)? swapTokens,
    TResult Function(NftTransfer value)? nftTransfer,
    TResult Function(ApproveToken value)? approveToken,
    TResult Function(StakeTokensAction value)? stakeTokens,
    TResult Function(UnstakeTokensAction value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (tokenReceive != null) {
      return tokenReceive(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenReceiveImplToJson(
      this,
    );
  }
}

abstract class TokenReceive extends WalletAction {
  const factory TokenReceive(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      final String? userOpHash,
      required final String status,
      final int? blockNumber,
      required final String description,
      final List<TokenEvent> sent,
      final List<TokenEvent> received}) = _$TokenReceiveImpl;
  const TokenReceive._() : super._();

  factory TokenReceive.fromJson(Map<String, dynamic> json) =
      _$TokenReceiveImpl.fromJson;

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String? get userOpHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  @override
  String get description;
  @override
  List<TokenEvent> get sent;
  @override
  List<TokenEvent> get received;
  @override
  @JsonKey(ignore: true)
  _$$TokenReceiveImplCopyWith<_$TokenReceiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NftReceiveImplCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$NftReceiveImplCopyWith(
          _$NftReceiveImpl value, $Res Function(_$NftReceiveImpl) then) =
      __$$NftReceiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String? userOpHash,
      String status,
      int? blockNumber,
      String description,
      List<TokenEvent> sent,
      List<TokenEvent> received});
}

/// @nodoc
class __$$NftReceiveImplCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$NftReceiveImpl>
    implements _$$NftReceiveImplCopyWith<$Res> {
  __$$NftReceiveImplCopyWithImpl(
      _$NftReceiveImpl _value, $Res Function(_$NftReceiveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? userOpHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? description = null,
    Object? sent = null,
    Object? received = null,
  }) {
    return _then(_$NftReceiveImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      userOpHash: freezed == userOpHash
          ? _value.userOpHash
          : userOpHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NftReceiveImpl extends NftReceive {
  const _$NftReceiveImpl(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'nftReceive',
      this.txHash,
      this.userOpHash,
      required this.status,
      this.blockNumber = 0,
      required this.description,
      this.sent = const [],
      this.received = const []})
      : super._();

  factory _$NftReceiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$NftReceiveImplFromJson(json);

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String? userOpHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;
  @override
  final String description;
  @override
  @JsonKey()
  final List<TokenEvent> sent;
  @override
  @JsonKey()
  final List<TokenEvent> received;

  @override
  String toString() {
    return 'WalletAction.nftReceive(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, userOpHash: $userOpHash, status: $status, blockNumber: $blockNumber, description: $description, sent: $sent, received: $received)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NftReceiveImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.userOpHash, userOpHash) ||
                other.userOpHash == userOpHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.sent, sent) &&
            const DeepCollectionEquality().equals(other.received, received));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      userOpHash,
      status,
      blockNumber,
      description,
      const DeepCollectionEquality().hash(sent),
      const DeepCollectionEquality().hash(received));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NftReceiveImplCopyWith<_$NftReceiveImpl> get copyWith =>
      __$$NftReceiveImplCopyWithImpl<_$NftReceiveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        batchTransaction,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        swapTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        approveToken,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        stakeTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        unstakeTokens,
  }) {
    return nftReceive(timestamp, id, name, txHash, userOpHash, status,
        blockNumber, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
  }) {
    return nftReceive?.call(timestamp, id, name, txHash, userOpHash, status,
        blockNumber, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (nftReceive != null) {
      return nftReceive(timestamp, id, name, txHash, userOpHash, status,
          blockNumber, description, sent, received);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BatchTransaction value) batchTransaction,
    required TResult Function(TokenTransfer value) tokenTransfer,
    required TResult Function(TokenReceive value) tokenReceive,
    required TResult Function(NftReceive value) nftReceive,
    required TResult Function(SwapTokens value) swapTokens,
    required TResult Function(NftTransfer value) nftTransfer,
    required TResult Function(ApproveToken value) approveToken,
    required TResult Function(StakeTokensAction value) stakeTokens,
    required TResult Function(UnstakeTokensAction value) unstakeTokens,
  }) {
    return nftReceive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BatchTransaction value)? batchTransaction,
    TResult? Function(TokenTransfer value)? tokenTransfer,
    TResult? Function(TokenReceive value)? tokenReceive,
    TResult? Function(NftReceive value)? nftReceive,
    TResult? Function(SwapTokens value)? swapTokens,
    TResult? Function(NftTransfer value)? nftTransfer,
    TResult? Function(ApproveToken value)? approveToken,
    TResult? Function(StakeTokensAction value)? stakeTokens,
    TResult? Function(UnstakeTokensAction value)? unstakeTokens,
  }) {
    return nftReceive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BatchTransaction value)? batchTransaction,
    TResult Function(TokenTransfer value)? tokenTransfer,
    TResult Function(TokenReceive value)? tokenReceive,
    TResult Function(NftReceive value)? nftReceive,
    TResult Function(SwapTokens value)? swapTokens,
    TResult Function(NftTransfer value)? nftTransfer,
    TResult Function(ApproveToken value)? approveToken,
    TResult Function(StakeTokensAction value)? stakeTokens,
    TResult Function(UnstakeTokensAction value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (nftReceive != null) {
      return nftReceive(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NftReceiveImplToJson(
      this,
    );
  }
}

abstract class NftReceive extends WalletAction {
  const factory NftReceive(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      final String? userOpHash,
      required final String status,
      final int? blockNumber,
      required final String description,
      final List<TokenEvent> sent,
      final List<TokenEvent> received}) = _$NftReceiveImpl;
  const NftReceive._() : super._();

  factory NftReceive.fromJson(Map<String, dynamic> json) =
      _$NftReceiveImpl.fromJson;

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String? get userOpHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  @override
  String get description;
  @override
  List<TokenEvent> get sent;
  @override
  List<TokenEvent> get received;
  @override
  @JsonKey(ignore: true)
  _$$NftReceiveImplCopyWith<_$NftReceiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwapTokensImplCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$SwapTokensImplCopyWith(
          _$SwapTokensImpl value, $Res Function(_$SwapTokensImpl) then) =
      __$$SwapTokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String userOpHash,
      String description,
      List<TokenEvent> sent,
      List<TokenEvent> received});
}

/// @nodoc
class __$$SwapTokensImplCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$SwapTokensImpl>
    implements _$$SwapTokensImplCopyWith<$Res> {
  __$$SwapTokensImplCopyWithImpl(
      _$SwapTokensImpl _value, $Res Function(_$SwapTokensImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? userOpHash = null,
    Object? description = null,
    Object? sent = null,
    Object? received = null,
  }) {
    return _then(_$SwapTokensImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      userOpHash: null == userOpHash
          ? _value.userOpHash
          : userOpHash // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwapTokensImpl extends SwapTokens {
  const _$SwapTokensImpl(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'swapTokens',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.userOpHash,
      required this.description,
      this.sent = const [],
      this.received = const []})
      : super._();

  factory _$SwapTokensImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwapTokensImplFromJson(json);

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;
  @override
  final String userOpHash;
  @override
  final String description;
  @override
  @JsonKey()
  final List<TokenEvent> sent;
  @override
  @JsonKey()
  final List<TokenEvent> received;

  @override
  String toString() {
    return 'WalletAction.swapTokens(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, userOpHash: $userOpHash, description: $description, sent: $sent, received: $received)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapTokensImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.userOpHash, userOpHash) ||
                other.userOpHash == userOpHash) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.sent, sent) &&
            const DeepCollectionEquality().equals(other.received, received));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      userOpHash,
      description,
      const DeepCollectionEquality().hash(sent),
      const DeepCollectionEquality().hash(received));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapTokensImplCopyWith<_$SwapTokensImpl> get copyWith =>
      __$$SwapTokensImplCopyWithImpl<_$SwapTokensImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        batchTransaction,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        swapTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        approveToken,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        stakeTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        unstakeTokens,
  }) {
    return swapTokens(timestamp, id, name, txHash, status, blockNumber,
        userOpHash, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
  }) {
    return swapTokens?.call(timestamp, id, name, txHash, status, blockNumber,
        userOpHash, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (swapTokens != null) {
      return swapTokens(timestamp, id, name, txHash, status, blockNumber,
          userOpHash, description, sent, received);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BatchTransaction value) batchTransaction,
    required TResult Function(TokenTransfer value) tokenTransfer,
    required TResult Function(TokenReceive value) tokenReceive,
    required TResult Function(NftReceive value) nftReceive,
    required TResult Function(SwapTokens value) swapTokens,
    required TResult Function(NftTransfer value) nftTransfer,
    required TResult Function(ApproveToken value) approveToken,
    required TResult Function(StakeTokensAction value) stakeTokens,
    required TResult Function(UnstakeTokensAction value) unstakeTokens,
  }) {
    return swapTokens(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BatchTransaction value)? batchTransaction,
    TResult? Function(TokenTransfer value)? tokenTransfer,
    TResult? Function(TokenReceive value)? tokenReceive,
    TResult? Function(NftReceive value)? nftReceive,
    TResult? Function(SwapTokens value)? swapTokens,
    TResult? Function(NftTransfer value)? nftTransfer,
    TResult? Function(ApproveToken value)? approveToken,
    TResult? Function(StakeTokensAction value)? stakeTokens,
    TResult? Function(UnstakeTokensAction value)? unstakeTokens,
  }) {
    return swapTokens?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BatchTransaction value)? batchTransaction,
    TResult Function(TokenTransfer value)? tokenTransfer,
    TResult Function(TokenReceive value)? tokenReceive,
    TResult Function(NftReceive value)? nftReceive,
    TResult Function(SwapTokens value)? swapTokens,
    TResult Function(NftTransfer value)? nftTransfer,
    TResult Function(ApproveToken value)? approveToken,
    TResult Function(StakeTokensAction value)? stakeTokens,
    TResult Function(UnstakeTokensAction value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (swapTokens != null) {
      return swapTokens(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SwapTokensImplToJson(
      this,
    );
  }
}

abstract class SwapTokens extends WalletAction {
  const factory SwapTokens(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String userOpHash,
      required final String description,
      final List<TokenEvent> sent,
      final List<TokenEvent> received}) = _$SwapTokensImpl;
  const SwapTokens._() : super._();

  factory SwapTokens.fromJson(Map<String, dynamic> json) =
      _$SwapTokensImpl.fromJson;

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  @override
  String get userOpHash;
  @override
  String get description;
  @override
  List<TokenEvent> get sent;
  @override
  List<TokenEvent> get received;
  @override
  @JsonKey(ignore: true)
  _$$SwapTokensImplCopyWith<_$SwapTokensImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NftTransferImplCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$NftTransferImplCopyWith(
          _$NftTransferImpl value, $Res Function(_$NftTransferImpl) then) =
      __$$NftTransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String userOpHash,
      String description,
      List<TokenEvent> sent,
      List<TokenEvent> received});
}

/// @nodoc
class __$$NftTransferImplCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$NftTransferImpl>
    implements _$$NftTransferImplCopyWith<$Res> {
  __$$NftTransferImplCopyWithImpl(
      _$NftTransferImpl _value, $Res Function(_$NftTransferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? userOpHash = null,
    Object? description = null,
    Object? sent = null,
    Object? received = null,
  }) {
    return _then(_$NftTransferImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      userOpHash: null == userOpHash
          ? _value.userOpHash
          : userOpHash // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NftTransferImpl extends NftTransfer {
  const _$NftTransferImpl(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'nftTransfer',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.userOpHash,
      required this.description,
      this.sent = const [],
      this.received = const []})
      : super._();

  factory _$NftTransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$NftTransferImplFromJson(json);

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;
  @override
  final String userOpHash;
  @override
  final String description;
  @override
  @JsonKey()
  final List<TokenEvent> sent;
  @override
  @JsonKey()
  final List<TokenEvent> received;

  @override
  String toString() {
    return 'WalletAction.nftTransfer(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, userOpHash: $userOpHash, description: $description, sent: $sent, received: $received)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NftTransferImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.userOpHash, userOpHash) ||
                other.userOpHash == userOpHash) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.sent, sent) &&
            const DeepCollectionEquality().equals(other.received, received));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      userOpHash,
      description,
      const DeepCollectionEquality().hash(sent),
      const DeepCollectionEquality().hash(received));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NftTransferImplCopyWith<_$NftTransferImpl> get copyWith =>
      __$$NftTransferImplCopyWithImpl<_$NftTransferImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        batchTransaction,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        swapTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        approveToken,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        stakeTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        unstakeTokens,
  }) {
    return nftTransfer(timestamp, id, name, txHash, status, blockNumber,
        userOpHash, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
  }) {
    return nftTransfer?.call(timestamp, id, name, txHash, status, blockNumber,
        userOpHash, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (nftTransfer != null) {
      return nftTransfer(timestamp, id, name, txHash, status, blockNumber,
          userOpHash, description, sent, received);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BatchTransaction value) batchTransaction,
    required TResult Function(TokenTransfer value) tokenTransfer,
    required TResult Function(TokenReceive value) tokenReceive,
    required TResult Function(NftReceive value) nftReceive,
    required TResult Function(SwapTokens value) swapTokens,
    required TResult Function(NftTransfer value) nftTransfer,
    required TResult Function(ApproveToken value) approveToken,
    required TResult Function(StakeTokensAction value) stakeTokens,
    required TResult Function(UnstakeTokensAction value) unstakeTokens,
  }) {
    return nftTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BatchTransaction value)? batchTransaction,
    TResult? Function(TokenTransfer value)? tokenTransfer,
    TResult? Function(TokenReceive value)? tokenReceive,
    TResult? Function(NftReceive value)? nftReceive,
    TResult? Function(SwapTokens value)? swapTokens,
    TResult? Function(NftTransfer value)? nftTransfer,
    TResult? Function(ApproveToken value)? approveToken,
    TResult? Function(StakeTokensAction value)? stakeTokens,
    TResult? Function(UnstakeTokensAction value)? unstakeTokens,
  }) {
    return nftTransfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BatchTransaction value)? batchTransaction,
    TResult Function(TokenTransfer value)? tokenTransfer,
    TResult Function(TokenReceive value)? tokenReceive,
    TResult Function(NftReceive value)? nftReceive,
    TResult Function(SwapTokens value)? swapTokens,
    TResult Function(NftTransfer value)? nftTransfer,
    TResult Function(ApproveToken value)? approveToken,
    TResult Function(StakeTokensAction value)? stakeTokens,
    TResult Function(UnstakeTokensAction value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (nftTransfer != null) {
      return nftTransfer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NftTransferImplToJson(
      this,
    );
  }
}

abstract class NftTransfer extends WalletAction {
  const factory NftTransfer(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String userOpHash,
      required final String description,
      final List<TokenEvent> sent,
      final List<TokenEvent> received}) = _$NftTransferImpl;
  const NftTransfer._() : super._();

  factory NftTransfer.fromJson(Map<String, dynamic> json) =
      _$NftTransferImpl.fromJson;

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  @override
  String get userOpHash;
  @override
  String get description;
  @override
  List<TokenEvent> get sent;
  @override
  List<TokenEvent> get received;
  @override
  @JsonKey(ignore: true)
  _$$NftTransferImplCopyWith<_$NftTransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApproveTokenImplCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$ApproveTokenImplCopyWith(
          _$ApproveTokenImpl value, $Res Function(_$ApproveTokenImpl) then) =
      __$$ApproveTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String userOpHash,
      String description,
      List<TokenEvent> sent,
      List<TokenEvent> received});
}

/// @nodoc
class __$$ApproveTokenImplCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$ApproveTokenImpl>
    implements _$$ApproveTokenImplCopyWith<$Res> {
  __$$ApproveTokenImplCopyWithImpl(
      _$ApproveTokenImpl _value, $Res Function(_$ApproveTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? userOpHash = null,
    Object? description = null,
    Object? sent = null,
    Object? received = null,
  }) {
    return _then(_$ApproveTokenImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      userOpHash: null == userOpHash
          ? _value.userOpHash
          : userOpHash // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApproveTokenImpl extends ApproveToken {
  const _$ApproveTokenImpl(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'approveToken',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.userOpHash,
      required this.description,
      this.sent = const [],
      this.received = const []})
      : super._();

  factory _$ApproveTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApproveTokenImplFromJson(json);

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;
  @override
  final String userOpHash;
  @override
  final String description;
  @override
  @JsonKey()
  final List<TokenEvent> sent;
  @override
  @JsonKey()
  final List<TokenEvent> received;

  @override
  String toString() {
    return 'WalletAction.approveToken(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, userOpHash: $userOpHash, description: $description, sent: $sent, received: $received)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveTokenImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.userOpHash, userOpHash) ||
                other.userOpHash == userOpHash) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.sent, sent) &&
            const DeepCollectionEquality().equals(other.received, received));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      userOpHash,
      description,
      const DeepCollectionEquality().hash(sent),
      const DeepCollectionEquality().hash(received));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveTokenImplCopyWith<_$ApproveTokenImpl> get copyWith =>
      __$$ApproveTokenImplCopyWithImpl<_$ApproveTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        batchTransaction,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        swapTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        approveToken,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        stakeTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        unstakeTokens,
  }) {
    return approveToken(timestamp, id, name, txHash, status, blockNumber,
        userOpHash, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
  }) {
    return approveToken?.call(timestamp, id, name, txHash, status, blockNumber,
        userOpHash, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (approveToken != null) {
      return approveToken(timestamp, id, name, txHash, status, blockNumber,
          userOpHash, description, sent, received);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BatchTransaction value) batchTransaction,
    required TResult Function(TokenTransfer value) tokenTransfer,
    required TResult Function(TokenReceive value) tokenReceive,
    required TResult Function(NftReceive value) nftReceive,
    required TResult Function(SwapTokens value) swapTokens,
    required TResult Function(NftTransfer value) nftTransfer,
    required TResult Function(ApproveToken value) approveToken,
    required TResult Function(StakeTokensAction value) stakeTokens,
    required TResult Function(UnstakeTokensAction value) unstakeTokens,
  }) {
    return approveToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BatchTransaction value)? batchTransaction,
    TResult? Function(TokenTransfer value)? tokenTransfer,
    TResult? Function(TokenReceive value)? tokenReceive,
    TResult? Function(NftReceive value)? nftReceive,
    TResult? Function(SwapTokens value)? swapTokens,
    TResult? Function(NftTransfer value)? nftTransfer,
    TResult? Function(ApproveToken value)? approveToken,
    TResult? Function(StakeTokensAction value)? stakeTokens,
    TResult? Function(UnstakeTokensAction value)? unstakeTokens,
  }) {
    return approveToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BatchTransaction value)? batchTransaction,
    TResult Function(TokenTransfer value)? tokenTransfer,
    TResult Function(TokenReceive value)? tokenReceive,
    TResult Function(NftReceive value)? nftReceive,
    TResult Function(SwapTokens value)? swapTokens,
    TResult Function(NftTransfer value)? nftTransfer,
    TResult Function(ApproveToken value)? approveToken,
    TResult Function(StakeTokensAction value)? stakeTokens,
    TResult Function(UnstakeTokensAction value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (approveToken != null) {
      return approveToken(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApproveTokenImplToJson(
      this,
    );
  }
}

abstract class ApproveToken extends WalletAction {
  const factory ApproveToken(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String userOpHash,
      required final String description,
      final List<TokenEvent> sent,
      final List<TokenEvent> received}) = _$ApproveTokenImpl;
  const ApproveToken._() : super._();

  factory ApproveToken.fromJson(Map<String, dynamic> json) =
      _$ApproveTokenImpl.fromJson;

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  @override
  String get userOpHash;
  @override
  String get description;
  @override
  List<TokenEvent> get sent;
  @override
  List<TokenEvent> get received;
  @override
  @JsonKey(ignore: true)
  _$$ApproveTokenImplCopyWith<_$ApproveTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakeTokensActionImplCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$StakeTokensActionImplCopyWith(_$StakeTokensActionImpl value,
          $Res Function(_$StakeTokensActionImpl) then) =
      __$$StakeTokensActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String userOpHash,
      String description,
      List<TokenEvent> sent,
      List<TokenEvent> received});
}

/// @nodoc
class __$$StakeTokensActionImplCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$StakeTokensActionImpl>
    implements _$$StakeTokensActionImplCopyWith<$Res> {
  __$$StakeTokensActionImplCopyWithImpl(_$StakeTokensActionImpl _value,
      $Res Function(_$StakeTokensActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? userOpHash = null,
    Object? description = null,
    Object? sent = null,
    Object? received = null,
  }) {
    return _then(_$StakeTokensActionImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      userOpHash: null == userOpHash
          ? _value.userOpHash
          : userOpHash // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StakeTokensActionImpl extends StakeTokensAction {
  const _$StakeTokensActionImpl(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'stakeTokens',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.userOpHash,
      required this.description,
      this.sent = const [],
      this.received = const []})
      : super._();

  factory _$StakeTokensActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$StakeTokensActionImplFromJson(json);

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;
  @override
  final String userOpHash;
  @override
  final String description;
  @override
  @JsonKey()
  final List<TokenEvent> sent;
  @override
  @JsonKey()
  final List<TokenEvent> received;

  @override
  String toString() {
    return 'WalletAction.stakeTokens(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, userOpHash: $userOpHash, description: $description, sent: $sent, received: $received)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeTokensActionImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.userOpHash, userOpHash) ||
                other.userOpHash == userOpHash) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.sent, sent) &&
            const DeepCollectionEquality().equals(other.received, received));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      userOpHash,
      description,
      const DeepCollectionEquality().hash(sent),
      const DeepCollectionEquality().hash(received));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeTokensActionImplCopyWith<_$StakeTokensActionImpl> get copyWith =>
      __$$StakeTokensActionImplCopyWithImpl<_$StakeTokensActionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        batchTransaction,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        swapTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        approveToken,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        stakeTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        unstakeTokens,
  }) {
    return stakeTokens(timestamp, id, name, txHash, status, blockNumber,
        userOpHash, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
  }) {
    return stakeTokens?.call(timestamp, id, name, txHash, status, blockNumber,
        userOpHash, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (stakeTokens != null) {
      return stakeTokens(timestamp, id, name, txHash, status, blockNumber,
          userOpHash, description, sent, received);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BatchTransaction value) batchTransaction,
    required TResult Function(TokenTransfer value) tokenTransfer,
    required TResult Function(TokenReceive value) tokenReceive,
    required TResult Function(NftReceive value) nftReceive,
    required TResult Function(SwapTokens value) swapTokens,
    required TResult Function(NftTransfer value) nftTransfer,
    required TResult Function(ApproveToken value) approveToken,
    required TResult Function(StakeTokensAction value) stakeTokens,
    required TResult Function(UnstakeTokensAction value) unstakeTokens,
  }) {
    return stakeTokens(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BatchTransaction value)? batchTransaction,
    TResult? Function(TokenTransfer value)? tokenTransfer,
    TResult? Function(TokenReceive value)? tokenReceive,
    TResult? Function(NftReceive value)? nftReceive,
    TResult? Function(SwapTokens value)? swapTokens,
    TResult? Function(NftTransfer value)? nftTransfer,
    TResult? Function(ApproveToken value)? approveToken,
    TResult? Function(StakeTokensAction value)? stakeTokens,
    TResult? Function(UnstakeTokensAction value)? unstakeTokens,
  }) {
    return stakeTokens?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BatchTransaction value)? batchTransaction,
    TResult Function(TokenTransfer value)? tokenTransfer,
    TResult Function(TokenReceive value)? tokenReceive,
    TResult Function(NftReceive value)? nftReceive,
    TResult Function(SwapTokens value)? swapTokens,
    TResult Function(NftTransfer value)? nftTransfer,
    TResult Function(ApproveToken value)? approveToken,
    TResult Function(StakeTokensAction value)? stakeTokens,
    TResult Function(UnstakeTokensAction value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (stakeTokens != null) {
      return stakeTokens(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StakeTokensActionImplToJson(
      this,
    );
  }
}

abstract class StakeTokensAction extends WalletAction {
  const factory StakeTokensAction(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String userOpHash,
      required final String description,
      final List<TokenEvent> sent,
      final List<TokenEvent> received}) = _$StakeTokensActionImpl;
  const StakeTokensAction._() : super._();

  factory StakeTokensAction.fromJson(Map<String, dynamic> json) =
      _$StakeTokensActionImpl.fromJson;

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  @override
  String get userOpHash;
  @override
  String get description;
  @override
  List<TokenEvent> get sent;
  @override
  List<TokenEvent> get received;
  @override
  @JsonKey(ignore: true)
  _$$StakeTokensActionImplCopyWith<_$StakeTokensActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnstakeTokensActionImplCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$UnstakeTokensActionImplCopyWith(_$UnstakeTokensActionImpl value,
          $Res Function(_$UnstakeTokensActionImpl) then) =
      __$$UnstakeTokensActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String userOpHash,
      String description,
      List<TokenEvent> sent,
      List<TokenEvent> received});
}

/// @nodoc
class __$$UnstakeTokensActionImplCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$UnstakeTokensActionImpl>
    implements _$$UnstakeTokensActionImplCopyWith<$Res> {
  __$$UnstakeTokensActionImplCopyWithImpl(_$UnstakeTokensActionImpl _value,
      $Res Function(_$UnstakeTokensActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? userOpHash = null,
    Object? description = null,
    Object? sent = null,
    Object? received = null,
  }) {
    return _then(_$UnstakeTokensActionImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      txHash: freezed == txHash
          ? _value.txHash
          : txHash // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      userOpHash: null == userOpHash
          ? _value.userOpHash
          : userOpHash // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
      received: null == received
          ? _value.received
          : received // ignore: cast_nullable_to_non_nullable
              as List<TokenEvent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnstakeTokensActionImpl extends UnstakeTokensAction {
  const _$UnstakeTokensActionImpl(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'unstakeTokens',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.userOpHash,
      required this.description,
      this.sent = const [],
      this.received = const []})
      : super._();

  factory _$UnstakeTokensActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnstakeTokensActionImplFromJson(json);

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  final int timestamp;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  final String? txHash;
  @override
  final String status;
  @override
  @JsonKey()
  final int? blockNumber;
  @override
  final String userOpHash;
  @override
  final String description;
  @override
  @JsonKey()
  final List<TokenEvent> sent;
  @override
  @JsonKey()
  final List<TokenEvent> received;

  @override
  String toString() {
    return 'WalletAction.unstakeTokens(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, userOpHash: $userOpHash, description: $description, sent: $sent, received: $received)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnstakeTokensActionImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.userOpHash, userOpHash) ||
                other.userOpHash == userOpHash) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.sent, sent) &&
            const DeepCollectionEquality().equals(other.received, received));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      userOpHash,
      description,
      const DeepCollectionEquality().hash(sent),
      const DeepCollectionEquality().hash(received));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnstakeTokensActionImplCopyWith<_$UnstakeTokensActionImpl> get copyWith =>
      __$$UnstakeTokensActionImplCopyWithImpl<_$UnstakeTokensActionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        batchTransaction,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        tokenReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftReceive,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        swapTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        nftTransfer,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        approveToken,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        stakeTokens,
    required TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)
        unstakeTokens,
  }) {
    return unstakeTokens(timestamp, id, name, txHash, status, blockNumber,
        userOpHash, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult? Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
  }) {
    return unstakeTokens?.call(timestamp, id, name, txHash, status, blockNumber,
        userOpHash, description, sent, received);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        batchTransaction,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        tokenReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String? userOpHash,
            String status,
            int? blockNumber,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftReceive,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        swapTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        nftTransfer,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        approveToken,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        stakeTokens,
    TResult Function(
            @TimestampConverter() @JsonKey(name: 'updatedAt') int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String userOpHash,
            String description,
            List<TokenEvent> sent,
            List<TokenEvent> received)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (unstakeTokens != null) {
      return unstakeTokens(timestamp, id, name, txHash, status, blockNumber,
          userOpHash, description, sent, received);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BatchTransaction value) batchTransaction,
    required TResult Function(TokenTransfer value) tokenTransfer,
    required TResult Function(TokenReceive value) tokenReceive,
    required TResult Function(NftReceive value) nftReceive,
    required TResult Function(SwapTokens value) swapTokens,
    required TResult Function(NftTransfer value) nftTransfer,
    required TResult Function(ApproveToken value) approveToken,
    required TResult Function(StakeTokensAction value) stakeTokens,
    required TResult Function(UnstakeTokensAction value) unstakeTokens,
  }) {
    return unstakeTokens(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BatchTransaction value)? batchTransaction,
    TResult? Function(TokenTransfer value)? tokenTransfer,
    TResult? Function(TokenReceive value)? tokenReceive,
    TResult? Function(NftReceive value)? nftReceive,
    TResult? Function(SwapTokens value)? swapTokens,
    TResult? Function(NftTransfer value)? nftTransfer,
    TResult? Function(ApproveToken value)? approveToken,
    TResult? Function(StakeTokensAction value)? stakeTokens,
    TResult? Function(UnstakeTokensAction value)? unstakeTokens,
  }) {
    return unstakeTokens?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BatchTransaction value)? batchTransaction,
    TResult Function(TokenTransfer value)? tokenTransfer,
    TResult Function(TokenReceive value)? tokenReceive,
    TResult Function(NftReceive value)? nftReceive,
    TResult Function(SwapTokens value)? swapTokens,
    TResult Function(NftTransfer value)? nftTransfer,
    TResult Function(ApproveToken value)? approveToken,
    TResult Function(StakeTokensAction value)? stakeTokens,
    TResult Function(UnstakeTokensAction value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (unstakeTokens != null) {
      return unstakeTokens(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnstakeTokensActionImplToJson(
      this,
    );
  }
}

abstract class UnstakeTokensAction extends WalletAction {
  const factory UnstakeTokensAction(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String userOpHash,
      required final String description,
      final List<TokenEvent> sent,
      final List<TokenEvent> received}) = _$UnstakeTokensActionImpl;
  const UnstakeTokensAction._() : super._();

  factory UnstakeTokensAction.fromJson(Map<String, dynamic> json) =
      _$UnstakeTokensActionImpl.fromJson;

  @override
  @TimestampConverter()
  @JsonKey(name: 'updatedAt')
  int get timestamp;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String? get txHash;
  @override
  String get status;
  @override
  int? get blockNumber;
  @override
  String get userOpHash;
  @override
  String get description;
  @override
  List<TokenEvent> get sent;
  @override
  List<TokenEvent> get received;
  @override
  @JsonKey(ignore: true)
  _$$UnstakeTokensActionImplCopyWith<_$UnstakeTokensActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
