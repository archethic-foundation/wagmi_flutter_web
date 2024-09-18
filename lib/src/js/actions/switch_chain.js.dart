part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/switchChain)
@JS()
extension type JSSwitchChainParameters._(JSObject _) implements JSObject {
  external JSSwitchChainParameters({
    required JSAny connector,
    JSAny? addEthereumChainParameter,
    JSNumber chainId,
  });
  external JSAny? addEthereumChainParameter;
  external JSNumber chainId;
  external JSConnector connector;
}

@JS()
extension type JSSwitchChainErrorType(JSObject _) implements JSObject {}
