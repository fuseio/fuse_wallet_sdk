// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateWalletImpl _$$CreateWalletImplFromJson(Map<String, dynamic> json) =>
    _$CreateWalletImpl(
      timestamp: json['timestamp'] as int? ?? 0,
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'createWallet',
      txHash: json['txHash'] as String?,
      status: json['status'] as String,
      blockNumber: json['blockNumber'] as int? ?? 0,
    );

Map<String, dynamic> _$$CreateWalletImplToJson(_$CreateWalletImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
    };

_$FiatDepositImpl _$$FiatDepositImplFromJson(Map<String, dynamic> json) =>
    _$FiatDepositImpl(
      timestamp: json['timestamp'] as int? ?? 0,
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'fiat-deposit',
      txHash: json['txHash'] as String?,
      status: json['status'] as String,
      blockNumber: json['blockNumber'] as int? ?? 0,
      tokenAddress: json['tokenAddress'] as String,
      from: json['from'] as String?,
      to: json['to'] as String,
      value: BigInt.parse(json['value'] as String),
      tokenName: json['tokenName'] as String,
      tokenSymbol: json['tokenSymbol'] as String,
      tokenDecimal: json['tokenDecimal'] as int,
    );

Map<String, dynamic> _$$FiatDepositImplToJson(_$FiatDepositImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
      'tokenAddress': instance.tokenAddress,
      'from': instance.from,
      'to': instance.to,
      'value': instance.value.toString(),
      'tokenName': instance.tokenName,
      'tokenSymbol': instance.tokenSymbol,
      'tokenDecimal': instance.tokenDecimal,
    };

_$SendImpl _$$SendImplFromJson(Map<String, dynamic> json) => _$SendImpl(
      timestamp: json['timestamp'] as int? ?? 0,
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'sendTokens',
      txHash: json['txHash'] as String?,
      status: json['status'] as String,
      blockNumber: json['blockNumber'] as int? ?? 0,
      tokenAddress: json['tokenAddress'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      value: BigInt.parse(json['value'] as String),
      tokenName: json['tokenName'] as String,
      tokenSymbol: json['tokenSymbol'] as String,
      tokenDecimal: json['tokenDecimal'] as int,
    );

Map<String, dynamic> _$$SendImplToJson(_$SendImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
      'tokenAddress': instance.tokenAddress,
      'from': instance.from,
      'to': instance.to,
      'value': instance.value.toString(),
      'tokenName': instance.tokenName,
      'tokenSymbol': instance.tokenSymbol,
      'tokenDecimal': instance.tokenDecimal,
    };

_$ReceiveImpl _$$ReceiveImplFromJson(Map<String, dynamic> json) =>
    _$ReceiveImpl(
      timestamp: json['timestamp'] as int? ?? 0,
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'receiveTokens',
      txHash: json['txHash'] as String?,
      status: json['status'] as String,
      blockNumber: json['blockNumber'] as int? ?? 0,
      tokenAddress: json['tokenAddress'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      value: BigInt.parse(json['value'] as String),
      tokenName: json['tokenName'] as String,
      tokenSymbol: json['tokenSymbol'] as String,
      tokenDecimal: json['tokenDecimal'] as int,
    );

Map<String, dynamic> _$$ReceiveImplToJson(_$ReceiveImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
      'tokenAddress': instance.tokenAddress,
      'from': instance.from,
      'to': instance.to,
      'value': instance.value.toString(),
      'tokenName': instance.tokenName,
      'tokenSymbol': instance.tokenSymbol,
      'tokenDecimal': instance.tokenDecimal,
    };

_$SwapImpl _$$SwapImplFromJson(Map<String, dynamic> json) => _$SwapImpl(
      timestamp: json['timestamp'] as int? ?? 0,
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'swapTokens',
      txHash: json['txHash'] as String?,
      status: json['status'] as String,
      blockNumber: json['blockNumber'] as int? ?? 0,
    );

Map<String, dynamic> _$$SwapImplToJson(_$SwapImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
    };

_$ReceiveNFTImpl _$$ReceiveNFTImplFromJson(Map<String, dynamic> json) =>
    _$ReceiveNFTImpl(
      timestamp: json['timestamp'] as int? ?? 0,
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'receiveNFT',
      txHash: json['txHash'] as String?,
      status: json['status'] as String,
      blockNumber: json['blockNumber'] as int? ?? 0,
      tokenAddress: json['tokenAddress'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      tokenName: json['tokenName'] as String,
      tokenSymbol: json['tokenSymbol'] as String,
      tokenDecimal: json['tokenDecimal'] as int,
    );

Map<String, dynamic> _$$ReceiveNFTImplToJson(_$ReceiveNFTImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
      'tokenAddress': instance.tokenAddress,
      'from': instance.from,
      'to': instance.to,
      'tokenName': instance.tokenName,
      'tokenSymbol': instance.tokenSymbol,
      'tokenDecimal': instance.tokenDecimal,
    };

_$StakeTokensImpl _$$StakeTokensImplFromJson(Map<String, dynamic> json) =>
    _$StakeTokensImpl(
      timestamp: json['timestamp'] as int? ?? 0,
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'stakeTokens',
      txHash: json['txHash'] as String?,
      status: json['status'] as String,
      blockNumber: json['blockNumber'] as int? ?? 0,
      tokenAddress: json['tokenAddress'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      value: BigInt.parse(json['value'] as String),
      tokenName: json['tokenName'] as String,
      tokenSymbol: json['tokenSymbol'] as String,
      tokenDecimal: json['tokenDecimal'] as int,
    );

Map<String, dynamic> _$$StakeTokensImplToJson(_$StakeTokensImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
      'tokenAddress': instance.tokenAddress,
      'from': instance.from,
      'to': instance.to,
      'value': instance.value.toString(),
      'tokenName': instance.tokenName,
      'tokenSymbol': instance.tokenSymbol,
      'tokenDecimal': instance.tokenDecimal,
    };

_$UnstakeTokensImpl _$$UnstakeTokensImplFromJson(Map<String, dynamic> json) =>
    _$UnstakeTokensImpl(
      timestamp: json['timestamp'] as int? ?? 0,
      id: json['_id'] as String,
      name: json['name'] as String? ?? 'unstakeTokens',
      txHash: json['txHash'] as String?,
      status: json['status'] as String,
      blockNumber: json['blockNumber'] as int? ?? 0,
      tokenAddress: json['tokenAddress'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      value: BigInt.parse(json['value'] as String),
      tokenName: json['tokenName'] as String,
      tokenSymbol: json['tokenSymbol'] as String,
      tokenDecimal: json['tokenDecimal'] as int,
    );

Map<String, dynamic> _$$UnstakeTokensImplToJson(_$UnstakeTokensImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      '_id': instance.id,
      'name': instance.name,
      'txHash': instance.txHash,
      'status': instance.status,
      'blockNumber': instance.blockNumber,
      'tokenAddress': instance.tokenAddress,
      'from': instance.from,
      'to': instance.to,
      'value': instance.value.toString(),
      'tokenName': instance.tokenName,
      'tokenSymbol': instance.tokenSymbol,
      'tokenDecimal': instance.tokenDecimal,
    };
