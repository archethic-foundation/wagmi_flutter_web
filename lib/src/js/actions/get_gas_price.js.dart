part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getGasPrice)
@JS()
extension type JSGetGasPriceParameters._(JSObject _) implements JSObject {
  external JSGetGasPriceParameters({
    JSNumber? chainId,
  });
  external JSNumber? chainId;
}

@JS()
extension type JSGetGasPriceReturnType(JSBigInt _) implements JSBigInt {}

@JS()
extension type JSGetGasPriceErrorType(JSObject _) implements JSObject {}
