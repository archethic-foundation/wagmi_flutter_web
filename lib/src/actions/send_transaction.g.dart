// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendTransactionParametersImpl _$$SendTransactionParametersImplFromJson(
        Map<String, dynamic> json) =>
    _$SendTransactionParametersImpl(
      type: json['type'] as String,
      to: json['to'] as String,
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
      value:
          json['value'] == null ? null : BigInt.parse(json['value'] as String),
      connector: json['connector'],
    );

Map<String, dynamic> _$$SendTransactionParametersImplToJson(
        _$SendTransactionParametersImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'to': instance.to,
      'accessList': instance.accessList,
      'account': instance.account,
      'chainId': instance.chainId,
      'data': instance.data,
      'gas': instance.gas?.toString(),
      'feeValues': instance.feeValues,
      'nonce': instance.nonce?.toString(),
      'value': instance.value?.toString(),
      'connector': instance.connector,
    };
