import 'package:freezed_annotation/freezed_annotation.dart';

part 'stake.freezed.dart';
part 'stake.g.dart';

@freezed
class StakeRequestBody with _$StakeRequestBody {
  factory StakeRequestBody({
    required String accountAddress,
    required String tokenAmount,
    required String tokenAddress,
  }) = _StakeRequestBody;

  factory StakeRequestBody.fromJson(Map<String, dynamic> json) =>
      _$StakeRequestBodyFromJson(json);
}

@freezed
class StakeResponseBody with _$StakeResponseBody {
  factory StakeResponseBody({
    required String contractAddress,
    required String encodedABI,
  }) = _StakeResponseBody;

  factory StakeResponseBody.fromJson(Map<String, dynamic> json) =>
      _$StakeResponseBodyFromJson(json);
}
