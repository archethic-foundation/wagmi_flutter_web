part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/watchAsset)
@JS()
extension type JSWatchAssetParameters._(JSObject _) implements JSObject {
  external JSWatchAssetParameters({
    JSString type,
    JSAny? options,
    JSAny? connector,
  });
  external JSString type;
  external JSAny? options;
  external JSConnector? connector;
}

@JS()
extension type JSWatchAssetErrorType(JSObject _) implements JSObject {}
