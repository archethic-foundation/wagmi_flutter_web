// define js functions
part of '../wagmi.js.dart';

@JS()
extension type JSConnector(JSObject _) implements JSObject {
  // it holds functions that are used to interact with the connector
  external JSFunction get getChainId;

  // Connector get toDart => Connector(
  //       getChainId: getChainId.toDart as Future<int> Function(),
  //     );
}
