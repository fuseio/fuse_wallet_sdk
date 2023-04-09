// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActionResult _$$_ActionResultFromJson(Map<String, dynamic> json) =>
    _$_ActionResult(
      hasNextPage: json['hasNextPage'] as bool,
      hasPrevPage: json['hasPrevPage'] as bool,
      nextPage: json['nextPage'] as num?,
      prevPage: json['prevPage'] as num?,
      page: json['page'] as num?,
      totalPages: json['totalPages'] as num,
      actions: const ActionsConverter().fromJson(json['docs'] as List),
    );

Map<String, dynamic> _$$_ActionResultToJson(_$_ActionResult instance) =>
    <String, dynamic>{
      'hasNextPage': instance.hasNextPage,
      'hasPrevPage': instance.hasPrevPage,
      'nextPage': instance.nextPage,
      'prevPage': instance.prevPage,
      'page': instance.page,
      'totalPages': instance.totalPages,
      'docs': const ActionsConverter().toJson(instance.actions),
    };
