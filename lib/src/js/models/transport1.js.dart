part of '../wagmi.js.dart';

@JS()
extension type JSTransport1._(JSObject _) implements JSObject {}

@JS()
extension type JSUrlTransport1._(JSTransport1 _) implements JSTransport1 {
  external JSUrlTransport1({
    JSString? http,
    JSString? ws,
  });

  external JSString? http;
  external JSString? ws;
}

extension Transport1ToJS on Transport1 {
  JSTransport1 get toJS => map(
        url: (urlTransport) => JSUrlTransport1(
          http: urlTransport.http?.toJS,
          ws: urlTransport.ws?.toJS,
        ),
      );
}
