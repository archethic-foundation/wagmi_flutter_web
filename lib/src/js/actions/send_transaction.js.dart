part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/SendTransaction)
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
    // TODO: I don't understand why but it doesn't work when nonce is null. Normally it should be undefined... To be analyzed
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
