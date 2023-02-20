import 'package:freezed_annotation/freezed_annotation.dart';

part 'relay.freezed.dart';
part 'relay.g.dart';

@freezed
class Relay with _$Relay {
  factory Relay({
    @Default('fuse') String network,
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

  factory Relay.fromJson(Map<String, dynamic> json) => _$RelayFromJson(json);
}
