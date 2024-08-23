part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getTransactionCount)
@JS()
extension type JSGetTransactionCountParameters._(JSObject _)
    implements JSObject {
  external JSGetTransactionCountParameters({
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
extension type JSGetTransactionCountErrorType(JSObject _) implements JSObject {}
