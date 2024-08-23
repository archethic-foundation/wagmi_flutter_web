part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/estimateGas)
@JS()
extension type JSEstimateGasParameters._(JSObject _) implements JSObject {
  external JSEstimateGasParameters({
    JSArray<JSObject>? accessList,
    JSString? account,
    JSNumber? chainId,
    JSString? data,
    JSBigInt? gas,
    JSBigInt? gasPrice,
    JSBigInt? maxFeePerGas,
    JSBigInt? maxPriorityFeePerGas,
    JSNumber? nonce,
    JSString? to,
    JSString? type,
    JSBigInt? value,
  });
  external JSArray<JSObject>? accessList;
  external JSString? account;
  external JSNumber? chainId;
  external JSString? data;
  external JSBigInt? gas;
  external JSBigInt? gasPrice;
  external JSBigInt? maxFeePerGas;
  external JSBigInt? maxPriorityFeePerGas;
  external JSNumber? nonce;
  external JSString? to;
  external JSString? type;
  external JSBigInt? value;
}

@JS()
extension type JSEstimateGasErrorType(JSObject _) implements JSObject {}
