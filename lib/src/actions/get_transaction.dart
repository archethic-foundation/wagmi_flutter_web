import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getTransaction)
class GetTransactionParameters {
  GetTransactionParameters({
    this.hash,
    this.blockHash,
    this.blockNumber,
    this.blockTag,
    this.chainId,
    this.index,
  });
  final String? hash;
  final BigInt? blockHash;
  final BigInt? blockNumber;
  final String? blockTag;
  final BigInt? chainId;
  final int? index;

  JSGetTransactionParameters get toJS => blockNumber != null
      ? JSGetTransactionParameters(
          hash: hash?.toJS,
          blockHash: blockHash?.toJS,
          blockNumber: blockNumber?.toJS,
          blockTag: blockTag?.toJS,
          chainId: chainId?.toJS,
          index: index?.toJS,
        )
      : JSGetTransactionParameters(
          hash: hash?.toJS,
          blockHash: blockHash?.toJS,
          blockTag: blockTag?.toJS,
          chainId: chainId?.toJS,
          index: index?.toJS,
        );
}

class GetTransactionReturnType {
  GetTransactionReturnType({
    required this.accessList,
    required this.blockHash,
    this.blockNumber,
    required this.chainId,
    required this.from,
    this.gas,
    this.gasPrice,
    required this.hash,
    required this.input,
    this.maxFeePerGas,
    this.maxPriorityFeePerGas,
    this.nonce,
    required this.r,
    required this.s,
    required this.to,
    this.transactionIndex,
    this.v,
    this.value,
    required this.type,
    this.typeHex,
    this.yParity,
  });

  final List<dynamic> accessList;
  final String blockHash;
  final BigInt? blockNumber;
  final int chainId;
  final String from;
  final BigInt? gas;
  final BigInt? gasPrice;
  final String hash;
  final String input;
  final BigInt? maxFeePerGas;
  final BigInt? maxPriorityFeePerGas;
  final int? nonce;
  final String r;
  final String s;
  final String to;
  final int? transactionIndex;
  final BigInt? v;
  final BigInt? value;
  final String type;
  final String? typeHex;
  final int? yParity;
}
