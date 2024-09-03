part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/disconnect)

@JS()
extension type JSDisconnectParameters._(JSObject _) implements JSObject {
  external JSDisconnectParameters({
    JSAny? connector,
  });
  external JSAny? connector;
}

@JS()
extension type JSDisconnectErrorType(JSObject _) implements JSObject {}
