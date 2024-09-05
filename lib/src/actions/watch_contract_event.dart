import 'package:wagmi_flutter_web/src/models/error.dart';
import 'package:wagmi_flutter_web/src/models/log.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/watchContractEvent)

typedef OnLogCallback = void Function(
  List<Log> logs,
);
typedef OnErrorCallback = void Function(WagmiError error);

class WatchContractEventParameters {
  WatchContractEventParameters({
    required this.abi,
    required this.eventName,
    this.address,
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

  final List<Map> abi;
  final String eventName;
  final String? address;
  final List<dynamic>? args;
  final bool? batch;
  final int? chainId;
  final OnLogCallback? onLogs;
  final OnErrorCallback? onError;
  final bool? poll;
  final int? pollingInterval;
  final bool? strict;
  final bool? syncConnectedChain;
}

typedef WatchContractEventReturnType = void Function();
