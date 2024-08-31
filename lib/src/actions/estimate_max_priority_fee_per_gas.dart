import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/EstimateMaxPriorityFeePerGas)
class EstimateMaxPriorityFeePerGasParameters {
  EstimateMaxPriorityFeePerGasParameters({
    this.chainId,
  });
  final int? chainId;

  JSEstimateMaxPriorityFeePerGasParameters get toJS =>
      JSEstimateMaxPriorityFeePerGasParameters(
        chainId: chainId?.toJS,
      );
}
