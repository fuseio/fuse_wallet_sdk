import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuse_wallet_sdk/src/models/user_op/erc20_transfers.dart';
import 'package:fuse_wallet_sdk/src/models/user_op/erc721_transfers.dart';

part 'user_op.freezed.dart';
part 'user_op.g.dart';

@freezed
class UserOp with _$UserOp {
  const factory UserOp({
    required String transactionHash,
    required String userOpHash,
    required String sender,
    required String entryPoint,
    required String paymaster,
    required String paymasterAndData,
    required String nonce,
    required bool success,
    String? revertReason,
    required String blockTime,
    required String blockNumber,
    required String target,
    required String beneficiary,
    @Default([]) List<Erc20Transfers> erc20Transfers,
    @Default([]) List<Erc721Transfers> erc721Transfers,
  }) = _UserOp;

  factory UserOp.fromJson(Map<String, Object?> json) => _$UserOpFromJson(json);

  /// Creates a list of UserOp instances from a list of JSON objects.
  ///
  /// Parameters:
  /// - [docs] – An iterable of JSON objects.
  ///
  /// Returns a list of UserOp instances with the corresponding properties.
  static List<UserOp> opsFromJson(Iterable<dynamic> userOps) =>
      userOps.map((e) => UserOp.fromJson(e)).toList();
}
