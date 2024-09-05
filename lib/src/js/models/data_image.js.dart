part of '../wagmi.js.dart';

@JS()
extension type JSDataImage(JSString _) implements JSString {
  String get toDart {
    // remove data:image/svg+xml;base64, from the icon string
    return _.toDart
        .replaceAll('"', '')
        .replaceAll('data:image/svg+xml;base64,', '');
  }
}
