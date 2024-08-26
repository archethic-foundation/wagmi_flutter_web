// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimate_gas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EstimateGasParametersImpl _$$EstimateGasParametersImplFromJson(
        Map<String, dynamic> json) =>
    _$EstimateGasParametersImpl(
      type: json['type'] as String,
      accessList: (json['accessList'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      account: json['account'] as String?,
      chainId: (json['chainId'] as num?)?.toInt(),
      data: json['data'] as String?,
      gas: json['gas'] == null ? null : BigInt.parse(json['gas'] as String),
      feeValues: json['feeValues'] == null
          ? null
          : FeeValues.fromJson(json['feeValues'] as Map<String, dynamic>),
      nonce:
          json['nonce'] == null ? null : BigInt.parse(json['nonce'] as String),
      to: json['to'] as String?,
      value:
          json['value'] == null ? null : BigInt.parse(json['value'] as String),
    );

Map<String, dynamic> _$$EstimateGasParametersImplToJson(
        _$EstimateGasParametersImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'accessList': instance.accessList,
      'account': instance.account,
      'chainId': instance.chainId,
      'data': instance.data,
      'gas': instance.gas?.toString(),
      'feeValues': instance.feeValues,
      'nonce': instance.nonce?.toString(),
      'to': instance.to,
      'value': instance.value?.toString(),
    };
