part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/signMessage)
@JS()
extension type JSSignMessageParameters._(JSObject _) implements JSObject {
  external JSSignMessageParameters({
    JSString account,
    JSAny? message,
  });
  external JSString account;
  external JSAny? message;
}

@JS()
extension type JSSignMessageReturnType(JSString _) implements JSString {}

@JS()
extension type JSSignMessageErrorType(JSObject _) implements JSObject {}

@JS()
@anonymous
extension type JSRawHex._(JSObject _) implements JSObject {
  external factory JSRawHex({
    required JSString raw,
  });

  external JSString get raw;
}

@JS()
@anonymous
extension type JSRawByteArray._(JSObject _) implements JSObject {
  external factory JSRawByteArray({
    required JSArray<JSAny?> byteArray,
  });

  external JSArray<JSAny?> get byteArray;
}

extension RawMessageInterop on RawMessage {
  JSAny get toJS {
    return when<JSAny>(
      hex: (String raw) => JSRawHex(raw: raw.toJS),
      byteArray: (List<int> byteArray) =>
          JSRawByteArray(byteArray: byteArray.toJSArray()) as JSAny,
    );
  }
}

extension MessageToSignInterop on MessageToSign {
  JSAny get toJS {
    return when<JSAny>(
      stringMessage: (String message) => message.toJS,
      rawMessage: (RawMessage rawMessage) => rawMessage.toJS,
    );
  }
}
