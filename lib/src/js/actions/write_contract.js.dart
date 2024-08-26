part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/writeContract)
@JS()
extension type JSWriteContractParameters._(JSObject _) implements JSObject {
  external JSWriteContractParameters({
    required JSAny? abi,
    required JSString address,
    required JSString functionName,
    JSArray<JSObject>? accessList,
    JSString? account,
    JSArray<JSObject>? args,
    JSNumber? chainId,
    JSString? dataSuffix,
    JSBigInt? gas,
    JSBigInt? gasPrice,
    JSBigInt? maxFeePerGas,
    JSBigInt? maxPriorityFeePerGas,
    JSBigInt? nonce,
    JSString? type,
    JSBigInt? value,
  });

  external JSAny? abi;
  external JSString address;
  external JSArray<JSObject>? accessList;
  external JSString? account;
  external JSString functionName;
  external JSArray<JSObject>? args;
  external JSNumber? chainId;
  external JSString? dataSuffix;
  external JSBigInt? gas;
  external JSBigInt? gasPrice;
  external JSBigInt? maxFeePerGas;
  external JSBigInt? maxPriorityFeePerGas;
  external JSBigInt? nonce;
  external JSString? type;
  external JSBigInt? value;
}

@JS()
extension type JSWriteContractReturnType(JSObject _) implements JSObject {
  external JSString hash;

  WriteContractReturnType get toDart => WriteContractReturnType(
        hash: hash.toDart,
      );
}

@JS()
extension type JSWriteContractErrorType(JSObject _) implements JSObject {}
