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
extension type JSWatchContractEventReturnType(JSFunction _)
    implements JSFunction {}

extension JSWatchContractEventReturnTypeConversion
    on JSWatchContractEventReturnType {
  // ignore: unnecessary_lambdas
  WatchContractEventReturnType get toDart => () {
        callAsFunction();
      };
}

extension JSWatchContractEventParametersConversion
    on WatchContractEventParameters {
  JSWatchContractEventParameters get toJS => JSWatchContractEventParameters(
        abi: abi.jsify(),
        address: address.toJS,
        eventName: eventName.toJS,
        args: UtilsJS.convertArgs(args),
        batch: batch?.toJS,
        chainId: chainId?.toJS,
        onError: onError == null
            ? null
            : ((JSError jsError) {
                onError!(jsError.toDart);
              }).toJS,
        onLogs: onLogs == null
            ? null
            : ((JSArray<JSLog> jsLogs, JSArray<JSLog>? jsPreviousLogs) {
                final logs =
                    jsLogs.toDart.map((jsLog) => jsLog.toDart).toList();
                final previousLogs = jsPreviousLogs?.toDart
                    .map((jsLog) => jsLog.toDart)
                    .toList();
                onLogs!(logs, previousLogs);
              }).toJS,
        poll: poll?.toJS,
        pollingInterval: pollingInterval?.toJS,
        strict: strict?.toJS,
        syncConnectedChain: syncConnectedChain?.toJS,
      );
}

@JS()
extension type JSWatchContractErrorType(JSObject _) implements JSObject {}
