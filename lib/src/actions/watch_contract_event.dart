import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/watchContractEvent)

class WatchContractEventParameters {
  WatchContractEventParameters({
    required this.abi,
    required this.address,
    required this.eventName,
    this.args,
    this.batch,
    this.chainId,
    this.onError,
    this.onLogs,
    this.poll,
    this.pollingInterval,
    this.strict,
    this.syncConnectedChain,
  });

  List<Map> abi;
  String address;
  String eventName;
  List<dynamic>? args;
  bool? batch;
  int? chainId;
  Function? onError;
  Function? onLogs;
  bool? poll;
  int? pollingInterval;
  bool? strict;
  bool? syncConnectedChain;

  JSArray<JSObject>? _convertArgs(List<dynamic>? args) {
    if (args == null) {
      return null;
    }
    final jsArgs = JSArray<JSObject>();
    for (final arg in args) {
      if (arg is String) {
        jsArgs.add(arg.toJS);
      } else if (arg is int) {
        jsArgs.add(arg.toJS);
      } else if (arg is bool) {
        jsArgs.add(arg.toJS);
      }
    }
    return jsArgs;
  }

  JSWatchContractEventParameters get toJS => JSWatchContractEventParameters(
        abi: abi.jsify(),
        address: address.toJS,
        eventName: eventName.toJS,
        args: _convertArgs(args),
        batch: batch?.toJS,
        chainId: chainId?.toJS,
        onError: onError?.toJS,
        onLogs: onLogs?.toJS,
        poll: poll?.toJS,
        pollingInterval: pollingInterval?.toJS,
        strict: strict?.toJS,
        syncConnectedChain: syncConnectedChain?.toJS,
      );
}

class WatchContractEventReturnType {
  WatchContractEventReturnType({
    required this.hash,
  });

  String hash;
}
