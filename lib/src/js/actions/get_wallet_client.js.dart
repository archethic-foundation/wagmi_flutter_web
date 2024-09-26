part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getWalletClient)
@JS()
extension type JSGetWalletClientParameters._(JSObject _) implements JSObject {
  external JSGetWalletClientParameters({
    JSString? account,
    JSAny? connector,
    JSNumber? chainId,
  });
  external JSString? account;
  external JSNumber? chainId;
  external JSConnector? connector;
}

// JSGetWalletClientReturnType
@JS()
extension type JSGetWalletClientReturnType(JSObject _) implements JSObject {
  external JSAny get value;

  GetWalletClientReturnType get toDart => GetWalletClientReturnType(
        value: value,
      );
}

@JS()
extension type JSGetWalletClientErrorType(JSObject _) implements JSObject {}
