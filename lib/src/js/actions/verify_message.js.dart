part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/verifyMessage)
@JS()
extension type JSVerifyMessageParameters._(JSObject _) implements JSObject {
  external JSVerifyMessageParameters({
    required JSString address,
    required JSAny message,
    required JSString signature,
    JSNumber? chainId,
    JSBigInt? blockNumber,
    JSString? blockTag,
  });
  external JSString address;
  external JSAny message;
  external JSString signature;
  external JSNumber? chainId;
  external JSBigInt? blockNumber;
  external JSString? blockTag;
}

@JS()
extension type JSVerifyMessageReturnType(JSString _) implements JSString {}

@JS()
extension type JSVerifyMessageErrorType(JSObject _) implements JSObject {}
