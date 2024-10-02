part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getTransactionReceipt)
@JS()
extension type JSGetTransactionReceiptParameters._(JSObject _)
    implements JSObject {
  external JSGetTransactionReceiptParameters({
    JSString? hash,
    JSNumber? chainId,
  });
  external JSString? hash;
  external JSNumber? chainId;
}

@JS()
extension type JSGetTransactionReceiptReturnType(JSObject _)
    implements JSObject {
  external JSString blockHash;
  external JSBigInt blockNumber;
  external JSString? contractAddress;
  external JSBigInt cumulativeGasUsed;
  external JSBigInt effectiveGasPrice;
  external JSString from;
  external JSBigInt gasUsed;
  external JSArray<JSObject> logs;
  external JSString logsBloom;
  external JSString status;
  external JSString? to;
  external JSString transactionHash;
  external JSNumber transactionIndex;
  external JSString type;

  GetTransactionReceiptReturnType get toDart => GetTransactionReceiptReturnType(
        blockHash: blockHash.toDart,
        blockNumber: blockNumber.toDart,
        contractAddress: contractAddress?.toDart,
        cumulativeGasUsed: cumulativeGasUsed.toDart,
        effectiveGasPrice: effectiveGasPrice.toDart,
        from: from.toDart,
        gasUsed: gasUsed.toDart,
        logs: logs.jsify()! as List<dynamic>,
        logsBloom: logsBloom.toDart,
        status: status.toDart,
        to: to?.toDart,
        transactionHash: transactionHash.toDart,
        transactionIndex: transactionIndex.toDartInt,
        type: type.toDart,
      );
}

@JS()
extension type JSGetTransactionReceiptErrorType(JSObject _)
    implements JSObject {}
