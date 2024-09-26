part of '../wagmi.js.dart';

@JS()
extension type JSConnections(JSObject _) implements JSObject {
  external JSArray get accounts;
  external JSNumber get chainId;
  external JSConnector get connector;

  Connections get toDart => Connections(
        accounts: accounts.jsify()! as List<String>,
        chainId: chainId.toDartInt,
        connector: connector.toDart,
      );
}
