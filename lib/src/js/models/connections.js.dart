part of '../wagmi.js.dart';

@JS()
extension type JSConnection(JSObject _) implements JSObject {
  external JSArray<JSString>? get accounts;
  external JSNumber get chainId;
  external JSConnector get connector;

  Connection get toDart => Connection(
        accounts: accounts == null
            ? []
            : accounts!.toDart
                .map(
                  (address) => address.toDart,
                )
                .toList(),
        chainId: chainId.toDartInt,
        connector: connector.toDart,
      );
}
