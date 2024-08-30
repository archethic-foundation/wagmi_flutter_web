import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/EstimateFeesPerGas)
class EstimateFeesPerGasParameters {
  EstimateFeesPerGasParameters({
    this.type,
    this.formatUnits,
    this.chainId,
  });
  final String? type;
  final String? formatUnits;
  final int? chainId;

  JSEstimateFeesPerGasParameters get toJS {
    final jsBlockParams = JSEstimateFeesPerGasParameters();
    if (chainId != null) {
      jsBlockParams.chainId = chainId?.toJS;
    }
    if (type != null) {
      jsBlockParams.type = type?.toJS;
    }
    if (formatUnits != null) {
      jsBlockParams.formatUnits = formatUnits?.toJS;
    }
    return jsBlockParams;
  }
}

class EstimateFeesPerGasReturnType {
  EstimateFeesPerGasReturnType({
    this.gasPrice,
    this.maxFeePerGas,
    this.maxPriorityFeePerGas,
  });

  final BigInt? gasPrice;
  final BigInt? maxFeePerGas;
  final BigInt? maxPriorityFeePerGas;
}
