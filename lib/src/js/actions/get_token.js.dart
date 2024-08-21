part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getToken)
@JS()
extension type JSGetTokenParameters._(JSObject _) implements JSObject {
  external JSGetTokenParameters({
    required JSString address,
    JSNumber? chainId,
    JSString? formatUnits,
  });
  external JSString address;
  external JSNumber? chainId;
  external JSString? formatUnits;
}

@JS()
extension type JSGetTokenReturnType(JSObject _) implements JSObject {
  external JSString address;
  external JSNumber decimals;
  external JSString? name;
  external JSString? symbol;
  external JSObject? totalSupply;
}

@JS()
extension type JSGetTokenErrorType(JSObject _) implements JSObject {}
