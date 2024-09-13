part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/readContracts)
@JS()
extension type JSReadContractsParameters._(JSObject _) implements JSObject {
  external JSReadContractsParameters({
    required JSArray<JSAny> contracts,
  });
  external JSArray<JSAny> contracts;
}

@JS()
extension type JSReadContractsErrorType(JSObject _) implements JSObject {}
