part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/switchAccount)
@JS()
extension type JSSwitchAccountParameters._(JSObject _) implements JSObject {
  external JSSwitchAccountParameters({
    required JSAny connector,
  });
  external JSConnector connector;
}

@JS()
extension type JSSwitchAccountErrorType(JSObject _) implements JSObject {}
