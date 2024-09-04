part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/waitForTransactionReceipt)
@JS()
extension type JSWaitForTransactionReceiptParameters._(JSObject _)
    implements JSObject {
  external JSWaitForTransactionReceiptParameters({
    JSString hash,
    JSNumber? chainId,
    JSNumber? pollingInterval,
    JSNumber? confirmation,
    JSFunction? onReplaced,
  });
  external JSString hash;
  external JSBigInt? chainId;
  external JSNumber? pollingInterval;
  external JSNumber? confirmation;
  external JSFunction? onReplaced;
}

@JS()
extension type JSWaitForTransactionReceiptReturnType(JSObject _)
    implements JSObject {
  external JSString blockHash;
  external JSBigInt blockNumber;
  external JSNumber chainId;
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

  WaitForTransactionReceiptReturnType get toDart =>
      WaitForTransactionReceiptReturnType(
        blockHash: blockHash.toDart,
        blockNumber: blockNumber.toDart,
        chainId: chainId.toDartInt,
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
extension type JSWaitForTransactionReceiptErrorType(JSObject _)
    implements JSObject {}
