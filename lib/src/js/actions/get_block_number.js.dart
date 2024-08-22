part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getBlockNumber)
@JS()
extension type JSGetBlockNumberParameters._(JSObject _) implements JSObject {
  external JSGetBlockNumberParameters({
    JSNumber? cacheTime,
    JSNumber? chainId,
  });
  external JSNumber? cacheTime;
  external JSNumber? chainId;
}

@JS()
extension type JSGetBlockNumberReturnType(JSObject _) implements JSObject {
  external JSBigInt blockNumber;

  GetBlockNumberReturnType get toDart => GetBlockNumberReturnType(
        blockNumber: blockNumber.toDart,
      );
}

@JS()
extension type GetBlockNumberErrorType(JSObject _) implements JSObject {}
