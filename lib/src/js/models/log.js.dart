part of '../wagmi.js.dart';

/// [Documentation API](https://github.com/wevm/viem/blob/main/src/types/log.ts)
@JS()
extension type JSLog(JSObject _) implements JSObject {
  external JSString get address;
  external JSString? get blockHash;
  external JSBigInt? get blockNumber;
  external JSString get data;
  external JSNumber? get logIndex;
  external JSString? get transactionHash;
  external JSNumber? get transactionIndex;
  external JSBoolean get removed;
  external JSAny? get abi;
  external JSString? get eventName;
  external JSAny get args;
  external JSAny get topics;

  Log get toDart => Log(
        address: address.toDart,
        blockHash: blockHash?.toDart,
        blockNumber: blockNumber?.toDart,
        data: data.toDart,
        logIndex: logIndex?.toDartInt,
        transactionHash: transactionHash?.toDart,
        transactionIndex: transactionIndex?.toDartInt,
        removed: removed.toDart,
      );
}
