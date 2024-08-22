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
extension type JSGetGasPriceReturnType(JSObject _) implements JSObject {
  external JSBigInt? gasPrice;

  GetGasPriceReturnType get toDart => GetGasPriceReturnType(
        gasPrice: gasPrice!.toDart,
      );
}

@JS()
extension type JSGetGasPriceErrorType(JSObject _) implements JSObject {}
