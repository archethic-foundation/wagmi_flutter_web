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

  JSGetTransactionParameters get toJS => JSGetTransactionParameters(
        hash: hash?.toJS,
        blockHash: blockHash?.toJS,
        blockNumber: blockNumber?.toJS,
        blockTag: blockTag?.toJS,
        chainId: chainId?.toJS,
        index: index?.toJS,
      );
}

class GetTransactionReturnType {
  GetTransactionReturnType({
    required this.accessList,
    required this.blockHash,
    required this.blockNumber,
    required this.chainId,
    required this.from,
    required this.gas,
    required this.gasPrice,
    required this.hash,
    required this.input,
    required this.maxFeePerGas,
    required this.maxPriorityFeePerGas,
    required this.nonce,
    required this.r,
    required this.s,
    required this.to,
    required this.transactionIndex,
    required this.v,
    required this.value,
    required this.type,
    required this.typeHex,
    required this.yParity,
  });

  final List<dynamic> accessList;
  final String blockHash;
  final BigInt blockNumber;
  final int chainId;
  final String from;
  final BigInt gas;
  final BigInt gasPrice;
  final String hash;
  final String input;
  final BigInt maxFeePerGas;
  final BigInt maxPriorityFeePerGas;
  final BigInt nonce;
  final String r;
  final String s;
  final String to;
  final BigInt transactionIndex;
  final BigInt v;
  final BigInt value;
  final String type;
  final BigInt typeHex;
  final BigInt yParity;
}
