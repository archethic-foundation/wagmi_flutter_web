import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getTransactionConfirmations)
class GetTransactionConfirmationsParameters {
  GetTransactionConfirmationsParameters({
    this.hash,
    this.transactionReceipt,
    this.chainId,
  });
  final String? hash;
  final dynamic transactionReceipt;
  final BigInt? chainId;

  JSGetTransactionConfirmationsParameters get toJS =>
      JSGetTransactionConfirmationsParameters(
        hash: hash?.toJS,
        chainId: chainId?.toJS,
        transactionReceipt: transactionReceipt?.toJS,
      );
}
