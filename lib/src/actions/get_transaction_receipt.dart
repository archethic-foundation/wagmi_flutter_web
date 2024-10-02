import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getTransactionReceipt)
class GetTransactionReceiptParameters {
  GetTransactionReceiptParameters({
    required this.hash,
    this.chainId,
  });
  final String hash;
  final int? chainId;

  JSGetTransactionReceiptParameters get toJS =>
      JSGetTransactionReceiptParameters(
        hash: hash.toJS,
      );
}

class GetTransactionReceiptReturnType {
  GetTransactionReceiptReturnType({
    required this.blockHash,
    required this.blockNumber,
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
