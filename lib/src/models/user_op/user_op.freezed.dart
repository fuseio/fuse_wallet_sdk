// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_op.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserOp _$UserOpFromJson(Map<String, dynamic> json) {
  return _UserOp.fromJson(json);
}

/// @nodoc
mixin _$UserOp {
  String get transactionHash => throw _privateConstructorUsedError;
  String get userOpHash => throw _privateConstructorUsedError;
  String get sender => throw _privateConstructorUsedError;
  String get entryPoint => throw _privateConstructorUsedError;
  String get paymaster => throw _privateConstructorUsedError;
  String get paymasterAndData => throw _privateConstructorUsedError;
  String get nonce => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String? get revertReason => throw _privateConstructorUsedError;
  String get blockTime => throw _privateConstructorUsedError;
  String get blockNumber => throw _privateConstructorUsedError;
  String get target => throw _privateConstructorUsedError;
  String get beneficiary => throw _privateConstructorUsedError;
  List<Erc20Transfers> get erc20Transfers => throw _privateConstructorUsedError;
  List<Erc721Transfers> get erc721Transfers =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserOpCopyWith<UserOp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOpCopyWith<$Res> {
  factory $UserOpCopyWith(UserOp value, $Res Function(UserOp) then) =
      _$UserOpCopyWithImpl<$Res, UserOp>;
  @useResult
  $Res call(
      {String transactionHash,
      String userOpHash,
      String sender,
      String entryPoint,
      String paymaster,
      String paymasterAndData,
      String nonce,
      bool success,
      String? revertReason,
      String blockTime,
      String blockNumber,
      String target,
      String beneficiary,
      List<Erc20Transfers> erc20Transfers,
      List<Erc721Transfers> erc721Transfers});
}

/// @nodoc
class _$UserOpCopyWithImpl<$Res, $Val extends UserOp>
    implements $UserOpCopyWith<$Res> {
  _$UserOpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionHash = null,
    Object? userOpHash = null,
    Object? sender = null,
    Object? entryPoint = null,
    Object? paymaster = null,
    Object? paymasterAndData = null,
    Object? nonce = null,
    Object? success = null,
    Object? revertReason = freezed,
    Object? blockTime = null,
    Object? blockNumber = null,
    Object? target = null,
    Object? beneficiary = null,
    Object? erc20Transfers = null,
    Object? erc721Transfers = null,
  }) {
    return _then(_value.copyWith(
      transactionHash: null == transactionHash
          ? _value.transactionHash
          : transactionHash // ignore: cast_nullable_to_non_nullable
              as String,
      userOpHash: null == userOpHash
          ? _value.userOpHash
          : userOpHash // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      entryPoint: null == entryPoint
          ? _value.entryPoint
          : entryPoint // ignore: cast_nullable_to_non_nullable
              as String,
      paymaster: null == paymaster
          ? _value.paymaster
          : paymaster // ignore: cast_nullable_to_non_nullable
              as String,
      paymasterAndData: null == paymasterAndData
          ? _value.paymasterAndData
          : paymasterAndData // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      revertReason: freezed == revertReason
          ? _value.revertReason
          : revertReason // ignore: cast_nullable_to_non_nullable
              as String?,
      blockTime: null == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: null == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiary: null == beneficiary
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as String,
      erc20Transfers: null == erc20Transfers
          ? _value.erc20Transfers
          : erc20Transfers // ignore: cast_nullable_to_non_nullable
              as List<Erc20Transfers>,
      erc721Transfers: null == erc721Transfers
          ? _value.erc721Transfers
          : erc721Transfers // ignore: cast_nullable_to_non_nullable
              as List<Erc721Transfers>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserOpImplCopyWith<$Res> implements $UserOpCopyWith<$Res> {
  factory _$$UserOpImplCopyWith(
          _$UserOpImpl value, $Res Function(_$UserOpImpl) then) =
      __$$UserOpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transactionHash,
      String userOpHash,
      String sender,
      String entryPoint,
      String paymaster,
      String paymasterAndData,
      String nonce,
      bool success,
      String? revertReason,
      String blockTime,
      String blockNumber,
      String target,
      String beneficiary,
      List<Erc20Transfers> erc20Transfers,
      List<Erc721Transfers> erc721Transfers});
}

/// @nodoc
class __$$UserOpImplCopyWithImpl<$Res>
    extends _$UserOpCopyWithImpl<$Res, _$UserOpImpl>
    implements _$$UserOpImplCopyWith<$Res> {
  __$$UserOpImplCopyWithImpl(
      _$UserOpImpl _value, $Res Function(_$UserOpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionHash = null,
    Object? userOpHash = null,
    Object? sender = null,
    Object? entryPoint = null,
    Object? paymaster = null,
    Object? paymasterAndData = null,
    Object? nonce = null,
    Object? success = null,
    Object? revertReason = freezed,
    Object? blockTime = null,
    Object? blockNumber = null,
    Object? target = null,
    Object? beneficiary = null,
    Object? erc20Transfers = null,
    Object? erc721Transfers = null,
  }) {
    return _then(_$UserOpImpl(
      transactionHash: null == transactionHash
          ? _value.transactionHash
          : transactionHash // ignore: cast_nullable_to_non_nullable
              as String,
      userOpHash: null == userOpHash
          ? _value.userOpHash
          : userOpHash // ignore: cast_nullable_to_non_nullable
              as String,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      entryPoint: null == entryPoint
          ? _value.entryPoint
          : entryPoint // ignore: cast_nullable_to_non_nullable
              as String,
      paymaster: null == paymaster
          ? _value.paymaster
          : paymaster // ignore: cast_nullable_to_non_nullable
              as String,
      paymasterAndData: null == paymasterAndData
          ? _value.paymasterAndData
          : paymasterAndData // ignore: cast_nullable_to_non_nullable
              as String,
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      revertReason: freezed == revertReason
          ? _value.revertReason
          : revertReason // ignore: cast_nullable_to_non_nullable
              as String?,
      blockTime: null == blockTime
          ? _value.blockTime
          : blockTime // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: null == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      beneficiary: null == beneficiary
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as String,
      erc20Transfers: null == erc20Transfers
          ? _value.erc20Transfers
          : erc20Transfers // ignore: cast_nullable_to_non_nullable
              as List<Erc20Transfers>,
      erc721Transfers: null == erc721Transfers
          ? _value.erc721Transfers
          : erc721Transfers // ignore: cast_nullable_to_non_nullable
              as List<Erc721Transfers>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserOpImpl implements _UserOp {
  const _$UserOpImpl(
      {required this.transactionHash,
      required this.userOpHash,
      required this.sender,
      required this.entryPoint,
      required this.paymaster,
      required this.paymasterAndData,
      required this.nonce,
      required this.success,
      this.revertReason,
      required this.blockTime,
      required this.blockNumber,
      required this.target,
      required this.beneficiary,
      this.erc20Transfers = const [],
      this.erc721Transfers = const []});

  factory _$UserOpImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserOpImplFromJson(json);

  @override
  final String transactionHash;
  @override
  final String userOpHash;
  @override
  final String sender;
  @override
  final String entryPoint;
  @override
  final String paymaster;
  @override
  final String paymasterAndData;
  @override
  final String nonce;
  @override
  final bool success;
  @override
  final String? revertReason;
  @override
  final String blockTime;
  @override
  final String blockNumber;
  @override
  final String target;
  @override
  final String beneficiary;
  @override
  @JsonKey()
  final List<Erc20Transfers> erc20Transfers;
  @override
  @JsonKey()
  final List<Erc721Transfers> erc721Transfers;

  @override
  String toString() {
    return 'UserOp(transactionHash: $transactionHash, userOpHash: $userOpHash, sender: $sender, entryPoint: $entryPoint, paymaster: $paymaster, paymasterAndData: $paymasterAndData, nonce: $nonce, success: $success, revertReason: $revertReason, blockTime: $blockTime, blockNumber: $blockNumber, target: $target, beneficiary: $beneficiary, erc20Transfers: $erc20Transfers, erc721Transfers: $erc721Transfers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserOpImpl &&
            (identical(other.transactionHash, transactionHash) ||
                other.transactionHash == transactionHash) &&
            (identical(other.userOpHash, userOpHash) ||
                other.userOpHash == userOpHash) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.entryPoint, entryPoint) ||
                other.entryPoint == entryPoint) &&
            (identical(other.paymaster, paymaster) ||
                other.paymaster == paymaster) &&
            (identical(other.paymasterAndData, paymasterAndData) ||
                other.paymasterAndData == paymasterAndData) &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.revertReason, revertReason) ||
                other.revertReason == revertReason) &&
            (identical(other.blockTime, blockTime) ||
                other.blockTime == blockTime) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.beneficiary, beneficiary) ||
                other.beneficiary == beneficiary) &&
            const DeepCollectionEquality()
                .equals(other.erc20Transfers, erc20Transfers) &&
            const DeepCollectionEquality()
                .equals(other.erc721Transfers, erc721Transfers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      transactionHash,
      userOpHash,
      sender,
      entryPoint,
      paymaster,
      paymasterAndData,
      nonce,
      success,
      revertReason,
      blockTime,
      blockNumber,
      target,
      beneficiary,
      const DeepCollectionEquality().hash(erc20Transfers),
      const DeepCollectionEquality().hash(erc721Transfers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserOpImplCopyWith<_$UserOpImpl> get copyWith =>
      __$$UserOpImplCopyWithImpl<_$UserOpImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserOpImplToJson(
      this,
    );
  }
}

abstract class _UserOp implements UserOp {
  const factory _UserOp(
      {required final String transactionHash,
      required final String userOpHash,
      required final String sender,
      required final String entryPoint,
      required final String paymaster,
      required final String paymasterAndData,
      required final String nonce,
      required final bool success,
      final String? revertReason,
      required final String blockTime,
      required final String blockNumber,
      required final String target,
      required final String beneficiary,
      final List<Erc20Transfers> erc20Transfers,
      final List<Erc721Transfers> erc721Transfers}) = _$UserOpImpl;

  factory _UserOp.fromJson(Map<String, dynamic> json) = _$UserOpImpl.fromJson;

  @override
  String get transactionHash;
  @override
  String get userOpHash;
  @override
  String get sender;
  @override
  String get entryPoint;
  @override
  String get paymaster;
  @override
  String get paymasterAndData;
  @override
  String get nonce;
  @override
  bool get success;
  @override
  String? get revertReason;
  @override
  String get blockTime;
  @override
  String get blockNumber;
  @override
  String get target;
  @override
  String get beneficiary;
  @override
  List<Erc20Transfers> get erc20Transfers;
  @override
  List<Erc721Transfers> get erc721Transfers;
  @override
  @JsonKey(ignore: true)
  _$$UserOpImplCopyWith<_$UserOpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
