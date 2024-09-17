import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_to_sign.freezed.dart';
part 'message_to_sign.g.dart';

@freezed
class MessageToSign with _$MessageToSign {
  const factory MessageToSign.stringMessage({
    required String message,
  }) = StringMessage;

  const factory MessageToSign.rawMessage({
    required RawMessage message,
  }) = RawMessageContainer;

  factory MessageToSign.fromJson(Map<String, dynamic> json) =>
      _$MessageToSignFromJson(json);
}

@freezed
class RawMessage with _$RawMessage {
  const factory RawMessage.hex({
    required String raw,
  }) = RawHex;

  const factory RawMessage.byteArray({
    required List<int> byteArray,
  }) = RawByteArray;

  factory RawMessage.fromJson(Map<String, dynamic> json) =>
      _$RawMessageFromJson(json);
}
