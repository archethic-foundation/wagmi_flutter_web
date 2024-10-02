import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/src/models/block_tag.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getBlock)
class GetBlockParameters {
  GetBlockParameters({
    this.blockHash,
    this.blockNumber,
    this.blockTag,
    this.chainId,
    this.includeTransactions,
  });
  final String? blockHash;
  final BigInt? blockNumber;
  final BlockTag? blockTag;
  final int? chainId;
  final bool? includeTransactions;

  JSGetBlockParameters get toJS => JSGetBlockParameters(
        blockHash: blockHash?.toJS,
        blockNumber: blockNumber?.toJS,
        blockTag: blockTag?.toJS,
        chainId: chainId?.toJS,
        includeTransactions: includeTransactions?.toJS,
      );
}

class GetBlockReturnType {
  GetBlockReturnType({
    this.baseFeePerGas,
    this.blobGasUsed,
    this.chainId,
    this.difficulty,
    this.excessBlobGas,
    this.extraData,
    this.gasLimit,
    this.gasUsed,
    this.hash,
    this.logsBloom,
    this.miner,
    this.mixHash,
    this.nonce,
    this.number,
    this.parentHash,
    this.receiptsRoot,
    this.sha3Uncles,
    this.size,
    this.stateRoot,
    this.timestamp,
    this.totalDifficulty,
    this.transactionsRoot,
    this.uncles,
    this.transactions,
  });

  final BigInt? baseFeePerGas;
  final BigInt? blobGasUsed;
  final int? chainId;
  final BigInt? difficulty;
  final BigInt? excessBlobGas;
  final String? extraData;
  final BigInt? gasLimit;
  final BigInt? gasUsed;
  final String? hash;
  final String? logsBloom;
  final String? miner;
  final String? mixHash;
  final String? nonce;
  final BigInt? number;
  final String? parentHash;
  final String? receiptsRoot;
  final String? sha3Uncles;
  final BigInt? size;
  final String? stateRoot;
  final BigInt? timestamp;
  final BigInt? totalDifficulty;
  final String? transactionsRoot;
  final List<dynamic>? uncles;
  final List<dynamic>? transactions;
}
