part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getBlock)
@JS()
extension type JSGetBlockParameters._(JSObject _) implements JSObject {
  external JSGetBlockParameters({
    JSString? blockHash,
    JSBigInt? blockNumber,
    JSString? blockTag,
    JSBigInt? chainId,
    JSBoolean? includeTransactions,
  });
  external JSString? blockHash;
  external JSBigInt? blockNumber;
  external JSString? blockTag;
  external JSBigInt? chainId;
  external JSBoolean? includeTransactions;
}

@JS()
extension type JSGetBlockReturnType(JSObject _) implements JSObject {
  external JSBigInt? baseFeePerGas;
  external JSBigInt? blobGasUsed;
  external JSNumber? chainId;
  external JSBigInt? difficulty;
  external JSBigInt? excessBlobGas;
  external JSString? extraData;
  external JSBigInt? gasLimit;
  external JSBigInt? gasUsed;
  external JSString? hash;
  external JSString? logsBloom;
  external JSString? miner;
  external JSString? mixHash;
  external JSString? nonce;
  external JSBigInt? number;
  external JSString? parentHash;
  external JSString? receiptsRoot;
  external JSString? sha3Uncles;
  external JSBigInt? size;
  external JSString? stateRoot;
  external JSBigInt? timestamp;
  external JSBigInt? totalDifficulty;
  external JSString? transactionsRoot;
  external JSArray<JSAny>? uncles;
  external JSArray<JSAny>? transactions;

  GetBlockReturnType get toDart => GetBlockReturnType(
        baseFeePerGas: baseFeePerGas?.toDart,
        blobGasUsed: blobGasUsed?.toDart,
        chainId: chainId?.toDartInt,
        difficulty: difficulty?.toDart,
        excessBlobGas: excessBlobGas?.toDart,
        extraData: extraData?.toDart,
        gasLimit: gasLimit?.toDart,
        gasUsed: gasUsed?.toDart,
        hash: hash?.toDart,
        logsBloom: logsBloom?.toDart,
        miner: miner?.toDart,
        mixHash: mixHash?.toDart,
        nonce: nonce?.toDart,
        number: number?.toDart,
        parentHash: parentHash?.toDart,
        receiptsRoot: receiptsRoot?.toDart,
        sha3Uncles: sha3Uncles?.toDart,
        size: size?.toDart,
        stateRoot: stateRoot?.toDart,
        timestamp: timestamp?.toDart,
        totalDifficulty: totalDifficulty?.toDart,
        transactionsRoot: transactionsRoot?.toDart,
        uncles: uncles?.jsify() as List<dynamic>?,
        transactions: transactions?.toDart,
      );
}

@JS()
extension type JSGetBlockErrorType(JSObject _) implements JSObject {}
