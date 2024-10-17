// ignore_for_file: avoid_setters_without_getters
part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/watchConnections)
@JS()
extension type JSWatchConnectionsParameters._(JSObject _) implements JSObject {
  external JSWatchConnectionsParameters({
    JSFunction onChange,
  });

  external JSFunction onChange;
}

@JS()
extension type JSWatchConnectionsReturnType(JSFunction _)
    implements JSFunction {}

extension JSWatchConnectionsReturnTypeConversion
    on JSWatchConnectionsReturnType {
  // ignore: unnecessary_lambdas
  WatchConnectionsReturnType get toDart => () {
        callAsFunction();
      };
}

extension JSWatchConnectionsParametersConversion on WatchConnectionsParameters {
  // convert dart function to js function
  JSWatchConnectionsParameters get toJS2 => JSWatchConnectionsParameters(
        onChange: ((JSArray<JSObject> connectionData) {
          if (connectionData.toDart.isEmpty) {
            onChange([]);
            return;
          }
          final connectionList = connectionData.toDart.map((log) {
            final sMap = log.toMap(deep: false);
            final JSObject jsObject = sMap['connector'];
            sMap['connector'] = jsObject.toMap(deep: false);
            return sMap;
          }).toList();
          final connection = connectionList.map(Connection.fromJson).toList();
          onChange(connection);
        }).toJS,
      );
}
