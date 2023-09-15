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
  String get userOpHash => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<TokenEvent> get sent => throw _privateConstructorUsedError;
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
            List<TokenEvent> sent)
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
            List<TokenEvent> sent)?
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
            List<TokenEvent> sent)?
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
      List<TokenEvent> sent});
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BatchTransactionCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$BatchTransactionCopyWith(
          _$BatchTransaction value, $Res Function(_$BatchTransaction) then) =
      __$$BatchTransactionCopyWithImpl<$Res>;
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
class __$$BatchTransactionCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$BatchTransaction>
    implements _$$BatchTransactionCopyWith<$Res> {
  __$$BatchTransactionCopyWithImpl(
      _$BatchTransaction _value, $Res Function(_$BatchTransaction) _then)
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
    return _then(_$BatchTransaction(
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
class _$BatchTransaction extends BatchTransaction {
  const _$BatchTransaction(
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

  factory _$BatchTransaction.fromJson(Map<String, dynamic> json) =>
      _$$BatchTransactionFromJson(json);

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
            other is _$BatchTransaction &&
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
  _$$BatchTransactionCopyWith<_$BatchTransaction> get copyWith =>
      __$$BatchTransactionCopyWithImpl<_$BatchTransaction>(this, _$identity);

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
            List<TokenEvent> sent)
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
            List<TokenEvent> sent)?
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
            List<TokenEvent> sent)?
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
    return _$$BatchTransactionToJson(
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
      final List<TokenEvent> received}) = _$BatchTransaction;
  const BatchTransaction._() : super._();

  factory BatchTransaction.fromJson(Map<String, dynamic> json) =
      _$BatchTransaction.fromJson;

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
  List<TokenEvent> get received;
  @override
  @JsonKey(ignore: true)
  _$$BatchTransactionCopyWith<_$BatchTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenTransferCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$TokenTransferCopyWith(
          _$TokenTransfer value, $Res Function(_$TokenTransfer) then) =
      __$$TokenTransferCopyWithImpl<$Res>;
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
class __$$TokenTransferCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$TokenTransfer>
    implements _$$TokenTransferCopyWith<$Res> {
  __$$TokenTransferCopyWithImpl(
      _$TokenTransfer _value, $Res Function(_$TokenTransfer) _then)
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
    return _then(_$TokenTransfer(
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
class _$TokenTransfer extends TokenTransfer {
  const _$TokenTransfer(
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

  factory _$TokenTransfer.fromJson(Map<String, dynamic> json) =>
      _$$TokenTransferFromJson(json);

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
            other is _$TokenTransfer &&
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
  _$$TokenTransferCopyWith<_$TokenTransfer> get copyWith =>
      __$$TokenTransferCopyWithImpl<_$TokenTransfer>(this, _$identity);

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
            List<TokenEvent> sent)
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
            List<TokenEvent> sent)?
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
            List<TokenEvent> sent)?
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
    return _$$TokenTransferToJson(
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
      final List<TokenEvent> received}) = _$TokenTransfer;
  const TokenTransfer._() : super._();

  factory TokenTransfer.fromJson(Map<String, dynamic> json) =
      _$TokenTransfer.fromJson;

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
  List<TokenEvent> get received;
  @override
  @JsonKey(ignore: true)
  _$$TokenTransferCopyWith<_$TokenTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwapTokensCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$SwapTokensCopyWith(
          _$SwapTokens value, $Res Function(_$SwapTokens) then) =
      __$$SwapTokensCopyWithImpl<$Res>;
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
class __$$SwapTokensCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$SwapTokens>
    implements _$$SwapTokensCopyWith<$Res> {
  __$$SwapTokensCopyWithImpl(
      _$SwapTokens _value, $Res Function(_$SwapTokens) _then)
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
    return _then(_$SwapTokens(
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
class _$SwapTokens extends SwapTokens {
  const _$SwapTokens(
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

  factory _$SwapTokens.fromJson(Map<String, dynamic> json) =>
      _$$SwapTokensFromJson(json);

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
            other is _$SwapTokens &&
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
  _$$SwapTokensCopyWith<_$SwapTokens> get copyWith =>
      __$$SwapTokensCopyWithImpl<_$SwapTokens>(this, _$identity);

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
            List<TokenEvent> sent)
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
            List<TokenEvent> sent)?
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
            List<TokenEvent> sent)?
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
    return _$$SwapTokensToJson(
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
      final List<TokenEvent> received}) = _$SwapTokens;
  const SwapTokens._() : super._();

  factory SwapTokens.fromJson(Map<String, dynamic> json) =
      _$SwapTokens.fromJson;

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
  List<TokenEvent> get received;
  @override
  @JsonKey(ignore: true)
  _$$SwapTokensCopyWith<_$SwapTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NftTransferCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$NftTransferCopyWith(
          _$NftTransfer value, $Res Function(_$NftTransfer) then) =
      __$$NftTransferCopyWithImpl<$Res>;
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
class __$$NftTransferCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$NftTransfer>
    implements _$$NftTransferCopyWith<$Res> {
  __$$NftTransferCopyWithImpl(
      _$NftTransfer _value, $Res Function(_$NftTransfer) _then)
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
    return _then(_$NftTransfer(
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
class _$NftTransfer extends NftTransfer {
  const _$NftTransfer(
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

  factory _$NftTransfer.fromJson(Map<String, dynamic> json) =>
      _$$NftTransferFromJson(json);

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
            other is _$NftTransfer &&
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
  _$$NftTransferCopyWith<_$NftTransfer> get copyWith =>
      __$$NftTransferCopyWithImpl<_$NftTransfer>(this, _$identity);

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
            List<TokenEvent> sent)
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
            List<TokenEvent> sent)?
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
            List<TokenEvent> sent)?
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
    return _$$NftTransferToJson(
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
      final List<TokenEvent> received}) = _$NftTransfer;
  const NftTransfer._() : super._();

  factory NftTransfer.fromJson(Map<String, dynamic> json) =
      _$NftTransfer.fromJson;

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
  List<TokenEvent> get received;
  @override
  @JsonKey(ignore: true)
  _$$NftTransferCopyWith<_$NftTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApproveTokenCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$ApproveTokenCopyWith(
          _$ApproveToken value, $Res Function(_$ApproveToken) then) =
      __$$ApproveTokenCopyWithImpl<$Res>;
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
      List<TokenEvent> sent});
}

/// @nodoc
class __$$ApproveTokenCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$ApproveToken>
    implements _$$ApproveTokenCopyWith<$Res> {
  __$$ApproveTokenCopyWithImpl(
      _$ApproveToken _value, $Res Function(_$ApproveToken) _then)
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
  }) {
    return _then(_$ApproveToken(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApproveToken extends ApproveToken {
  const _$ApproveToken(
      {@TimestampConverter() @JsonKey(name: 'updatedAt') this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'approveToken',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.userOpHash,
      required this.description,
      this.sent = const []})
      : super._();

  factory _$ApproveToken.fromJson(Map<String, dynamic> json) =>
      _$$ApproveTokenFromJson(json);

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
  String toString() {
    return 'WalletAction.approveToken(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, userOpHash: $userOpHash, description: $description, sent: $sent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveToken &&
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
            const DeepCollectionEquality().equals(other.sent, sent));
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
      const DeepCollectionEquality().hash(sent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveTokenCopyWith<_$ApproveToken> get copyWith =>
      __$$ApproveTokenCopyWithImpl<_$ApproveToken>(this, _$identity);

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
            List<TokenEvent> sent)
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
        userOpHash, description, sent);
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
            List<TokenEvent> sent)?
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
        userOpHash, description, sent);
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
            List<TokenEvent> sent)?
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
          userOpHash, description, sent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BatchTransaction value) batchTransaction,
    required TResult Function(TokenTransfer value) tokenTransfer,
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
    return _$$ApproveTokenToJson(
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
      final List<TokenEvent> sent}) = _$ApproveToken;
  const ApproveToken._() : super._();

  factory ApproveToken.fromJson(Map<String, dynamic> json) =
      _$ApproveToken.fromJson;

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
  @JsonKey(ignore: true)
  _$$ApproveTokenCopyWith<_$ApproveToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakeTokensActionCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$StakeTokensActionCopyWith(
          _$StakeTokensAction value, $Res Function(_$StakeTokensAction) then) =
      __$$StakeTokensActionCopyWithImpl<$Res>;
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
class __$$StakeTokensActionCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$StakeTokensAction>
    implements _$$StakeTokensActionCopyWith<$Res> {
  __$$StakeTokensActionCopyWithImpl(
      _$StakeTokensAction _value, $Res Function(_$StakeTokensAction) _then)
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
    return _then(_$StakeTokensAction(
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
class _$StakeTokensAction extends StakeTokensAction {
  const _$StakeTokensAction(
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

  factory _$StakeTokensAction.fromJson(Map<String, dynamic> json) =>
      _$$StakeTokensActionFromJson(json);

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
            other is _$StakeTokensAction &&
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
  _$$StakeTokensActionCopyWith<_$StakeTokensAction> get copyWith =>
      __$$StakeTokensActionCopyWithImpl<_$StakeTokensAction>(this, _$identity);

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
            List<TokenEvent> sent)
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
            List<TokenEvent> sent)?
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
            List<TokenEvent> sent)?
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
    return _$$StakeTokensActionToJson(
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
      final List<TokenEvent> received}) = _$StakeTokensAction;
  const StakeTokensAction._() : super._();

  factory StakeTokensAction.fromJson(Map<String, dynamic> json) =
      _$StakeTokensAction.fromJson;

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
  List<TokenEvent> get received;
  @override
  @JsonKey(ignore: true)
  _$$StakeTokensActionCopyWith<_$StakeTokensAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnstakeTokensActionCopyWith<$Res>
    implements $WalletActionCopyWith<$Res> {
  factory _$$UnstakeTokensActionCopyWith(_$UnstakeTokensAction value,
          $Res Function(_$UnstakeTokensAction) then) =
      __$$UnstakeTokensActionCopyWithImpl<$Res>;
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
class __$$UnstakeTokensActionCopyWithImpl<$Res>
    extends _$WalletActionCopyWithImpl<$Res, _$UnstakeTokensAction>
    implements _$$UnstakeTokensActionCopyWith<$Res> {
  __$$UnstakeTokensActionCopyWithImpl(
      _$UnstakeTokensAction _value, $Res Function(_$UnstakeTokensAction) _then)
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
    return _then(_$UnstakeTokensAction(
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
class _$UnstakeTokensAction extends UnstakeTokensAction {
  const _$UnstakeTokensAction(
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

  factory _$UnstakeTokensAction.fromJson(Map<String, dynamic> json) =>
      _$$UnstakeTokensActionFromJson(json);

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
            other is _$UnstakeTokensAction &&
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
  _$$UnstakeTokensActionCopyWith<_$UnstakeTokensAction> get copyWith =>
      __$$UnstakeTokensActionCopyWithImpl<_$UnstakeTokensAction>(
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
            List<TokenEvent> sent)
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
            List<TokenEvent> sent)?
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
            List<TokenEvent> sent)?
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
    return _$$UnstakeTokensActionToJson(
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
      final List<TokenEvent> received}) = _$UnstakeTokensAction;
  const UnstakeTokensAction._() : super._();

  factory UnstakeTokensAction.fromJson(Map<String, dynamic> json) =
      _$UnstakeTokensAction.fromJson;

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
  List<TokenEvent> get received;
  @override
  @JsonKey(ignore: true)
  _$$UnstakeTokensActionCopyWith<_$UnstakeTokensAction> get copyWith =>
      throw _privateConstructorUsedError;
}
