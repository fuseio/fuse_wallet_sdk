// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthDtoImpl _$$AuthDtoImplFromJson(Map<String, dynamic> json) =>
    _$AuthDtoImpl(
      ownerAddress: json['ownerAddress'] as String,
      smartWalletAddress: json['smartWalletAddress'] as String?,
      signature: json['signature'] as String,
      hash: json['hash'] as String,
    );

Map<String, dynamic> _$$AuthDtoImplToJson(_$AuthDtoImpl instance) {
  final val = <String, dynamic>{
    'ownerAddress': instance.ownerAddress,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('smartWalletAddress', instance.smartWalletAddress);
  val['signature'] = instance.signature;
  val['hash'] = instance.hash;
  return val;
}
