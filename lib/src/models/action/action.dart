import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fuse_wallet_sdk/src/models/trade/trade.dart';

part 'action.freezed.dart';
part 'action.g.dart';

@Freezed(unionKey: 'name')
class Action with _$Action implements Comparable<Action> {
  const Action._();

  @override
  int compareTo(Action? other) {
    if (other == null) return 1;
    return timestamp.compareTo(other.timestamp);
  }

  static Action create(Map<String, dynamic> json) {
    json =
        json.containsKey('data') ? Map.from({...json, ...json['data']}) : json;
    json['timestamp'] =
        DateTime.parse(json['updatedAt']).millisecondsSinceEpoch;
    json['value'] =
        json.containsKey('value') && [null, '', 'NaN'].contains(json['value'])
            ? '0'
            : json['value'];
    if (json.containsKey('status')) {
      json['status'] = json['status']?.toUpperCase();
    }
    return Action.fromJson(json);
  }

  static List<Action> actionsFromJson(Iterable<dynamic> docs) =>
      List.from(docs).fold<List<Action>>([], (previousValue, action) {
        try {
          return [...previousValue, Action.create(action)];
        } catch (e) {
          return previousValue;
        }
      });

  factory Action.fromJson(dynamic json) => _$ActionFromJson(json);

  bool isPending() => status == 'PENDING' || status == 'STARTED';
  bool isFailed() => status == 'FAILED';
  bool isConfirmed() => status == 'CONFIRMED' || status == 'SUCCEEDED';

  bool isGenerateWallet() {
    return maybeMap(
      orElse: () => false,
      createWallet: (value) => true,
    );
  }

  bool isSwapAction() {
    return maybeMap(
      orElse: () => false,
      swap: (value) => true,
    );
  }

  bool isNFTAction() {
    return maybeMap(
      orElse: () => false,
      receiveNFT: (value) => true,
    );
  }

  bool isStakeAction() {
    return maybeMap(
      orElse: () => false,
      unstakeTokens: (value) => true,
      stakeTokens: (value) => true,
    );
  }

  String getSender() {
    return maybeMap(
      orElse: () => '',
      fiatDeposit: (value) => value.from ?? '',
      send: (value) => value.to,
      receive: (value) => value.from,
      unstakeTokens: (v) => v.to,
      stakeTokens: (v) => v.from,
    );
  }

  String getRecipient() {
    return maybeMap(
      orElse: () => '',
      fiatDeposit: (value) => value.to,
      send: (value) => value.to,
      receive: (value) => value.to,
    );
  }

  @FreezedUnionValue('createWallet')
  const factory Action.createWallet({
    @Default(0) int timestamp,
    @JsonKey(name: '_id') required String id,
    @Default('createWallet') String name,
    String? txHash,
    required String status,
    @Default(0) int? blockNumber,
  }) = CreateWallet;

  @FreezedUnionValue('fiat-deposit')
  const factory Action.fiatDeposit({
    @Default(0) int timestamp,
    @JsonKey(name: '_id') required String id,
    @Default('fiat-deposit') String name,
    String? txHash,
    required String status,
    @Default(0) int? blockNumber,
    required String tokenAddress,
    String? from,
    required String to,
    required BigInt value,
    required String tokenName,
    required String tokenSymbol,
    required int tokenDecimal,
  }) = FiatDeposit;

  @FreezedUnionValue('sendTokens')
  const factory Action.send({
    @Default(0) int timestamp,
    @JsonKey(name: '_id') required String id,
    @Default('sendTokens') String name,
    String? txHash,
    required String status,
    @Default(0) int? blockNumber,
    required String tokenAddress,
    required String from,
    required String to,
    required BigInt value,
    required String tokenName,
    required String tokenSymbol,
    required int tokenDecimal,
  }) = Send;

  @FreezedUnionValue('receiveTokens')
  const factory Action.receive({
    @Default(0) int timestamp,
    @JsonKey(name: '_id') required String id,
    @Default('receiveTokens') String name,
    String? txHash,
    required String status,
    @Default(0) int? blockNumber,
    required String tokenAddress,
    required String from,
    required String to,
    required BigInt value,
    required String tokenName,
    required String tokenSymbol,
    required int tokenDecimal,
  }) = Receive;

  @FreezedUnionValue('swapTokens')
  const factory Action.swap({
    @Default(0) int timestamp,
    @JsonKey(name: '_id') required String id,
    @Default('swapTokens') String name,
    String? txHash,
    required String status,
    @Default(0) int? blockNumber,
    @JsonKey(name: 'metadata') Trade? tradeInfo,
  }) = Swap;

  @FreezedUnionValue('receiveNFT')
  const factory Action.receiveNFT({
    @Default(0) int timestamp,
    @JsonKey(name: '_id') required String id,
    @Default('receiveNFT') String name,
    String? txHash,
    required String status,
    @Default(0) int? blockNumber,
    required String tokenAddress,
    required String from,
    required String to,
    required String tokenName,
    required String tokenSymbol,
    required int tokenDecimal,
  }) = ReceiveNFT;

  @FreezedUnionValue('stakeTokens')
  const factory Action.stakeTokens({
    @Default(0) int timestamp,
    @JsonKey(name: '_id') required String id,
    @Default('stakeTokens') String name,
    String? txHash,
    required String status,
    @Default(0) int? blockNumber,
    required String tokenAddress,
    required String from,
    required String to,
    required BigInt value,
    required String tokenName,
    required String tokenSymbol,
    required int tokenDecimal,
  }) = StakeTokens;

  @FreezedUnionValue('unstakeTokens')
  const factory Action.unstakeTokens({
    @Default(0) int timestamp,
    @JsonKey(name: '_id') required String id,
    @Default('unstakeTokens') String name,
    String? txHash,
    required String status,
    @Default(0) int? blockNumber,
    required String tokenAddress,
    required String from,
    required String to,
    required BigInt value,
    required String tokenName,
    required String tokenSymbol,
    required int tokenDecimal,
  }) = UnstakeTokens;
}
