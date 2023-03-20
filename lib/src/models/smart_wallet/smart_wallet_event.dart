import 'package:freezed_annotation/freezed_annotation.dart';

part 'smart_wallet_event.freezed.dart';
part 'smart_wallet_event.g.dart';

/// A class that represents a Smart Wallet event.
///
/// This class contains information about a specific event that occurs
/// within the context of a smart wallet, such as transactions.
@freezed
class SmartWalletEvent with _$SmartWalletEvent {
  /// Creates a new [SmartWalletEvent] instance.
  ///
  /// The [name] parameter is the name of the event, and the [data] parameter
  /// is a map containing relevant event data.
  factory SmartWalletEvent({
    @JsonKey(name: 'eventName') required String name,
    @JsonKey(name: 'eventData') required Map<String, dynamic> data,
  }) = _SmartWalletEvent;

  /// Creates a new [SmartWalletEvent] instance from a JSON object.
  ///
  /// This function takes a [json] map and converts it into an instance
  /// of [SmartWalletEvent].
  factory SmartWalletEvent.fromJson(Map<String, dynamic> json) =>
      _$SmartWalletEventFromJson(json);
}
