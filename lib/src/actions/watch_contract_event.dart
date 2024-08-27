/// [Documentation API](https://wagmi.sh/core/api/actions/watchContractEvent)

typedef OnLogCallback = void Function(
  String logs,
  String? prevLogs,
);
typedef OnErrorCallback = void Function(String error);

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

  final List<Map> abi;
  final String address;
  final String eventName;
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
