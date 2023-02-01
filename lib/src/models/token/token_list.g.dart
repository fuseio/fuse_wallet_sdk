// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenList _$$_TokenListFromJson(Map<String, dynamic> json) => _$_TokenList(
      message: json['message'] as String,
      status: json['status'] as String,
      result: (json['result'] as List<dynamic>)
          .map((e) => TokenDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TokenListToJson(_$_TokenList instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'result': instance.result.map((e) => e.toJson()).toList(),
    };
