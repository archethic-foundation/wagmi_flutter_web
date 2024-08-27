import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getGasPrice)
class GetGasPriceParameters {
  GetGasPriceParameters({
    this.chainId,
  });
  int? chainId;

  JSGetGasPriceParameters get toJS => JSGetGasPriceParameters(
        chainId: chainId?.toJS,
      );
}
