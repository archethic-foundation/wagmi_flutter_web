part of '../wagmi.js.dart';

/// Generic JSError
extension type JSError._(JSObject _) implements JSObject {}

/// Generic indexed DB/Javascript error.
extension JSErrorExt on JSError {
  /// Get the error message
  external String? get message;

  /// Get the error message
  external String? get name;

  WagmiError get toDart => WagmiError(
        message: message,
        name: name,
      );
}
