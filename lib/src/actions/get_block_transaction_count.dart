import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getBlockTransactionCount)
class GetBlockTransactionCountParameters {
  GetBlockTransactionCountParameters({
    this.cacheTime,
    this.chainId,
  });
  final int? cacheTime;
  final int? chainId;

  JSGetBlockTransactionCountParameters get toJS =>
      JSGetBlockTransactionCountParameters(
        chainId: chainId?.toJS,
        cacheTime: cacheTime?.toJS,
      );
}
