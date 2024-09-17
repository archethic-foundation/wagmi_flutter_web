// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_to_sign.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StringMessageImpl _$$StringMessageImplFromJson(Map<String, dynamic> json) =>
    _$StringMessageImpl(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StringMessageImplToJson(_$StringMessageImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$RawMessageContainerImpl _$$RawMessageContainerImplFromJson(
        Map<String, dynamic> json) =>
    _$RawMessageContainerImpl(
      message: RawMessage.fromJson(json['message'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RawMessageContainerImplToJson(
        _$RawMessageContainerImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$RawHexImpl _$$RawHexImplFromJson(Map<String, dynamic> json) => _$RawHexImpl(
      raw: json['raw'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RawHexImplToJson(_$RawHexImpl instance) =>
    <String, dynamic>{
      'raw': instance.raw,
      'runtimeType': instance.$type,
    };

_$RawByteArrayImpl _$$RawByteArrayImplFromJson(Map<String, dynamic> json) =>
    _$RawByteArrayImpl(
      byteArray: (json['byteArray'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RawByteArrayImplToJson(_$RawByteArrayImpl instance) =>
    <String, dynamic>{
      'byteArray': instance.byteArray,
      'runtimeType': instance.$type,
    };
