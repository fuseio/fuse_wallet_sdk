import 'package:freezed_annotation/freezed_annotation.dart';

part 'trade_call_parameters.freezed.dart';
part 'trade_call_parameters.g.dart';

@freezed
class TradeCallParameters with _$TradeCallParameters {
  factory TradeCallParameters({
    required String methodName,
    required List<dynamic> args,
    required String value,
    required Map<String, dynamic> rawTxn,
  }) = _TradeCallParameters;

  factory TradeCallParameters.fromJson(Map<String, dynamic> json) =>
      _$TradeCallParametersFromJson(json);
}
