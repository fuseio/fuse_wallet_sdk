// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Action _$ActionFromJson(Map<String, dynamic> json) {
  switch (json['name']) {
    case 'createWallet':
      return CreateWallet.fromJson(json);
    case 'fiat-deposit':
      return FiatDeposit.fromJson(json);
    case 'sendTokens':
      return Send.fromJson(json);
    case 'receiveTokens':
      return Receive.fromJson(json);
    case 'swapTokens':
      return Swap.fromJson(json);
    case 'receiveNFT':
      return ReceiveNFT.fromJson(json);
    case 'stakeTokens':
      return StakeTokens.fromJson(json);
    case 'unstakeTokens':
      return UnstakeTokens.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'name', 'Action', 'Invalid union type "${json['name']}"!');
  }
}

/// @nodoc
mixin _$Action {
  int get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get txHash => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int? get blockNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receiveNFT,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        stakeTokens,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        unstakeTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(Send value) send,
    required TResult Function(Receive value) receive,
    required TResult Function(Swap value) swap,
    required TResult Function(ReceiveNFT value) receiveNFT,
    required TResult Function(StakeTokens value) stakeTokens,
    required TResult Function(UnstakeTokens value) unstakeTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(Send value)? send,
    TResult? Function(Receive value)? receive,
    TResult? Function(Swap value)? swap,
    TResult? Function(ReceiveNFT value)? receiveNFT,
    TResult? Function(StakeTokens value)? stakeTokens,
    TResult? Function(UnstakeTokens value)? unstakeTokens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(Send value)? send,
    TResult Function(Receive value)? receive,
    TResult Function(Swap value)? swap,
    TResult Function(ReceiveNFT value)? receiveNFT,
    TResult Function(StakeTokens value)? stakeTokens,
    TResult Function(UnstakeTokens value)? unstakeTokens,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Action to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActionCopyWith<Action> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionCopyWith<$Res> {
  factory $ActionCopyWith(Action value, $Res Function(Action) then) =
      _$ActionCopyWithImpl<$Res, Action>;
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber});
}

/// @nodoc
class _$ActionCopyWithImpl<$Res, $Val extends Action>
    implements $ActionCopyWith<$Res> {
  _$ActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateWalletImplCopyWith<$Res>
    implements $ActionCopyWith<$Res> {
  factory _$$CreateWalletImplCopyWith(
          _$CreateWalletImpl value, $Res Function(_$CreateWalletImpl) then) =
      __$$CreateWalletImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber});
}

