part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/call)
@JS()
extension type JSCallParameters._(JSObject _) implements JSObject {
  external JSCallParameters({
    JSString? account,
    JSString? data,
    JSString? to,
    JSArray<JSObject>? accessList,
    JSBigInt? gas,
    JSBigInt? gasPrice,
    JSBigInt? maxFeePerGas,
    JSBigInt? maxPriorityFeePerGas,
    JSNumber? nonce,
    JSBigInt? value,
    JSNumber? blockNumber,
    JSString? blockTag,
    JSNumber? chainId,
  });
  external JSString? account;
  external JSString? data;
  external JSString? to;
  external JSArray<JSObject>? accessList;
  external JSBigInt? gas;
  external JSBigInt? gasPrice;
  external JSBigInt? maxFeePerGas;
  external JSBigInt? maxPriorityFeePerGas;
  external JSNumber? nonce;
  external JSBigInt? value;
  external JSNumber? blockNumber;
  external JSString? blockTag;
  external JSNumber? chainId;
}

@JS()
extension type JSCallReturnType(JSObject _) implements JSObject {
  external JSAny? data;

  CallReturnType get toDart => CallReturnType(
        data: data?.jsify(),
      );
}

@JS()
extension type JSCallErrorType(JSObject _) implements JSObject {}
