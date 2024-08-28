part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getTransactionConfirmations)
@JS()
extension type JSGetTransactionConfirmationsParameters._(JSObject _)
    implements JSObject {
  external JSGetTransactionConfirmationsParameters({
    JSString? hash,
    JSAny? transactionReceipt,
    JSBigInt? chainId,
  });
  external JSString? hash;
  external JSAny? transactionReceipt;
  external JSBigInt? chainId;
}

@JS()
extension type JSGetTransactionConfirmationsErrorType(JSObject _)
    implements JSObject {}
