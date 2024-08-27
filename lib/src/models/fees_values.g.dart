// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fees_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeeValuesLegacyImpl _$$FeeValuesLegacyImplFromJson(
        Map<String, dynamic> json) =>
    _$FeeValuesLegacyImpl(
      gasPrice: BigInt.parse(json['gasPrice'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FeeValuesLegacyImplToJson(
        _$FeeValuesLegacyImpl instance) =>
    <String, dynamic>{
      'gasPrice': instance.gasPrice.toString(),
      'runtimeType': instance.$type,
    };

_$FeeValuesEIP1559Impl _$$FeeValuesEIP1559ImplFromJson(
        Map<String, dynamic> json) =>
    _$FeeValuesEIP1559Impl(
      maxFeePerGas: BigInt.parse(json['maxFeePerGas'] as String),
      maxPriorityFeePerGas:
          BigInt.parse(json['maxPriorityFeePerGas'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FeeValuesEIP1559ImplToJson(
        _$FeeValuesEIP1559Impl instance) =>
    <String, dynamic>{
      'maxFeePerGas': instance.maxFeePerGas.toString(),
      'maxPriorityFeePerGas': instance.maxPriorityFeePerGas.toString(),
      'runtimeType': instance.$type,
    };

_$FeeValuesEIP4844Impl _$$FeeValuesEIP4844ImplFromJson(
        Map<String, dynamic> json) =>
    _$FeeValuesEIP4844Impl(
      maxFeePerBlobGas: BigInt.parse(json['maxFeePerBlobGas'] as String),
      maxFeePerGas: BigInt.parse(json['maxFeePerGas'] as String),
      maxPriorityFeePerGas:
          BigInt.parse(json['maxPriorityFeePerGas'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FeeValuesEIP4844ImplToJson(
        _$FeeValuesEIP4844Impl instance) =>
    <String, dynamic>{
      'maxFeePerBlobGas': instance.maxFeePerBlobGas.toString(),
      'maxFeePerGas': instance.maxFeePerGas.toString(),
      'maxPriorityFeePerGas': instance.maxPriorityFeePerGas.toString(),
      'runtimeType': instance.$type,
    };
