part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/estimateMaxPriorityFeePerGas)
@JS()
extension type JSEstimateMaxPriorityFeePerGasParameters._(JSObject _)
    implements JSObject {
  external JSEstimateMaxPriorityFeePerGasParameters({
    JSNumber? chainId,
  });
  external JSNumber? chainId;
}

@JS()
extension type EstimateMaxPriorityFeePerGasErrorType(JSObject _)
    implements JSObject {}
