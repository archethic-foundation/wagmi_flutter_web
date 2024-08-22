part of '../wagmi.js.dart';

@JS()
extension type JSChain(JSObject _) implements JSObject {
  external JSNumber id;
  external JSString name;

  Chain get toDart => Chain(
        id: id.toDartInt,
        name: name.toDart,
      );
}
