// ignore_for_file: avoid_setters_without_getters
part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/watchAccount)
@JS()
extension type JSWatchAccountParameters._(JSObject _) implements JSObject {
  external JSWatchAccountParameters({
    JSFunction onChange,
  });

  external JSFunction onChange;
}

@JS()
extension type JSWatchAccountReturnType(JSFunction _) implements JSFunction {}

extension JSWatchAccountReturnTypeConversion on JSWatchAccountReturnType {
  // ignore: unnecessary_lambdas
  WatchAccountReturnType get toDart => () {
        callAsFunction();
      };
}

extension JSWatchAccountParametersConversion on WatchAccountParameters {
  // convert dart function to js function
  JSWatchAccountParameters get toJS1 => JSWatchAccountParameters(
        onChange: ((JSObject accounts) {
          onChange(accounts.toMap(deep: false));
        }).toJS,
      );
}
