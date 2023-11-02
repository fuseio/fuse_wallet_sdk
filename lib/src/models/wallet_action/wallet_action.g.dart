// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatchTransactionImpl _$$BatchTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$BatchTransactionImpl(
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

Map<String, dynamic> _$$BatchTransactionImplToJson(
        _$BatchTransactionImpl instance) =>
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

_$TokenTransferImpl _$$TokenTransferImplFromJson(Map<String, dynamic> json) =>
    _$TokenTransferImpl(
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

Map<String, dynamic> _$$TokenTransferImplToJson(_$TokenTransferImpl instance) =>
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

_$TokenReceiveImpl _$$TokenReceiveImplFromJson(Map<String, dynamic> json) =>
    _$TokenReceiveImpl(
      timestamp: json['updatedAt'] == null
          ? 0
          : const TimestampConverter().fromJson(json['updatedAt'] as String),
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'tokenReceive',
      txHash: json['txHash'] as String?,
      userOpHash: json['userOpHash'] as String?,
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

Map<String, dynamic> _$$TokenReceiveImplToJson(_$TokenReceiveImpl instance) =>
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

_$NftReceiveImpl _$$NftReceiveImplFromJson(Map<String, dynamic> json) =>
    _$NftReceiveImpl(
      timestamp: json['updatedAt'] == null
          ? 0
          : const TimestampConverter().fromJson(json['updatedAt'] as String),
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'nftReceive',
      txHash: json['txHash'] as String?,
      userOpHash: json['userOpHash'] as String?,
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

Map<String, dynamic> _$$NftReceiveImplToJson(_$NftReceiveImpl instance) =>
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

_$SwapTokensImpl _$$SwapTokensImplFromJson(Map<String, dynamic> json) =>
    _$SwapTokensImpl(
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

Map<String, dynamic> _$$SwapTokensImplToJson(_$SwapTokensImpl instance) =>
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

_$NftTransferImpl _$$NftTransferImplFromJson(Map<String, dynamic> json) =>
    _$NftTransferImpl(
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

Map<String, dynamic> _$$NftTransferImplToJson(_$NftTransferImpl instance) =>
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

_$ApproveTokenImpl _$$ApproveTokenImplFromJson(Map<String, dynamic> json) =>
    _$ApproveTokenImpl(
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
      received: (json['received'] as List<dynamic>?)
              ?.map((e) => TokenEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ApproveTokenImplToJson(_$ApproveTokenImpl instance) =>
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

_$StakeTokensActionImpl _$$StakeTokensActionImplFromJson(
        Map<String, dynamic> json) =>
    _$StakeTokensActionImpl(
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

Map<String, dynamic> _$$StakeTokensActionImplToJson(
        _$StakeTokensActionImpl instance) =>
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

_$UnstakeTokensActionImpl _$$UnstakeTokensActionImplFromJson(
        Map<String, dynamic> json) =>
    _$UnstakeTokensActionImpl(
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

Map<String, dynamic> _$$UnstakeTokensActionImplToJson(
        _$UnstakeTokensActionImpl instance) =>
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
