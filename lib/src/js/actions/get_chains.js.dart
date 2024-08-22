part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getChains)

@JS()
extension type JSGetChainsReturnType(JSObject _) implements JSObject {
  external JSArray<JSChain> chains;

  GetChainsReturnType get toDart => GetChainsReturnType(
        chains: chains.toDart as List<Chain>,
      );
}
