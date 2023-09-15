// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatchTransaction _$$BatchTransactionFromJson(Map<String, dynamic> json) =>
    _$BatchTransaction(
      timestamp: json['updatedAt'] == null
          ? 0
          : const TimestampConverter().fromJson(json['updatedAt'] as String),
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'batchTransaction',
      txHash: json['txHash'] as String?,
      status: json['status'] as String,
      blockNumber: json['blockNumber'] as int? ?? 0,
      userOpHash: json['userOpHash'] as String,
      description: json['description'] as String,
      sent: (json['sent'] as List<dynamic>?)
              ?.map((e) => TokenEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      received: (json['received'] as List<dynamic>?)
              ?.map((e) => TokenEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BatchTransactionToJson(_$BatchTransaction instance) =>
    <String, dynamic>{
      'updatedAt': const TimestampConverter().toJson(instance.timestamp),
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
      'userOpHash': instance.userOpHash,
      'description': instance.description,
      'sent': instance.sent.map((e) => e.toJson()).toList(),
      'received': instance.received.map((e) => e.toJson()).toList(),
    };

_$TokenTransfer _$$TokenTransferFromJson(Map<String, dynamic> json) =>
    _$TokenTransfer(
      timestamp: json['updatedAt'] == null
          ? 0
          : const TimestampConverter().fromJson(json['updatedAt'] as String),
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'tokenTransfer',
      txHash: json['txHash'] as String?,
      userOpHash: json['userOpHash'] as String,
      status: json['status'] as String,
      blockNumber: json['blockNumber'] as int? ?? 0,
      description: json['description'] as String,
      sent: (json['sent'] as List<dynamic>?)
              ?.map((e) => TokenEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      received: (json['received'] as List<dynamic>?)
              ?.map((e) => TokenEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TokenTransferToJson(_$TokenTransfer instance) =>
    <String, dynamic>{
      'updatedAt': const TimestampConverter().toJson(instance.timestamp),
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'userOpHash': instance.userOpHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
      'description': instance.description,
      'sent': instance.sent.map((e) => e.toJson()).toList(),
      'received': instance.received.map((e) => e.toJson()).toList(),
    };

_$SwapTokens _$$SwapTokensFromJson(Map<String, dynamic> json) => _$SwapTokens(
      timestamp: json['updatedAt'] == null
          ? 0
          : const TimestampConverter().fromJson(json['updatedAt'] as String),
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'swapTokens',
      txHash: json['txHash'] as String?,
      status: json['status'] as String,
      blockNumber: json['blockNumber'] as int? ?? 0,
      userOpHash: json['userOpHash'] as String,
      description: json['description'] as String,
      sent: (json['sent'] as List<dynamic>?)
              ?.map((e) => TokenEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      received: (json['received'] as List<dynamic>?)
              ?.map((e) => TokenEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SwapTokensToJson(_$SwapTokens instance) =>
    <String, dynamic>{
      'updatedAt': const TimestampConverter().toJson(instance.timestamp),
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
      'userOpHash': instance.userOpHash,
      'description': instance.description,
      'sent': instance.sent.map((e) => e.toJson()).toList(),
      'received': instance.received.map((e) => e.toJson()).toList(),
    };

_$NftTransfer _$$NftTransferFromJson(Map<String, dynamic> json) =>
    _$NftTransfer(
      timestamp: json['updatedAt'] == null
          ? 0
          : const TimestampConverter().fromJson(json['updatedAt'] as String),
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'nftTransfer',
      txHash: json['txHash'] as String?,
      status: json['status'] as String,
      blockNumber: json['blockNumber'] as int? ?? 0,
      userOpHash: json['userOpHash'] as String,
      description: json['description'] as String,
      sent: (json['sent'] as List<dynamic>?)
              ?.map((e) => TokenEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      received: (json['received'] as List<dynamic>?)
              ?.map((e) => TokenEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NftTransferToJson(_$NftTransfer instance) =>
    <String, dynamic>{
      'updatedAt': const TimestampConverter().toJson(instance.timestamp),
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
      'userOpHash': instance.userOpHash,
      'description': instance.description,
      'sent': instance.sent.map((e) => e.toJson()).toList(),
      'received': instance.received.map((e) => e.toJson()).toList(),
    };

_$ApproveToken _$$ApproveTokenFromJson(Map<String, dynamic> json) =>
    _$ApproveToken(
      timestamp: json['updatedAt'] == null
          ? 0
          : const TimestampConverter().fromJson(json['updatedAt'] as String),
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'approveToken',
      txHash: json['txHash'] as String?,
      status: json['status'] as String,
      blockNumber: json['blockNumber'] as int? ?? 0,
      userOpHash: json['userOpHash'] as String,
      description: json['description'] as String,
      sent: (json['sent'] as List<dynamic>?)
              ?.map((e) => TokenEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ApproveTokenToJson(_$ApproveToken instance) =>
    <String, dynamic>{
      'updatedAt': const TimestampConverter().toJson(instance.timestamp),
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
      'userOpHash': instance.userOpHash,
      'description': instance.description,
      'sent': instance.sent.map((e) => e.toJson()).toList(),
    };

_$StakeTokensAction _$$StakeTokensActionFromJson(Map<String, dynamic> json) =>
    _$StakeTokensAction(
      timestamp: json['updatedAt'] == null
          ? 0
          : const TimestampConverter().fromJson(json['updatedAt'] as String),
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'stakeTokens',
      txHash: json['txHash'] as String?,
      status: json['status'] as String,
      blockNumber: json['blockNumber'] as int? ?? 0,
      userOpHash: json['userOpHash'] as String,
      description: json['description'] as String,
      sent: (json['sent'] as List<dynamic>?)
              ?.map((e) => TokenEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      received: (json['received'] as List<dynamic>?)
              ?.map((e) => TokenEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$StakeTokensActionToJson(_$StakeTokensAction instance) =>
    <String, dynamic>{
      'updatedAt': const TimestampConverter().toJson(instance.timestamp),
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
      'userOpHash': instance.userOpHash,
      'description': instance.description,
      'sent': instance.sent.map((e) => e.toJson()).toList(),
      'received': instance.received.map((e) => e.toJson()).toList(),
    };

_$UnstakeTokensAction _$$UnstakeTokensActionFromJson(
        Map<String, dynamic> json) =>
    _$UnstakeTokensAction(
      timestamp: json['updatedAt'] == null
          ? 0
          : const TimestampConverter().fromJson(json['updatedAt'] as String),
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'unstakeTokens',
      txHash: json['txHash'] as String?,
      status: json['status'] as String,
      blockNumber: json['blockNumber'] as int? ?? 0,
      userOpHash: json['userOpHash'] as String,
      description: json['description'] as String,
      sent: (json['sent'] as List<dynamic>?)
              ?.map((e) => TokenEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      received: (json['received'] as List<dynamic>?)
              ?.map((e) => TokenEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UnstakeTokensActionToJson(
        _$UnstakeTokensAction instance) =>
    <String, dynamic>{
      'updatedAt': const TimestampConverter().toJson(instance.timestamp),
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
      'userOpHash': instance.userOpHash,
      'description': instance.description,
      'sent': instance.sent.map((e) => e.toJson()).toList(),
      'received': instance.received.map((e) => e.toJson()).toList(),
    };
