part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/estimateGas)
@JS()
extension type JSEstimateGasParametersEIP1559._(JSObject _)
    implements JSObject {
  external JSEstimateGasParametersEIP1559({
    JSArray<JSObject>? accessList,
    JSString? account,
    JSNumber? chainId,
    JSString? data,
    JSBigInt? gas,
    JSBigInt? maxFeePerGas,
    JSBigInt? maxPriorityFeePerGas,
    // TODO: I don't understand why but it doesn't work when nonce is null. Normally it should be undefined... To be analyzed
    // JSBigInt? nonce,
    JSString? to,
    JSString type,
    JSBigInt? value,
  });
  external JSArray<JSObject>? accessList;
  external JSString? account;
  external JSNumber? chainId;
  external JSString? data;
  external JSBigInt? gas;
  external JSBigInt? maxFeePerGas;
  external JSBigInt? maxPriorityFeePerGas;
  // external JSBigInt? nonce;
  external JSString? to;
  external JSString type;
  external JSBigInt? value;
}

@JS()
extension type JSEstimateGasParametersEIP4844._(JSObject _)
    implements JSObject {
  external JSEstimateGasParametersEIP4844({
    JSArray<JSObject>? accessList,
    JSString? account,
    JSNumber? chainId,
    JSString? data,
    JSBigInt? gas,
    JSBigInt? maxFeePerGas,
    JSBigInt? maxPriorityFeePerGas,
    JSBigInt? maxFeePerBlobGas,
    //  JSBigInt? nonce,
    JSString? to,
    JSString type,
    JSBigInt? value,
  });
  external JSArray<JSObject>? accessList;
  external JSString? account;
  external JSNumber? chainId;
  external JSString? data;
  external JSBigInt? gas;
  external JSBigInt? maxFeePerGas;
  external JSBigInt? maxPriorityFeePerGas;
  external JSBigInt? maxFeePerBlobGas;
  // external JSBigInt? nonce;
  external JSString? to;
  external JSString type;
  external JSBigInt? value;
}

@JS()
extension type JSEstimateGasParametersLegacy._(JSObject _) implements JSObject {
  external JSEstimateGasParametersLegacy({
    JSArray<JSObject>? accessList,
    JSString? account,
    JSNumber? chainId,
    JSString? data,
    JSBigInt? gas,
    JSBigInt? gasPrice,
    // JSBigInt? nonce,
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
  // external JSBigInt? nonce;
  external JSString? to;
  external JSString type;
  external JSBigInt? value;
}

@JS()
extension type JSEstimateGasErrorType(JSObject _) implements JSObject {}

extension EstimatedGasParametersToJS on EstimateGasParameters {
  JSObject get toJS => map(
        legacy: (legacy) => JSEstimateGasParametersLegacy(
          accessList: accessList?.jsify() as JSArray<JSObject>?,
          account: account?.toJS,
          chainId: chainId?.toJS,
          data: data?.toJS,
          gas: gas?.toJS ?? BigInt.zero.toJS,
          gasPrice: legacy.feeValues?.gasPrice.toJS,
          type: 'legacy'.toJS,
          to: to?.toJS,
          value: value?.toJS,
        ),
        eip1559: (eip1559) => JSEstimateGasParametersEIP1559(
          accessList: accessList?.jsify() as JSArray<JSObject>?,
          account: account?.toJS,
          chainId: chainId?.toJS,
          data: data?.toJS,
          gas: gas?.toJS ?? BigInt.zero.toJS,
          maxFeePerGas: eip1559.feeValues?.maxFeePerGas.toJS,
          maxPriorityFeePerGas: eip1559.feeValues?.maxPriorityFeePerGas.toJS,
          type: 'eip1559'.toJS,
          to: to?.toJS,
          value: value?.toJS,
        ),
        eip4844: (eip4844) => JSEstimateGasParametersEIP4844(
          accessList: accessList?.jsify() as JSArray<JSObject>?,
          account: account?.toJS,
          chainId: chainId?.toJS,
          data: data?.toJS,
          gas: gas?.toJS ?? BigInt.zero.toJS,
          maxFeePerGas: eip4844.feeValues?.maxFeePerGas.toJS,
          maxPriorityFeePerGas: eip4844.feeValues?.maxPriorityFeePerGas.toJS,
          maxFeePerBlobGas: eip4844.feeValues?.maxFeePerBlobGas.toJS,
          type: 'eip4844'.toJS,
          to: to?.toJS,
          value: value?.toJS,
        ),
      );
}
