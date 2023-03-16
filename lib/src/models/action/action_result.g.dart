// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActionResult _$$_ActionResultFromJson(Map<String, dynamic> json) =>
    _$_ActionResult(
      hasNextPage: json['hasNextPage'] as bool,
      nextPage: json['nextPage'] as num,
      actions: (json['actions'] as List<dynamic>)
          .map((e) => Action.fromJson(e))
          .toList(),
    );

Map<String, dynamic> _$$_ActionResultToJson(_$_ActionResult instance) =>
    <String, dynamic>{
      'hasNextPage': instance.hasNextPage,
      'nextPage': instance.nextPage,
      'actions': instance.actions.map((e) => e.toJson()).toList(),
    };
