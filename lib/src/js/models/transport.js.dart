part of '../wagmi.js.dart';

@JS()
extension type JSTransport._(JSObject _) implements JSObject {}

@JS()
extension type JSWebsocketTransport._(JSTransport _) implements JSTransport {
  external JSWebsocketTransport({
    required JSString type,
    required JSString url,
  });

  external JSString type;
  external JSString url;
}

@JS()
extension type JSHttpTransport._(JSTransport _) implements JSTransport {
  external JSHttpTransport({
    required JSString type,
    required JSString url,
  });

  external JSString type;
  external JSString url;
}

extension TransportToJS on Transport {
  JSTransport get toJS => map(
        websocket: (websocketTransport) => JSWebsocketTransport(
          type: 'JSWebsocketTransport'.toJS,
          url: websocketTransport.url.toJS,
        ),
        http: (httpTransport) => JSHttpTransport(
          type: 'JSHttpTransport'.toJS,
          url: httpTransport.url.toJS,
        ),
      );
}

extension TransportBuilderToJS on TransportBuilder {
  JSFunction get toJS =>
      ((JSNumber chainId) => this(chainId.toDartInt).toJS).toJS;
}
