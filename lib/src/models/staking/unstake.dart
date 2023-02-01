import 'package:freezed_annotation/freezed_annotation.dart';

part 'unstake.freezed.dart';
part 'unstake.g.dart';

@freezed
class UnstakeRequestBody with _$UnstakeRequestBody {
  factory UnstakeRequestBody({
    required String accountAddress,
    required String tokenAmount,
    required String tokenAddress,
  }) = _UnstakeRequestBody;

  factory UnstakeRequestBody.fromJson(Map<String, dynamic> json) =>
      _$UnstakeRequestBodyFromJson(json);
}

@freezed
class UnstakeResponseBody with _$UnstakeResponseBody {
  factory UnstakeResponseBody({
    required String contractAddress,
    required String encodedABI,
  }) = _UnstakeResponseBody;

  factory UnstakeResponseBody.fromJson(Map<String, dynamic> json) =>
      _$UnstakeResponseBodyFromJson(json);
}
