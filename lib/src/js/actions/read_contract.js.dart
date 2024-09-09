part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/readContract)
@JS()
extension type JSReadContractParameters._(JSObject _) implements JSObject {
  external JSReadContractParameters({
    required JSAny abi,
    required JSString address,
    required JSString functionName,
    JSString? account,
    JSArray<JSObject>? args,
    JSBigInt? blockNumber,
    JSString? blockTag,
    JSNumber? chainId,
  });
  external JSAny abi;
  external JSString address;
  external JSString functionName;
  external JSString? account;
  external JSArray<JSObject>? args;
  external JSBigInt? blockNumber;
  external JSString? blockTag;
  external JSNumber? chainId;
}

@JS()
extension type JSReadContractReturnType(JSObject _) implements JSObject {
  external JSBigInt data;

  ReadContractReturnType get toDart =>
      ReadContractReturnType(value: data.toDart);
}

@JS()
extension type JSReadContractErrorType(JSObject _) implements JSObject {}
