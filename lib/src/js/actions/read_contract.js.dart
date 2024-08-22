part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/readContract)
@JS()
extension type JSReadContractParameters._(JSObject _) implements JSObject {
  external JSReadContractParameters({
    required JSAny? abi,
    JSString? address,
    JSString? functionName,
  });
  external JSAny? abi;
  external JSString? address;
  external JSString? functionName;
}

@JS()
extension type JSReadContractReturnType(JSObject _) implements JSObject {
  external JSBigInt data;

  ReadContractReturnType get toDart =>
      ReadContractReturnType(value: data.toDart);
}

@JS()
extension type JSReadContractErrorType(JSObject _) implements JSObject {}
