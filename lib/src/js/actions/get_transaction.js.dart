part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getTransaction)
@JS()
extension type JSGetTransactionParameters._(JSObject _) implements JSObject {
  external JSGetTransactionParameters({
    JSString? hash,
    JSBigInt? blockHash,
    JSBigInt? blockNumber,
    JSString? blockTag,
    JSBigInt? chainId,
    JSNumber? index,
  });
  external JSString? hash;
  external JSBigInt? blockHash;
  external JSBigInt? blockNumber;
  external JSString? blockTag;
  external JSBigInt? chainId;
  external JSNumber? index;
}

@JS()
extension type JSGetTransactionReturnType(JSObject _) implements JSObject {
  external JSArray accessList;
  external JSString blockHash;
  external JSBigInt? blockNumber;
  external JSNumber chainId;
  external JSString from;
  external JSBigInt? gas;
  external JSBigInt? gasPrice;
  external JSString hash;
  external JSString input;
  external JSBigInt? maxFeePerGas;
  external JSBigInt? maxPriorityFeePerGas;
  external JSNumber? nonce;
  external JSString r;
  external JSString s;
  external JSString to;
  external JSNumber? transactionIndex;
  external JSBigInt? v;
  external JSBigInt? value;
  external JSString type;
  external JSString? typeHex;
  external JSNumber? yParity;

  GetTransactionReturnType get toDart => GetTransactionReturnType(
        accessList: accessList.toDart,
        blockHash: blockHash.toDart,
        blockNumber: blockNumber?.toDart,
        chainId: chainId.toDartInt,
        from: from.toDart,
        gas: gas?.toDart,
        gasPrice: gasPrice?.toDart,
        hash: hash.toDart,
        input: input.toDart,
        maxFeePerGas: maxFeePerGas?.toDart,
        maxPriorityFeePerGas: maxPriorityFeePerGas?.toDart,
        nonce: nonce?.toDartInt,
        r: r.toDart,
        s: s.toDart,
        to: to.toDart,
        transactionIndex: transactionIndex?.toDartInt,
        v: v?.toDart,
        value: value?.toDart,
        type: type.toDart,
        typeHex: typeHex?.toDart,
        yParity: yParity?.toDartInt,
      );
}

@JS()
extension type JSGetTransactionErrorType(JSObject _) implements JSObject {}
