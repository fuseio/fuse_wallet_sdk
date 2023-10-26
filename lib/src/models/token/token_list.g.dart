// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenListImpl _$$TokenListImplFromJson(Map<String, dynamic> json) =>
    _$TokenListImpl(
      message: json['message'] as String,
      status: json['status'] as String,
      result: (json['result'] as List<dynamic>)
          .map((e) => TokenDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TokenListImplToJson(_$TokenListImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'result': instance.result.map((e) => e.toJson()).toList(),
    };