/// @nodoc
class __$$CreateWalletImplCopyWithImpl<$Res>
    extends _$ActionCopyWithImpl<$Res, _$CreateWalletImpl>
    implements _$$CreateWalletImplCopyWith<$Res> {
  __$$CreateWalletImplCopyWithImpl(
      _$CreateWalletImpl _value, $Res Function(_$CreateWalletImpl) _then)
      : super(_value, _then);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
  }) {
    return _then(_$CreateWalletImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateWalletImpl extends CreateWallet {
  const _$CreateWalletImpl(
      {this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'createWallet',
      this.txHash,
      required this.status,
      this.blockNumber = 0})
      : super._();

  factory _$CreateWalletImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateWalletImplFromJson(json);

  @override
  @JsonKey()
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
  String toString() {
    return 'Action.createWallet(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWalletImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, timestamp, id, name, txHash, status, blockNumber);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWalletImplCopyWith<_$CreateWalletImpl> get copyWith =>
      __$$CreateWalletImplCopyWithImpl<_$CreateWalletImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receiveNFT,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        stakeTokens,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        unstakeTokens,
  }) {
    return createWallet(timestamp, id, name, txHash, status, blockNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
  }) {
    return createWallet?.call(timestamp, id, name, txHash, status, blockNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (createWallet != null) {
      return createWallet(timestamp, id, name, txHash, status, blockNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(Send value) send,
    required TResult Function(Receive value) receive,
    required TResult Function(Swap value) swap,
    required TResult Function(ReceiveNFT value) receiveNFT,
    required TResult Function(StakeTokens value) stakeTokens,
    required TResult Function(UnstakeTokens value) unstakeTokens,
  }) {
    return createWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(Send value)? send,
    TResult? Function(Receive value)? receive,
    TResult? Function(Swap value)? swap,
    TResult? Function(ReceiveNFT value)? receiveNFT,
    TResult? Function(StakeTokens value)? stakeTokens,
    TResult? Function(UnstakeTokens value)? unstakeTokens,
  }) {
    return createWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(Send value)? send,
    TResult Function(Receive value)? receive,
    TResult Function(Swap value)? swap,
    TResult Function(ReceiveNFT value)? receiveNFT,
    TResult Function(StakeTokens value)? stakeTokens,
    TResult Function(UnstakeTokens value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (createWallet != null) {
      return createWallet(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateWalletImplToJson(
      this,
    );
  }
}

abstract class CreateWallet extends Action {
  const factory CreateWallet(
      {final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber}) = _$CreateWalletImpl;
  const CreateWallet._() : super._();

  factory CreateWallet.fromJson(Map<String, dynamic> json) =
      _$CreateWalletImpl.fromJson;

  @override
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

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateWalletImplCopyWith<_$CreateWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FiatDepositImplCopyWith<$Res>
    implements $ActionCopyWith<$Res> {
  factory _$$FiatDepositImplCopyWith(
          _$FiatDepositImpl value, $Res Function(_$FiatDepositImpl) then) =
      __$$FiatDepositImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String tokenAddress,
      String? from,
      String to,
      BigInt value,
      String tokenName,
      String tokenSymbol,
      int tokenDecimal});
}

/// @nodoc
class __$$FiatDepositImplCopyWithImpl<$Res>
    extends _$ActionCopyWithImpl<$Res, _$FiatDepositImpl>
    implements _$$FiatDepositImplCopyWith<$Res> {
  __$$FiatDepositImplCopyWithImpl(
      _$FiatDepositImpl _value, $Res Function(_$FiatDepositImpl) _then)
      : super(_value, _then);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? tokenAddress = null,
    Object? from = freezed,
    Object? to = null,
    Object? value = null,
    Object? tokenName = null,
    Object? tokenSymbol = null,
    Object? tokenDecimal = null,
  }) {
    return _then(_$FiatDepositImpl(
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
      tokenAddress: null == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: null == tokenSymbol
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenDecimal: null == tokenDecimal
          ? _value.tokenDecimal
          : tokenDecimal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FiatDepositImpl extends FiatDeposit {
  const _$FiatDepositImpl(
      {this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'fiat-deposit',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.tokenAddress,
      this.from,
      required this.to,
      required this.value,
      required this.tokenName,
      required this.tokenSymbol,
      required this.tokenDecimal})
      : super._();

  factory _$FiatDepositImpl.fromJson(Map<String, dynamic> json) =>
      _$$FiatDepositImplFromJson(json);

  @override
  @JsonKey()
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
  final String tokenAddress;
  @override
  final String? from;
  @override
  final String to;
  @override
  final BigInt value;
  @override
  final String tokenName;
  @override
  final String tokenSymbol;
  @override
  final int tokenDecimal;

  @override
  String toString() {
    return 'Action.fiatDeposit(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, tokenAddress: $tokenAddress, from: $from, to: $to, value: $value, tokenName: $tokenName, tokenSymbol: $tokenSymbol, tokenDecimal: $tokenDecimal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FiatDepositImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.tokenSymbol, tokenSymbol) ||
                other.tokenSymbol == tokenSymbol) &&
            (identical(other.tokenDecimal, tokenDecimal) ||
                other.tokenDecimal == tokenDecimal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      tokenAddress,
      from,
      to,
      value,
      tokenName,
      tokenSymbol,
      tokenDecimal);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FiatDepositImplCopyWith<_$FiatDepositImpl> get copyWith =>
      __$$FiatDepositImplCopyWithImpl<_$FiatDepositImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receiveNFT,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        stakeTokens,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        unstakeTokens,
  }) {
    return fiatDeposit(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
  }) {
    return fiatDeposit?.call(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (fiatDeposit != null) {
      return fiatDeposit(timestamp, id, name, txHash, status, blockNumber,
          tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(Send value) send,
    required TResult Function(Receive value) receive,
    required TResult Function(Swap value) swap,
    required TResult Function(ReceiveNFT value) receiveNFT,
    required TResult Function(StakeTokens value) stakeTokens,
    required TResult Function(UnstakeTokens value) unstakeTokens,
  }) {
    return fiatDeposit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(Send value)? send,
    TResult? Function(Receive value)? receive,
    TResult? Function(Swap value)? swap,
    TResult? Function(ReceiveNFT value)? receiveNFT,
    TResult? Function(StakeTokens value)? stakeTokens,
    TResult? Function(UnstakeTokens value)? unstakeTokens,
  }) {
    return fiatDeposit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(Send value)? send,
    TResult Function(Receive value)? receive,
    TResult Function(Swap value)? swap,
    TResult Function(ReceiveNFT value)? receiveNFT,
    TResult Function(StakeTokens value)? stakeTokens,
    TResult Function(UnstakeTokens value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (fiatDeposit != null) {
      return fiatDeposit(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FiatDepositImplToJson(
      this,
    );
  }
}

abstract class FiatDeposit extends Action {
  const factory FiatDeposit(
      {final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String tokenAddress,
      final String? from,
      required final String to,
      required final BigInt value,
      required final String tokenName,
      required final String tokenSymbol,
      required final int tokenDecimal}) = _$FiatDepositImpl;
  const FiatDeposit._() : super._();

  factory FiatDeposit.fromJson(Map<String, dynamic> json) =
      _$FiatDepositImpl.fromJson;

  @override
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
  String get tokenAddress;
  String? get from;
  String get to;
  BigInt get value;
  String get tokenName;
  String get tokenSymbol;
  int get tokenDecimal;

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FiatDepositImplCopyWith<_$FiatDepositImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendImplCopyWith<$Res> implements $ActionCopyWith<$Res> {
  factory _$$SendImplCopyWith(
          _$SendImpl value, $Res Function(_$SendImpl) then) =
      __$$SendImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String tokenAddress,
      String from,
      String to,
      BigInt value,
      String tokenName,
      String tokenSymbol,
      int tokenDecimal});
}

/// @nodoc
class __$$SendImplCopyWithImpl<$Res>
    extends _$ActionCopyWithImpl<$Res, _$SendImpl>
    implements _$$SendImplCopyWith<$Res> {
  __$$SendImplCopyWithImpl(_$SendImpl _value, $Res Function(_$SendImpl) _then)
      : super(_value, _then);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? tokenAddress = null,
    Object? from = null,
    Object? to = null,
    Object? value = null,
    Object? tokenName = null,
    Object? tokenSymbol = null,
    Object? tokenDecimal = null,
  }) {
    return _then(_$SendImpl(
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
      tokenAddress: null == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: null == tokenSymbol
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenDecimal: null == tokenDecimal
          ? _value.tokenDecimal
          : tokenDecimal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendImpl extends Send {
  const _$SendImpl(
      {this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'sendTokens',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.tokenAddress,
      required this.from,
      required this.to,
      required this.value,
      required this.tokenName,
      required this.tokenSymbol,
      required this.tokenDecimal})
      : super._();

  factory _$SendImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendImplFromJson(json);

  @override
  @JsonKey()
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
  final String tokenAddress;
  @override
  final String from;
  @override
  final String to;
  @override
  final BigInt value;
  @override
  final String tokenName;
  @override
  final String tokenSymbol;
  @override
  final int tokenDecimal;

  @override
  String toString() {
    return 'Action.send(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, tokenAddress: $tokenAddress, from: $from, to: $to, value: $value, tokenName: $tokenName, tokenSymbol: $tokenSymbol, tokenDecimal: $tokenDecimal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.tokenSymbol, tokenSymbol) ||
                other.tokenSymbol == tokenSymbol) &&
            (identical(other.tokenDecimal, tokenDecimal) ||
                other.tokenDecimal == tokenDecimal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      tokenAddress,
      from,
      to,
      value,
      tokenName,
      tokenSymbol,
      tokenDecimal);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendImplCopyWith<_$SendImpl> get copyWith =>
      __$$SendImplCopyWithImpl<_$SendImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receiveNFT,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        stakeTokens,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        unstakeTokens,
  }) {
    return send(timestamp, id, name, txHash, status, blockNumber, tokenAddress,
        from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
  }) {
    return send?.call(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(timestamp, id, name, txHash, status, blockNumber,
          tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(Send value) send,
    required TResult Function(Receive value) receive,
    required TResult Function(Swap value) swap,
    required TResult Function(ReceiveNFT value) receiveNFT,
    required TResult Function(StakeTokens value) stakeTokens,
    required TResult Function(UnstakeTokens value) unstakeTokens,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(Send value)? send,
    TResult? Function(Receive value)? receive,
    TResult? Function(Swap value)? swap,
    TResult? Function(ReceiveNFT value)? receiveNFT,
    TResult? Function(StakeTokens value)? stakeTokens,
    TResult? Function(UnstakeTokens value)? unstakeTokens,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(Send value)? send,
    TResult Function(Receive value)? receive,
    TResult Function(Swap value)? swap,
    TResult Function(ReceiveNFT value)? receiveNFT,
    TResult Function(StakeTokens value)? stakeTokens,
    TResult Function(UnstakeTokens value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SendImplToJson(
      this,
    );
  }
}

abstract class Send extends Action {
  const factory Send(
      {final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String tokenAddress,
      required final String from,
      required final String to,
      required final BigInt value,
      required final String tokenName,
      required final String tokenSymbol,
      required final int tokenDecimal}) = _$SendImpl;
  const Send._() : super._();

  factory Send.fromJson(Map<String, dynamic> json) = _$SendImpl.fromJson;

  @override
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
  String get tokenAddress;
  String get from;
  String get to;
  BigInt get value;
  String get tokenName;
  String get tokenSymbol;
  int get tokenDecimal;

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendImplCopyWith<_$SendImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveImplCopyWith<$Res> implements $ActionCopyWith<$Res> {
  factory _$$ReceiveImplCopyWith(
          _$ReceiveImpl value, $Res Function(_$ReceiveImpl) then) =
      __$$ReceiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String tokenAddress,
      String from,
      String to,
      BigInt value,
      String tokenName,
      String tokenSymbol,
      int tokenDecimal});
}

/// @nodoc
class __$$ReceiveImplCopyWithImpl<$Res>
    extends _$ActionCopyWithImpl<$Res, _$ReceiveImpl>
    implements _$$ReceiveImplCopyWith<$Res> {
  __$$ReceiveImplCopyWithImpl(
      _$ReceiveImpl _value, $Res Function(_$ReceiveImpl) _then)
      : super(_value, _then);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? tokenAddress = null,
    Object? from = null,
    Object? to = null,
    Object? value = null,
    Object? tokenName = null,
    Object? tokenSymbol = null,
    Object? tokenDecimal = null,
  }) {
    return _then(_$ReceiveImpl(
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
      tokenAddress: null == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: null == tokenSymbol
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenDecimal: null == tokenDecimal
          ? _value.tokenDecimal
          : tokenDecimal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiveImpl extends Receive {
  const _$ReceiveImpl(
      {this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'receiveTokens',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.tokenAddress,
      required this.from,
      required this.to,
      required this.value,
      required this.tokenName,
      required this.tokenSymbol,
      required this.tokenDecimal})
      : super._();

  factory _$ReceiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiveImplFromJson(json);

  @override
  @JsonKey()
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
  final String tokenAddress;
  @override
  final String from;
  @override
  final String to;
  @override
  final BigInt value;
  @override
  final String tokenName;
  @override
  final String tokenSymbol;
  @override
  final int tokenDecimal;

  @override
  String toString() {
    return 'Action.receive(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, tokenAddress: $tokenAddress, from: $from, to: $to, value: $value, tokenName: $tokenName, tokenSymbol: $tokenSymbol, tokenDecimal: $tokenDecimal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.tokenSymbol, tokenSymbol) ||
                other.tokenSymbol == tokenSymbol) &&
            (identical(other.tokenDecimal, tokenDecimal) ||
                other.tokenDecimal == tokenDecimal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      tokenAddress,
      from,
      to,
      value,
      tokenName,
      tokenSymbol,
      tokenDecimal);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveImplCopyWith<_$ReceiveImpl> get copyWith =>
      __$$ReceiveImplCopyWithImpl<_$ReceiveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receiveNFT,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        stakeTokens,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        unstakeTokens,
  }) {
    return receive(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
  }) {
    return receive?.call(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (receive != null) {
      return receive(timestamp, id, name, txHash, status, blockNumber,
          tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(Send value) send,
    required TResult Function(Receive value) receive,
    required TResult Function(Swap value) swap,
    required TResult Function(ReceiveNFT value) receiveNFT,
    required TResult Function(StakeTokens value) stakeTokens,
    required TResult Function(UnstakeTokens value) unstakeTokens,
  }) {
    return receive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(Send value)? send,
    TResult? Function(Receive value)? receive,
    TResult? Function(Swap value)? swap,
    TResult? Function(ReceiveNFT value)? receiveNFT,
    TResult? Function(StakeTokens value)? stakeTokens,
    TResult? Function(UnstakeTokens value)? unstakeTokens,
  }) {
    return receive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(Send value)? send,
    TResult Function(Receive value)? receive,
    TResult Function(Swap value)? swap,
    TResult Function(ReceiveNFT value)? receiveNFT,
    TResult Function(StakeTokens value)? stakeTokens,
    TResult Function(UnstakeTokens value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (receive != null) {
      return receive(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiveImplToJson(
      this,
    );
  }
}

abstract class Receive extends Action {
  const factory Receive(
      {final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String tokenAddress,
      required final String from,
      required final String to,
      required final BigInt value,
      required final String tokenName,
      required final String tokenSymbol,
      required final int tokenDecimal}) = _$ReceiveImpl;
  const Receive._() : super._();

  factory Receive.fromJson(Map<String, dynamic> json) = _$ReceiveImpl.fromJson;

  @override
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
  String get tokenAddress;
  String get from;
  String get to;
  BigInt get value;
  String get tokenName;
  String get tokenSymbol;
  int get tokenDecimal;

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiveImplCopyWith<_$ReceiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwapImplCopyWith<$Res> implements $ActionCopyWith<$Res> {
  factory _$$SwapImplCopyWith(
          _$SwapImpl value, $Res Function(_$SwapImpl) then) =
      __$$SwapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber});
}

/// @nodoc
class __$$SwapImplCopyWithImpl<$Res>
    extends _$ActionCopyWithImpl<$Res, _$SwapImpl>
    implements _$$SwapImplCopyWith<$Res> {
  __$$SwapImplCopyWithImpl(_$SwapImpl _value, $Res Function(_$SwapImpl) _then)
      : super(_value, _then);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
  }) {
    return _then(_$SwapImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwapImpl extends Swap {
  const _$SwapImpl(
      {this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'swapTokens',
      this.txHash,
      required this.status,
      this.blockNumber = 0})
      : super._();

  factory _$SwapImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwapImplFromJson(json);

  @override
  @JsonKey()
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
  String toString() {
    return 'Action.swap(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwapImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, timestamp, id, name, txHash, status, blockNumber);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwapImplCopyWith<_$SwapImpl> get copyWith =>
      __$$SwapImplCopyWithImpl<_$SwapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receiveNFT,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        stakeTokens,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        unstakeTokens,
  }) {
    return swap(timestamp, id, name, txHash, status, blockNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
  }) {
    return swap?.call(timestamp, id, name, txHash, status, blockNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap(timestamp, id, name, txHash, status, blockNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(Send value) send,
    required TResult Function(Receive value) receive,
    required TResult Function(Swap value) swap,
    required TResult Function(ReceiveNFT value) receiveNFT,
    required TResult Function(StakeTokens value) stakeTokens,
    required TResult Function(UnstakeTokens value) unstakeTokens,
  }) {
    return swap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(Send value)? send,
    TResult? Function(Receive value)? receive,
    TResult? Function(Swap value)? swap,
    TResult? Function(ReceiveNFT value)? receiveNFT,
    TResult? Function(StakeTokens value)? stakeTokens,
    TResult? Function(UnstakeTokens value)? unstakeTokens,
  }) {
    return swap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(Send value)? send,
    TResult Function(Receive value)? receive,
    TResult Function(Swap value)? swap,
    TResult Function(ReceiveNFT value)? receiveNFT,
    TResult Function(StakeTokens value)? stakeTokens,
    TResult Function(UnstakeTokens value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (swap != null) {
      return swap(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SwapImplToJson(
      this,
    );
  }
}

abstract class Swap extends Action {
  const factory Swap(
      {final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber}) = _$SwapImpl;
  const Swap._() : super._();

  factory Swap.fromJson(Map<String, dynamic> json) = _$SwapImpl.fromJson;

  @override
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

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwapImplCopyWith<_$SwapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveNFTImplCopyWith<$Res>
    implements $ActionCopyWith<$Res> {
  factory _$$ReceiveNFTImplCopyWith(
          _$ReceiveNFTImpl value, $Res Function(_$ReceiveNFTImpl) then) =
      __$$ReceiveNFTImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String tokenAddress,
      String from,
      String to,
      String tokenName,
      String tokenSymbol,
      int tokenDecimal});
}

/// @nodoc
class __$$ReceiveNFTImplCopyWithImpl<$Res>
    extends _$ActionCopyWithImpl<$Res, _$ReceiveNFTImpl>
    implements _$$ReceiveNFTImplCopyWith<$Res> {
  __$$ReceiveNFTImplCopyWithImpl(
      _$ReceiveNFTImpl _value, $Res Function(_$ReceiveNFTImpl) _then)
      : super(_value, _then);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? tokenAddress = null,
    Object? from = null,
    Object? to = null,
    Object? tokenName = null,
    Object? tokenSymbol = null,
    Object? tokenDecimal = null,
  }) {
    return _then(_$ReceiveNFTImpl(
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
      tokenAddress: null == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: null == tokenSymbol
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenDecimal: null == tokenDecimal
          ? _value.tokenDecimal
          : tokenDecimal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiveNFTImpl extends ReceiveNFT {
  const _$ReceiveNFTImpl(
      {this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'receiveNFT',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.tokenAddress,
      required this.from,
      required this.to,
      required this.tokenName,
      required this.tokenSymbol,
      required this.tokenDecimal})
      : super._();

  factory _$ReceiveNFTImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiveNFTImplFromJson(json);

  @override
  @JsonKey()
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
  final String tokenAddress;
  @override
  final String from;
  @override
  final String to;
  @override
  final String tokenName;
  @override
  final String tokenSymbol;
  @override
  final int tokenDecimal;

  @override
  String toString() {
    return 'Action.receiveNFT(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, tokenAddress: $tokenAddress, from: $from, to: $to, tokenName: $tokenName, tokenSymbol: $tokenSymbol, tokenDecimal: $tokenDecimal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveNFTImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.tokenSymbol, tokenSymbol) ||
                other.tokenSymbol == tokenSymbol) &&
            (identical(other.tokenDecimal, tokenDecimal) ||
                other.tokenDecimal == tokenDecimal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      tokenAddress,
      from,
      to,
      tokenName,
      tokenSymbol,
      tokenDecimal);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveNFTImplCopyWith<_$ReceiveNFTImpl> get copyWith =>
      __$$ReceiveNFTImplCopyWithImpl<_$ReceiveNFTImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receiveNFT,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        stakeTokens,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        unstakeTokens,
  }) {
    return receiveNFT(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
  }) {
    return receiveNFT?.call(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (receiveNFT != null) {
      return receiveNFT(timestamp, id, name, txHash, status, blockNumber,
          tokenAddress, from, to, tokenName, tokenSymbol, tokenDecimal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(Send value) send,
    required TResult Function(Receive value) receive,
    required TResult Function(Swap value) swap,
    required TResult Function(ReceiveNFT value) receiveNFT,
    required TResult Function(StakeTokens value) stakeTokens,
    required TResult Function(UnstakeTokens value) unstakeTokens,
  }) {
    return receiveNFT(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(Send value)? send,
    TResult? Function(Receive value)? receive,
    TResult? Function(Swap value)? swap,
    TResult? Function(ReceiveNFT value)? receiveNFT,
    TResult? Function(StakeTokens value)? stakeTokens,
    TResult? Function(UnstakeTokens value)? unstakeTokens,
  }) {
    return receiveNFT?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(Send value)? send,
    TResult Function(Receive value)? receive,
    TResult Function(Swap value)? swap,
    TResult Function(ReceiveNFT value)? receiveNFT,
    TResult Function(StakeTokens value)? stakeTokens,
    TResult Function(UnstakeTokens value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (receiveNFT != null) {
      return receiveNFT(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiveNFTImplToJson(
      this,
    );
  }
}

abstract class ReceiveNFT extends Action {
  const factory ReceiveNFT(
      {final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String tokenAddress,
      required final String from,
      required final String to,
      required final String tokenName,
      required final String tokenSymbol,
      required final int tokenDecimal}) = _$ReceiveNFTImpl;
  const ReceiveNFT._() : super._();

  factory ReceiveNFT.fromJson(Map<String, dynamic> json) =
      _$ReceiveNFTImpl.fromJson;

  @override
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
  String get tokenAddress;
  String get from;
  String get to;
  String get tokenName;
  String get tokenSymbol;
  int get tokenDecimal;

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiveNFTImplCopyWith<_$ReceiveNFTImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StakeTokensImplCopyWith<$Res>
    implements $ActionCopyWith<$Res> {
  factory _$$StakeTokensImplCopyWith(
          _$StakeTokensImpl value, $Res Function(_$StakeTokensImpl) then) =
      __$$StakeTokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String tokenAddress,
      String from,
      String to,
      BigInt value,
      String tokenName,
      String tokenSymbol,
      int tokenDecimal});
}

/// @nodoc
class __$$StakeTokensImplCopyWithImpl<$Res>
    extends _$ActionCopyWithImpl<$Res, _$StakeTokensImpl>
    implements _$$StakeTokensImplCopyWith<$Res> {
  __$$StakeTokensImplCopyWithImpl(
      _$StakeTokensImpl _value, $Res Function(_$StakeTokensImpl) _then)
      : super(_value, _then);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? tokenAddress = null,
    Object? from = null,
    Object? to = null,
    Object? value = null,
    Object? tokenName = null,
    Object? tokenSymbol = null,
    Object? tokenDecimal = null,
  }) {
    return _then(_$StakeTokensImpl(
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
      tokenAddress: null == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: null == tokenSymbol
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenDecimal: null == tokenDecimal
          ? _value.tokenDecimal
          : tokenDecimal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StakeTokensImpl extends StakeTokens {
  const _$StakeTokensImpl(
      {this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'stakeTokens',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.tokenAddress,
      required this.from,
      required this.to,
      required this.value,
      required this.tokenName,
      required this.tokenSymbol,
      required this.tokenDecimal})
      : super._();

  factory _$StakeTokensImpl.fromJson(Map<String, dynamic> json) =>
      _$$StakeTokensImplFromJson(json);

  @override
  @JsonKey()
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
  final String tokenAddress;
  @override
  final String from;
  @override
  final String to;
  @override
  final BigInt value;
  @override
  final String tokenName;
  @override
  final String tokenSymbol;
  @override
  final int tokenDecimal;

  @override
  String toString() {
    return 'Action.stakeTokens(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, tokenAddress: $tokenAddress, from: $from, to: $to, value: $value, tokenName: $tokenName, tokenSymbol: $tokenSymbol, tokenDecimal: $tokenDecimal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StakeTokensImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.tokenSymbol, tokenSymbol) ||
                other.tokenSymbol == tokenSymbol) &&
            (identical(other.tokenDecimal, tokenDecimal) ||
                other.tokenDecimal == tokenDecimal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      tokenAddress,
      from,
      to,
      value,
      tokenName,
      tokenSymbol,
      tokenDecimal);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StakeTokensImplCopyWith<_$StakeTokensImpl> get copyWith =>
      __$$StakeTokensImplCopyWithImpl<_$StakeTokensImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receiveNFT,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        stakeTokens,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        unstakeTokens,
  }) {
    return stakeTokens(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
  }) {
    return stakeTokens?.call(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (stakeTokens != null) {
      return stakeTokens(timestamp, id, name, txHash, status, blockNumber,
          tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(Send value) send,
    required TResult Function(Receive value) receive,
    required TResult Function(Swap value) swap,
    required TResult Function(ReceiveNFT value) receiveNFT,
    required TResult Function(StakeTokens value) stakeTokens,
    required TResult Function(UnstakeTokens value) unstakeTokens,
  }) {
    return stakeTokens(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(Send value)? send,
    TResult? Function(Receive value)? receive,
    TResult? Function(Swap value)? swap,
    TResult? Function(ReceiveNFT value)? receiveNFT,
    TResult? Function(StakeTokens value)? stakeTokens,
    TResult? Function(UnstakeTokens value)? unstakeTokens,
  }) {
    return stakeTokens?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(Send value)? send,
    TResult Function(Receive value)? receive,
    TResult Function(Swap value)? swap,
    TResult Function(ReceiveNFT value)? receiveNFT,
    TResult Function(StakeTokens value)? stakeTokens,
    TResult Function(UnstakeTokens value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (stakeTokens != null) {
      return stakeTokens(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StakeTokensImplToJson(
      this,
    );
  }
}

abstract class StakeTokens extends Action {
  const factory StakeTokens(
      {final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String tokenAddress,
      required final String from,
      required final String to,
      required final BigInt value,
      required final String tokenName,
      required final String tokenSymbol,
      required final int tokenDecimal}) = _$StakeTokensImpl;
  const StakeTokens._() : super._();

  factory StakeTokens.fromJson(Map<String, dynamic> json) =
      _$StakeTokensImpl.fromJson;

  @override
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
  String get tokenAddress;
  String get from;
  String get to;
  BigInt get value;
  String get tokenName;
  String get tokenSymbol;
  int get tokenDecimal;

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StakeTokensImplCopyWith<_$StakeTokensImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnstakeTokensImplCopyWith<$Res>
    implements $ActionCopyWith<$Res> {
  factory _$$UnstakeTokensImplCopyWith(
          _$UnstakeTokensImpl value, $Res Function(_$UnstakeTokensImpl) then) =
      __$$UnstakeTokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timestamp,
      @JsonKey(name: '_id') String id,
      String name,
      String? txHash,
      String status,
      int? blockNumber,
      String tokenAddress,
      String from,
      String to,
      BigInt value,
      String tokenName,
      String tokenSymbol,
      int tokenDecimal});
}

/// @nodoc
class __$$UnstakeTokensImplCopyWithImpl<$Res>
    extends _$ActionCopyWithImpl<$Res, _$UnstakeTokensImpl>
    implements _$$UnstakeTokensImplCopyWith<$Res> {
  __$$UnstakeTokensImplCopyWithImpl(
      _$UnstakeTokensImpl _value, $Res Function(_$UnstakeTokensImpl) _then)
      : super(_value, _then);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? id = null,
    Object? name = null,
    Object? txHash = freezed,
    Object? status = null,
    Object? blockNumber = freezed,
    Object? tokenAddress = null,
    Object? from = null,
    Object? to = null,
    Object? value = null,
    Object? tokenName = null,
    Object? tokenSymbol = null,
    Object? tokenDecimal = null,
  }) {
    return _then(_$UnstakeTokensImpl(
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
      tokenAddress: null == tokenAddress
          ? _value.tokenAddress
          : tokenAddress // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt,
      tokenName: null == tokenName
          ? _value.tokenName
          : tokenName // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSymbol: null == tokenSymbol
          ? _value.tokenSymbol
          : tokenSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      tokenDecimal: null == tokenDecimal
          ? _value.tokenDecimal
          : tokenDecimal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnstakeTokensImpl extends UnstakeTokens {
  const _$UnstakeTokensImpl(
      {this.timestamp = 0,
      @JsonKey(name: '_id') required this.id,
      this.name = 'unstakeTokens',
      this.txHash,
      required this.status,
      this.blockNumber = 0,
      required this.tokenAddress,
      required this.from,
      required this.to,
      required this.value,
      required this.tokenName,
      required this.tokenSymbol,
      required this.tokenDecimal})
      : super._();

  factory _$UnstakeTokensImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnstakeTokensImplFromJson(json);

  @override
  @JsonKey()
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
  final String tokenAddress;
  @override
  final String from;
  @override
  final String to;
  @override
  final BigInt value;
  @override
  final String tokenName;
  @override
  final String tokenSymbol;
  @override
  final int tokenDecimal;

  @override
  String toString() {
    return 'Action.unstakeTokens(timestamp: $timestamp, id: $id, name: $name, txHash: $txHash, status: $status, blockNumber: $blockNumber, tokenAddress: $tokenAddress, from: $from, to: $to, value: $value, tokenName: $tokenName, tokenSymbol: $tokenSymbol, tokenDecimal: $tokenDecimal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnstakeTokensImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.txHash, txHash) || other.txHash == txHash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.tokenAddress, tokenAddress) ||
                other.tokenAddress == tokenAddress) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.tokenName, tokenName) ||
                other.tokenName == tokenName) &&
            (identical(other.tokenSymbol, tokenSymbol) ||
                other.tokenSymbol == tokenSymbol) &&
            (identical(other.tokenDecimal, tokenDecimal) ||
                other.tokenDecimal == tokenDecimal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      id,
      name,
      txHash,
      status,
      blockNumber,
      tokenAddress,
      from,
      to,
      value,
      tokenName,
      tokenSymbol,
      tokenDecimal);

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnstakeTokensImplCopyWith<_$UnstakeTokensImpl> get copyWith =>
      __$$UnstakeTokensImplCopyWithImpl<_$UnstakeTokensImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        createWallet,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        fiatDeposit,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        send,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receive,
    required TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)
        swap,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        receiveNFT,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        stakeTokens,
    required TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)
        unstakeTokens,
  }) {
    return unstakeTokens(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult? Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult? Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
  }) {
    return unstakeTokens?.call(timestamp, id, name, txHash, status, blockNumber,
        tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        createWallet,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String? from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        fiatDeposit,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        send,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receive,
    TResult Function(int timestamp, @JsonKey(name: '_id') String id,
            String name, String? txHash, String status, int? blockNumber)?
        swap,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        receiveNFT,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        stakeTokens,
    TResult Function(
            int timestamp,
            @JsonKey(name: '_id') String id,
            String name,
            String? txHash,
            String status,
            int? blockNumber,
            String tokenAddress,
            String from,
            String to,
            BigInt value,
            String tokenName,
            String tokenSymbol,
            int tokenDecimal)?
        unstakeTokens,
    required TResult orElse(),
  }) {
    if (unstakeTokens != null) {
      return unstakeTokens(timestamp, id, name, txHash, status, blockNumber,
          tokenAddress, from, to, value, tokenName, tokenSymbol, tokenDecimal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateWallet value) createWallet,
    required TResult Function(FiatDeposit value) fiatDeposit,
    required TResult Function(Send value) send,
    required TResult Function(Receive value) receive,
    required TResult Function(Swap value) swap,
    required TResult Function(ReceiveNFT value) receiveNFT,
    required TResult Function(StakeTokens value) stakeTokens,
    required TResult Function(UnstakeTokens value) unstakeTokens,
  }) {
    return unstakeTokens(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateWallet value)? createWallet,
    TResult? Function(FiatDeposit value)? fiatDeposit,
    TResult? Function(Send value)? send,
    TResult? Function(Receive value)? receive,
    TResult? Function(Swap value)? swap,
    TResult? Function(ReceiveNFT value)? receiveNFT,
    TResult? Function(StakeTokens value)? stakeTokens,
    TResult? Function(UnstakeTokens value)? unstakeTokens,
  }) {
    return unstakeTokens?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateWallet value)? createWallet,
    TResult Function(FiatDeposit value)? fiatDeposit,
    TResult Function(Send value)? send,
    TResult Function(Receive value)? receive,
    TResult Function(Swap value)? swap,
    TResult Function(ReceiveNFT value)? receiveNFT,
    TResult Function(StakeTokens value)? stakeTokens,
    TResult Function(UnstakeTokens value)? unstakeTokens,
    required TResult orElse(),
  }) {
    if (unstakeTokens != null) {
      return unstakeTokens(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnstakeTokensImplToJson(
      this,
    );
  }
}

abstract class UnstakeTokens extends Action {
  const factory UnstakeTokens(
      {final int timestamp,
      @JsonKey(name: '_id') required final String id,
      final String name,
      final String? txHash,
      required final String status,
      final int? blockNumber,
      required final String tokenAddress,
      required final String from,
      required final String to,
      required final BigInt value,
      required final String tokenName,
      required final String tokenSymbol,
      required final int tokenDecimal}) = _$UnstakeTokensImpl;
  const UnstakeTokens._() : super._();

  factory UnstakeTokens.fromJson(Map<String, dynamic> json) =
      _$UnstakeTokensImpl.fromJson;

  @override
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
  String get tokenAddress;
  String get from;
  String get to;
  BigInt get value;
  String get tokenName;
  String get tokenSymbol;
  int get tokenDecimal;

  /// Create a copy of Action
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnstakeTokensImplCopyWith<_$UnstakeTokensImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
