// ignore_for_file: avoid_setters_without_getters
part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/signMessage)
@JS()
extension type JSWatchChainIdParameters._(JSObject _) implements JSObject {
  external JSWatchChainIdParameters({
    JSFunction onChange,
  });

  external JSFunction onChange;
}

@JS()
extension type JSWatchChainIdReturnType(JSFunction _) implements JSFunction {}

extension JSWatchChainIdReturnTypeConversion on JSWatchChainIdReturnType {
  // ignore: unnecessary_lambdas
  WatchChainIdReturnType get toDart => () {
        callAsFunction();
      };
}

extension JSWatchChainIdParametersConversion on WatchChainIdParameters {
  JSWatchChainIdParameters get toJS => JSWatchChainIdParameters(
        onChange: onChange.toJS,
      );
}
