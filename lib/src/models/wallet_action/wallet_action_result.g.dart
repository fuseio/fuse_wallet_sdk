// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_action_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletActionResultImpl _$$WalletActionResultImplFromJson(
        Map<String, dynamic> json) =>
    _$WalletActionResultImpl(
      hasNextPage: json['hasNextPage'] as bool,
      hasPrevPage: json['hasPrevPage'] as bool,
      nextPage: json['nextPage'] as num?,
      prevPage: json['prevPage'] as num?,
      page: json['page'] as num?,
      totalDocs: json['totalDocs'] as num,
      limit: json['limit'] as num,
      totalPages: json['totalPages'] as num,
      pagingCounter: json['pagingCounter'] as num,
      actions: const WalletActionsConverter().fromJson(json['docs'] as List),
    );

Map<String, dynamic> _$$WalletActionResultImplToJson(
        _$WalletActionResultImpl instance) =>
    <String, dynamic>{
      'hasNextPage': instance.hasNextPage,
      'hasPrevPage': instance.hasPrevPage,
      'nextPage': instance.nextPage,
      'prevPage': instance.prevPage,
      'page': instance.page,
      'totalDocs': instance.totalDocs,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
      'pagingCounter': instance.pagingCounter,
      'docs': const WalletActionsConverter().toJson(instance.actions),
    };
