import 'package:freezed_annotation/freezed_annotation.dart';

part 'relay.freezed.dart';
part 'relay.g.dart';

/// A class representing a relay object used in the relay process.
@freezed
class Relay with _$Relay {
  /// Constructs a new Relay instance.
  ///
  /// Parameters:
  /// - [network] – The network type, defaults to 'fuse'.
  /// - [gasPrice] – The gas price for the relay, defaults to 0.
  /// - [gasLimit] – The gas limit for the relay, defaults to 700000.
  /// - [transactionBody] – The transaction body as a map, defaults to an empty map.
  /// - [walletAddress] – The wallet address, required.
  /// - [walletModuleAddress] – The wallet module address, required.
  /// - [data] – The data for the relay, required.
  /// - [nonce] – The nonce for the relay, required.
  /// - [methodName] – The method name for the relay, required.
  /// - [signature] – The signature for the relay, required.
  /// - [walletModule] – The wallet module for the relay, required.
  /// - [externalId] – The external ID for the relay, optional.
  factory Relay({
    @Default('fuse') String network,
    @Default(0) int gasPrice,
    @Default(1000000) int gasLimit,
    @Default({}) Map<String, dynamic>? transactionBody,
    required String walletAddress,
    required String walletModuleAddress,
    required String data,
    required String nonce,
    required String methodName,
    required String signature,
    required String walletModule,
    String? externalId,
  }) = _Relay;

  /// Creates a Relay instance from a JSON object.
  ///
  /// Parameters:
  /// - [json] – A map representing the JSON object.
  ///
  /// Returns a Relay instance with the corresponding properties.
  factory Relay.fromJson(Map<String, dynamic> json) => _$RelayFromJson(json);
}
