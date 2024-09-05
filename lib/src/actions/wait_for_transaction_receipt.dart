import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/waitForTransactionReceipt)

// TODO: Add missing parameters
typedef OnReplacedCallback = void Function();

class WaitForTransactionReceiptParameters {
  WaitForTransactionReceiptParameters({
    required this.hash,
    this.chainId,
    this.pollingInterval,
    this.confirmation,
    this.onReplaced,
  });

  final String hash;
  final int? chainId;
  final int? pollingInterval;
  final int? confirmation;
  final OnReplacedCallback? onReplaced;

  JSWaitForTransactionReceiptParameters get toJS =>
      JSWaitForTransactionReceiptParameters(
        hash: hash.toJS,
        chainId: chainId?.toJS,
        confirmation: confirmation?.toJS,
        pollingInterval: pollingInterval?.toJS,
        onReplaced: onReplaced?.toJS,
      );
}

class WaitForTransactionReceiptReturnType {
  WaitForTransactionReceiptReturnType({
    required this.blockHash,
    required this.blockNumber,
    required this.chainId,
    this.contractAddress,
    required this.cumulativeGasUsed,
    required this.effectiveGasPrice,
    required this.from,
    required this.gasUsed,
    required this.logs,
    required this.logsBloom,
    required this.status,
    this.to,
    required this.transactionHash,
    required this.transactionIndex,
    required this.type,
  });

  final String blockHash;
  final BigInt blockNumber;
  final int chainId;
  final String? contractAddress;
  final BigInt cumulativeGasUsed;
  final BigInt effectiveGasPrice;
  final String from;
  final BigInt gasUsed;
  // logs
  final List<dynamic> logs;
  final String logsBloom;
  final String status;
  final String? to;
  final String transactionHash;
  final int transactionIndex;
  final String type;
}
