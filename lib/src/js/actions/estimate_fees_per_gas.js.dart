part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/estimateFeesPerGas)
@JS()
extension type JSEstimateFeesPerGasParameters._(JSObject _)
    implements JSObject {
  external JSEstimateFeesPerGasParameters({
    JSString? formatUnits,
    JSString? type,
    JSNumber? chainId,
  });
  external JSString? formatUnits;
  external JSString? type;
  external JSNumber? chainId;
}

@JS()
extension type JSEstimateFeesPerGasReturnType(JSObject _) implements JSObject {
  external JSBigInt? gasPrice;
  external JSBigInt? maxFeePerGas;
  external JSBigInt? maxPriorityFeePerGas;

  EstimateFeesPerGasReturnType get toDart => EstimateFeesPerGasReturnType(
        gasPrice: gasPrice?.toDart,
        maxFeePerGas: maxFeePerGas?.toDart,
        maxPriorityFeePerGas: maxPriorityFeePerGas?.toDart,
      );
}

@JS()
extension type JSEstimateFeesPerGasErrorType(JSObject _) implements JSObject {}
