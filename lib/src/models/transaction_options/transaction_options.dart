import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_options.freezed.dart';
part 'transaction_options.g.dart';

/// Represents options for conducting a blockchain transaction, particularly focusing
/// on the fee structure and potential retries.
///
/// The [TxOptions] class is a container for fee-related details and retry configurations
/// that can influence how a transaction behaves on the blockchain. The class provides
/// facilities for both JSON serialization and deserialization, making it versatile
/// for API interactions.
@freezed
class TxOptions with _$TxOptions {
  /// Constructs a [TxOptions] instance.
  ///
  /// - [feeIncrementPercentage]: If a transaction needs to be retried, this parameter
  /// dictates how much more expensive the retry should be, in terms of gas. Note: The
  /// protocol generally mandates that the new gas price should be at least 10% higher
  /// than the previous to ensure a retry gets picked up by miners.
  /// 
  /// - [useNonceSequence]: This flag indicates whether a transaction should be sent
  /// in parallel.
  /// This maintains the security and order of transactions (like preventing 
  /// replay attacks) while giving users more control over how their transactions 
  /// are processed and organized. This is particularly useful for complex accounts,
  /// like smart contract wallets, which might need to manage different types of
  /// transactions in different ways.
  ///
  /// - [customNonceKey]: This parameter is used to specify a custom nonce key for a
  /// user operation. This is useful for smart contract wallets that need to manage
  /// multiple transactions in parallel.
  /// 
  /// - [withRetry]: This flag indicates whether a transaction should be reattempted
  /// if it fails initially. If set to `true`, the transaction fee (or gas price)
  /// will be increased by the [feeIncrementPercentage] before the retry.
  factory TxOptions({
    @Default(10) int feeIncrementPercentage,
    @Default(false) bool useNonceSequence,
    BigInt? customNonceKey,
    required bool withRetry,
  }) = _TxOptions;

  /// Constructs a [TxOptions] instance from its JSON representation.
  ///
  /// This method is especially valuable when parsing transaction options from
  /// external data sources like an API response or local storage.
  factory TxOptions.fromJson(Map<String, dynamic> json) =>
      _$TxOptionsFromJson(json);
}
