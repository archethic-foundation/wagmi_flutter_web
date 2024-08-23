part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/watchContractEvent)
@JS()
extension type JSWatchContractEventParameters._(JSObject _)
    implements JSObject {
  external JSWatchContractEventParameters({
    required JSAny? abi,
    required JSString address,
    required JSString eventName,
    JSArray? args,
    JSBoolean? batch,
    JSNumber? chainId,
    JSFunction? onError,
    JSFunction? onLogs,
    JSBoolean? poll,
    JSNumber? pollingInterval,
    JSBoolean? strict,
    JSBoolean? syncConnectedChain,
  });

  external JSAny abi;
  external JSString address;
  external JSString eventName;
  external JSArray? args;
  external JSBoolean? batch;
  external JSNumber? chainId;
  external JSFunction? onError;
  external JSFunction? onLogs;
  external JSBoolean? poll;
  external JSNumber? pollingInterval;
  external JSBoolean? strict;
  external JSBoolean? syncConnectedChain;
}

@JS()
extension type JSWatchContractEventReturnType(JSObject _) implements JSObject {
  external JSString hash;

  WatchContractEventReturnType get toDart => WatchContractEventReturnType(
        hash: hash.toDart,
      );
}

@JS()
extension type JSWriteContractErrorType(JSObject _) implements JSObject {}
