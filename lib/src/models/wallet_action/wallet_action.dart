import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuse_wallet_sdk/src/models/models.dart';

part 'wallet_action.freezed.dart';
part 'wallet_action.g.dart';

/// A converter that helps in converting a timestamp from a string to an integer and vice versa.
class TimestampConverter implements JsonConverter<int, String> {
  const TimestampConverter();

  /// Converts a timestamp string to its integer representation.
  @override
  int fromJson(String value) => DateTime.parse(value).millisecondsSinceEpoch;

  /// Converts a timestamp integer to its string representation.
  @override
  String toJson(int value) => value.toString();
}

/// A class representing different types of actions related to wallet operations.
///
/// This class provides a way to model various wallet actions like token transfers,
/// token swaps, staking, unstaking, etc. Each action has its own set of attributes
/// and can be differentiated using the `name` attribute.
@Freezed(unionKey: 'name')
class WalletAction with _$WalletAction implements Comparable<WalletAction> {
  const WalletAction._();

  /// Compares this [WalletAction] to [other], based on their timestamps.
  ///
  /// Returns:
  /// - A positive integer if this [WalletAction] is greater than [other].
  /// - A negative integer if this [WalletAction] is less than [other].
  /// - 0 if this [WalletAction] is equal to [other].
  @override
  int compareTo(WalletAction? other) {
    if (other == null) return 1;
    return timestamp.compareTo(other.timestamp);
  }

  /// Creates a list of [WalletAction] objects from an iterable of dynamic objects.
  ///
  /// Returns: A list of [WalletAction] objects.
  static List<WalletAction> actionsFromJson(Iterable<dynamic> docs) =>
      List.from(docs).fold<List<WalletAction>>(
        [],
        (previousValue, action) {
          try {
            return [...previousValue, WalletAction.fromJson(action)];
          } catch (e) {
            return previousValue;
          }
        },
      );

  /// Creates an [WalletAction] from a JSON object.
  ///
  /// Returns: A new [WalletAction] instance.
  factory WalletAction.fromJson(dynamic json) => _$WalletActionFromJson(json);

  /// Checks if the wallet action is in a pending state.
  bool isPending() => status == 'pending' || status == 'started';

  /// Checks if the wallet action has failed.
  bool isFailed() => status == 'failed';

  /// Checks if the wallet action has been confirmed.
  bool isConfirmed() =>
      status == 'confirmed' || status == 'success' || status == 'succeeded';

  /// Represents a batch transaction action on the blockchain.
  @FreezedUnionValue('batchTransaction')
  const factory WalletAction.batchTransaction({
    @TimestampConverter() @JsonKey(name: 'updatedAt') @Default(0) int timestamp,
    @JsonKey(name: '_id') required String id,
    @Default('batchTransaction') String name,
    String? txHash,
    required String status,
    @Default(0) int? blockNumber,
    required String userOpHash,
    required String description,
    @Default([]) List<TokenEvent> sent,
    @Default([]) List<TokenEvent> received,
  }) = BatchTransaction;

  /// Represents a token transfer action on the blockchain.
  @FreezedUnionValue('tokenTransfer')
  const factory WalletAction.tokenTransfer({
    @TimestampConverter() @JsonKey(name: 'updatedAt') @Default(0) int timestamp,
    @JsonKey(name: '_id') required String id,
    @Default('tokenTransfer') String name,
    String? txHash,
    required String userOpHash,
    required String status,
    @Default(0) int? blockNumber,
    required String description,
    @Default([]) List<TokenEvent> sent,
    @Default([]) List<TokenEvent> received,
  }) = TokenTransfer;

  /// Represents a token swap action on the blockchain.
  @FreezedUnionValue('swapTokens')
  const factory WalletAction.swapTokens({
    @TimestampConverter() @JsonKey(name: 'updatedAt') @Default(0) int timestamp,
    @JsonKey(name: '_id') required String id,
    @Default('swapTokens') String name,
    String? txHash,
    required String status,
    @Default(0) int? blockNumber,
    required String userOpHash,
    required String description,
    @Default([]) List<TokenEvent> sent,
    @Default([]) List<TokenEvent> received,
  }) = SwapTokens;

  /// Represents a non-fungible token (NFT) transfer action on the blockchain.
  @FreezedUnionValue('nftTransfer')
  const factory WalletAction.nftTransfer({
    @TimestampConverter() @JsonKey(name: 'updatedAt') @Default(0) int timestamp,
    @JsonKey(name: '_id') required String id,
    @Default('nftTransfer') String name,
    String? txHash,
    required String status,
    @Default(0) int? blockNumber,
    required String userOpHash,
    required String description,
    @Default([]) List<TokenEvent> sent,
    @Default([]) List<TokenEvent> received,
  }) = NftTransfer;

  /// Represents a token approval action on the blockchain.’
  @FreezedUnionValue('approveToken')
  const factory WalletAction.approveToken({
    @TimestampConverter() @JsonKey(name: 'updatedAt') @Default(0) int timestamp,
    @JsonKey(name: '_id') required String id,
    @Default('approveToken') String name,
    String? txHash,
    required String status,
    @Default(0) int? blockNumber,
    required String userOpHash,
    required String description,
    @Default([]) List<TokenEvent> sent,
  }) = ApproveToken;

  /// Represents a token staking action on the blockchain.
  @FreezedUnionValue('stakeTokens')
  const factory WalletAction.stakeTokens({
    @TimestampConverter() @JsonKey(name: 'updatedAt') @Default(0) int timestamp,
    @JsonKey(name: '_id') required String id,
    @Default('stakeTokens') String name,
    String? txHash,
    required String status,
    @Default(0) int? blockNumber,
    required String userOpHash,
    required String description,
    @Default([]) List<TokenEvent> sent,
    @Default([]) List<TokenEvent> received,
  }) = StakeTokensAction;

  /// Represents a token unstaking action on the blockchain.
  @FreezedUnionValue('unstakeTokens')
  const factory WalletAction.unstakeTokens({
    @TimestampConverter() @JsonKey(name: 'updatedAt') @Default(0) int timestamp,
    @JsonKey(name: '_id') required String id,
    @Default('unstakeTokens') String name,
    String? txHash,
    required String status,
    @Default(0) int? blockNumber,
    required String userOpHash,
    required String description,
    @Default([]) List<TokenEvent> sent,
    @Default([]) List<TokenEvent> received,
  }) = UnstakeTokensAction;
}
