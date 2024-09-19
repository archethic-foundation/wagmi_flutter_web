part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/deployContract)
@JS()
extension type JSDeployContractParameters._(JSObject _) implements JSObject {
  external JSDeployContractParameters({
    JSString? account,
    JSAny? connector,
    JSAny abi,
    JSString bytecode,
    JSArray<JSAny>? args,
  });
  external JSAny abi;
  external JSString? account;
  external JSArray<JSObject>? args;
  external JSString bytecode;
  external JSConnector? connector;
}

// JSDeployContractReturnType
@JS()
extension type JSDeployContractReturnType(JSObject _) implements JSObject {
  external JSAny get value;

  DeployContractReturnType get toDart => DeployContractReturnType(
        value: value,
      );
}

@JS()
extension type JSDeployContractErrorType(JSObject _) implements JSObject {}
