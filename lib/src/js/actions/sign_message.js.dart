part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/signMessage)
@JS()
extension type JSSignMessageParameters._(JSObject _) implements JSObject {
  external JSSignMessageParameters({
    JSString account,
    JSString? message,
  });
  external JSString account;
  external JSString? message;
}

@JS()
extension type JSSignMessageReturnType(JSString _) implements JSString {}

@JS()
extension type JSSignMessageErrorType(JSObject _) implements JSObject {}
