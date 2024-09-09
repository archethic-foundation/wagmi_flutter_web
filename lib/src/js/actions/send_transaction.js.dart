part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/sendTransaction)
@JS()
extension type JSSendTransactionParametersEIP1559._(JSObject _)
    implements JSObject {
  external JSSendTransactionParametersEIP1559({
    JSArray<JSObject>? accessList,
    JSString? account,
    JSNumber? chainId,
    JSString? data,
    JSBigInt? gas,
    JSBigInt? maxFeePerGas,
    JSBigInt? maxPriorityFeePerGas,
    JSBigInt? nonce,
    JSString to,
    JSString type,
    JSBigInt? value,
    JSAny? connector,
  });
  external JSArray<JSObject>? accessList;
  external JSString? account;
  external JSNumber? chainId;
  external JSString? data;
  external JSBigInt? gas;
  external JSBigInt? maxFeePerGas;
  external JSBigInt? maxPriorityFeePerGas;
  external JSBigInt? nonce;
  external JSString to;
  external JSString type;
  external JSBigInt? value;
  external JSAny? connector;
}

@JS()
extension type JSSendTransactionParametersEIP4844._(JSObject _)
    implements JSObject {
  external JSSendTransactionParametersEIP4844({
    JSArray<JSObject>? accessList,
    JSString? account,
    JSNumber? chainId,
    JSString? data,
    JSBigInt? gas,
    JSBigInt? maxFeePerGas,
    JSBigInt? maxPriorityFeePerGas,
    JSBigInt? maxFeePerBlobGas,
    JSBigInt? nonce,
    JSString to,
    JSString type,
    JSBigInt? value,
    JSAny? connector,
  });
  external JSArray<JSObject>? accessList;
  external JSString? account;
  external JSNumber? chainId;
  external JSString? data;
  external JSBigInt? gas;
  external JSBigInt? maxFeePerGas;
  external JSBigInt? maxPriorityFeePerGas;
  external JSBigInt? maxFeePerBlobGas;
  external JSBigInt? nonce;
  external JSString to;
  external JSString type;
  external JSBigInt? value;
  external JSAny? connector;
}

@JS()
extension type JSSendTransactionParametersLegacy._(JSObject _)
    implements JSObject {
  external JSSendTransactionParametersLegacy({
    JSArray<JSObject>? accessList,
    JSString? account,
    JSNumber? chainId,
    JSString? data,
    JSBigInt? gas,
    JSBigInt? gasPrice,
    JSBigInt? nonce,
    JSString to,
    JSString? type,
    JSBigInt? value,
    JSAny? connector,
  });
  external JSArray<JSObject>? accessList;
  external JSString? account;
  external JSNumber? chainId;
  external JSString? data;
  external JSBigInt? gas;
  external JSBigInt? gasPrice;
  external JSBigInt? nonce;
  external JSString to;
  external JSString type;
  external JSBigInt? value;
  external JSAny? connector;
}

@JS()
extension type JSSendTransactionErrorType(JSObject _) implements JSObject {}

extension SendTransactionParametersToJS on SendTransactionParameters {
  JSObject get toJS => map(
        legacy: (legacy) => JSSendTransactionParametersLegacy(
          accessList: accessList?.jsify() as JSArray<JSObject>?,
          account: account.toJS,
          chainId: chainId?.toJS,
          data: data?.toJS,
          gas: gas?.toJS,
          gasPrice: legacy.feeValues?.gasPrice.toJS,
          nonce: nonce?.toJS,
          type: 'legacy'.toJS,
          to: to.toJS,
          value: value == null ? BigInt.from(0).toJS : value?.toJS,
          connector: connector?.toJS,
        ),
        eip1559: (eip1559) => JSSendTransactionParametersEIP1559(
          accessList: accessList?.jsify() as JSArray<JSObject>?,
          account: account.toJS,
          chainId: chainId?.toJS,
          data: data?.toJS,
          gas: gas?.toJS,
          maxFeePerGas: eip1559.feeValues?.maxFeePerGas.toJS,
          maxPriorityFeePerGas: eip1559.feeValues?.maxPriorityFeePerGas.toJS,
          nonce: nonce?.toJS,
          type: 'eip1559'.toJS,
          to: to.toJS,
          value: value == null ? BigInt.from(0).toJS : value?.toJS,
          connector: connector?.toJS,
        ),
        eip4844: (eip4844) => JSSendTransactionParametersEIP4844(
          accessList: accessList?.jsify() as JSArray<JSObject>?,
          account: account.toJS,
          chainId: chainId?.toJS,
          data: data?.toJS,
          gas: gas?.toJS,
          maxFeePerGas: eip4844.feeValues?.maxFeePerGas.toJS,
          maxPriorityFeePerGas: eip4844.feeValues?.maxPriorityFeePerGas.toJS,
          maxFeePerBlobGas: eip4844.feeValues?.maxFeePerBlobGas.toJS,
          type: 'eip4844'.toJS,
          nonce: nonce?.toJS,
          to: to.toJS,
          value: value == null ? BigInt.from(0).toJS : value?.toJS,
          connector: connector?.toJS,
        ),
      );
}
