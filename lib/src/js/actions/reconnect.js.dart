part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/reconnect)
@JS()
extension type JSReconnectParameters._(JSObject _) implements JSObject {
  external JSReconnectParameters({
    JSAny? connector,
  });
  external JSAny? connector;
}
// JSReconnectReturnType
@JS()
extension type JSReconnectReturnType(JSObject _) implements JSObject {
  external JSArray<JSObject>? connections;
  ReconnectReturnType get toDart {
    // convert this to dart object
    // ignore: unnecessary_this
    final connections = this.jsify()! as JSArray<JSObject>;
    if (connections.toDart.isEmpty) {
      return ReconnectReturnType(connections: []);
    }
    final connectionList = connections.toDart.map((log) {
      final sMap = log.toMap(deep: false);
      sMap['connector'] = (sMap['connector'] as JSObject).toMap(deep: false);
      return sMap;
    }).toList();
    final connections1 = connectionList.map(Connections.fromJson).toList();
    return ReconnectReturnType(connections: connections1);
  }
}
@JS()
extension type JSReconnectErrorType(JSObject _) implements JSObject {}
