// define js functions
part of '../wagmi.js.dart';

@JS()
extension type JSConnector(JSObject _) implements JSObject {
  // it holds functions that are used to interact with the connector
  external JSString? icon;
  external JSString? id;
  external JSString? name;
  external JSString? type;
  external JSString? uid;
  external JSBoolean? supportsSimulation;

  Connector get toDart => Connector(
        icon: icon?.toDart,
        id: id?.toDart,
        name: name?.toDart,
        type: type?.toDart,
        uid: uid?.toDart,
        supportsSimulation: supportsSimulation?.toDart,
      );
}
