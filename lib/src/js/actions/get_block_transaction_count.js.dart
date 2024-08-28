part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getBlockTransactionCount)
@JS()
extension type JSGetBlockTransactionCountParameters._(JSObject _)
    implements JSObject {
  external JSGetBlockTransactionCountParameters({
    JSNumber? cacheTime,
    JSNumber? chainId,
  });
  external JSNumber? cacheTime;
  external JSNumber? chainId;
}

@JS()
extension type JSGetBlockTransactionCountErrorType(JSObject _)
    implements JSObject {}
