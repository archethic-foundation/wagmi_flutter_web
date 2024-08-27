// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimate_gas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EstimateGasParametersLegacyImpl _$$EstimateGasParametersLegacyImplFromJson(
        Map<String, dynamic> json) =>
    _$EstimateGasParametersLegacyImpl(
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
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EstimateGasParametersLegacyImplToJson(
        _$EstimateGasParametersLegacyImpl instance) =>
    <String, dynamic>{
      'accessList': instance.accessList,
      'account': instance.account,
      'chainId': instance.chainId,
      'data': instance.data,
      'gas': instance.gas?.toString(),
      'feeValues': instance.feeValues,
      'nonce': instance.nonce?.toString(),
      'to': instance.to,
      'value': instance.value?.toString(),
      'runtimeType': instance.$type,
    };

_$EstimateGasParametersEIP1559Impl _$$EstimateGasParametersEIP1559ImplFromJson(
        Map<String, dynamic> json) =>
    _$EstimateGasParametersEIP1559Impl(
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
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EstimateGasParametersEIP1559ImplToJson(
        _$EstimateGasParametersEIP1559Impl instance) =>
    <String, dynamic>{
      'accessList': instance.accessList,
      'account': instance.account,
      'chainId': instance.chainId,
      'data': instance.data,
      'gas': instance.gas?.toString(),
      'feeValues': instance.feeValues,
      'nonce': instance.nonce?.toString(),
      'to': instance.to,
      'value': instance.value?.toString(),
      'runtimeType': instance.$type,
    };

_$EstimateGasParametersEIP4844Impl _$$EstimateGasParametersEIP4844ImplFromJson(
        Map<String, dynamic> json) =>
    _$EstimateGasParametersEIP4844Impl(
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
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EstimateGasParametersEIP4844ImplToJson(
        _$EstimateGasParametersEIP4844Impl instance) =>
    <String, dynamic>{
      'accessList': instance.accessList,
      'account': instance.account,
      'chainId': instance.chainId,
      'data': instance.data,
      'gas': instance.gas?.toString(),
      'feeValues': instance.feeValues,
      'nonce': instance.nonce?.toString(),
      'to': instance.to,
      'value': instance.value?.toString(),
      'runtimeType': instance.$type,
    };
