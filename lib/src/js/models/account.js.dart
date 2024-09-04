part of '../wagmi.js.dart';

@JS()
extension type JSAccount(JSObject _) implements JSObject {
  external JSString? get address;
  external JSString? get status;
  external JSChain? get chain;
  external JSBoolean isConnecting;
  external JSBoolean isReconnecting;
  external JSBoolean isConnected;
  external JSBoolean isDisconnected;
  external JSConnector? get connector;

  Account get toDart => Account(
        address: address?.toDart,
        status: status?.toDart,
        chain: chain?.toDart,
        isConnecting: isConnecting.toDart,
        isReconnecting: isReconnecting.toDart,
        isConnected: isConnected.toDart,
        isDisconnected: isDisconnected.toDart,
      );
}
