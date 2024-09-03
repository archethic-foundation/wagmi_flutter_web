part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getByteCode)

@JS()
extension type JSGetByteCodeParameters._(JSObject _) implements JSObject {
  external JSGetByteCodeParameters({
    required JSString address,
    JSBigInt? blockNumber,
    JSString? blockTag,
    JSNumber? chainId,
  });
  external JSString address;
  external JSBigInt? blockNumber;
  external JSString? blockTag;
  external JSNumber? chainId;
}

@JS()
extension type JSGetByteCodeErrorType(JSObject _) implements JSObject {}
