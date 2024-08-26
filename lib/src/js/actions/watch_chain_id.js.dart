// ignore_for_file: avoid_setters_without_getters
part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/signMessage)
@JS()
extension type JSWatchChainIdParameters._(JSObject _) implements JSObject {
  external set onChange(JSFunction callback);
}

@JS()
extension type WatchChainIdReturnType(JSFunction _) implements JSFunction {}
