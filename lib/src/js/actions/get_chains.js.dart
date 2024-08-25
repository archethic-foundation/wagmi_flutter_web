part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getChains)

@JS()
extension type JSGetChainsReturnType(JSObject _) implements JSObject {
  external JSArray<JSArray<JSObject>> data;

  GetChainsReturnType get toDart => GetChainsReturnType(
        value: data,
      );
}
