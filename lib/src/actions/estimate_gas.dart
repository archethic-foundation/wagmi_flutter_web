import 'dart:js_interop';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/src/models/fees_values.dart';

part 'estimate_gas.freezed.dart';
part 'estimate_gas.g.dart';

@freezed
class EstimateGasParameters with _$EstimateGasParameters {
  const factory EstimateGasParameters({
    required String type,
    List<Map<String, dynamic>>? accessList,
    String? account,
    int? chainId,
    String? data,
    BigInt? gas,
    FeeValues? feeValues,
    BigInt? nonce,
    String? to,
    BigInt? value,
  }) = _EstimateGasParameters;

  factory EstimateGasParameters.fromJson(Map<String, dynamic> json) =>
      _$EstimateGasParametersFromJson(json);
}

extension EstimateGasParametersX on EstimateGasParameters {
  JSObject? get toJS {
    switch (type) {
      case 'legacy':
        return JSEstimateGasParametersLegacy(
          accessList: accessList?.jsify() as JSArray<JSObject>?,
          account: account?.toJS,
          chainId: chainId?.toJS,
          data: data?.toJS,
          gas: gas?.toJS ?? BigInt.zero.toJS,
          gasPrice: feeValues?.maybeWhen(
            legacy: (gasPrice) => gasPrice.toJS,
            orElse: () => null,
          ),
          // nonce: nonce?.toJS,
          to: to?.toJS,
          type: type.toJS,
          value: value?.toJS,
        );
      case 'eip1559':
        return JSEstimateGasParametersEIP1559(
          accessList: accessList?.jsify() as JSArray<JSObject>?,
          account: account?.toJS,
          chainId: chainId?.toJS,
          data: data?.toJS,
          gas: gas?.toJS ?? BigInt.zero.toJS,
          maxFeePerGas: feeValues?.maybeWhen(
            eip1559: (maxFeePerGas, maxPriorityFeePerGas) => maxFeePerGas.toJS,
            orElse: () => null,
          ),
          maxPriorityFeePerGas: feeValues?.maybeWhen(
            eip1559: (maxFeePerGas, maxPriorityFeePerGas) =>
                maxPriorityFeePerGas.toJS,
            orElse: () => null,
          ),
          //   nonce: nonce?.toJS,
          to: to?.toJS,
          type: type.toJS,
          value: value?.toJS,
        );
      case 'eip4844':
        return JSEstimateGasParametersEIP4844(
          accessList: accessList?.jsify() as JSArray<JSObject>?,
          account: account?.toJS,
          chainId: chainId?.toJS,
          data: data?.toJS,
          gas: gas?.toJS ?? BigInt.zero.toJS,
          maxFeePerGas: feeValues?.maybeWhen(
            eip4844: (maxFeePerBlobGas, maxFeePerGas, maxPriorityFeePerGas) =>
                maxFeePerGas.toJS,
            orElse: () => null,
          ),
          maxPriorityFeePerGas: feeValues?.maybeWhen(
            eip1559: (maxFeePerGas, maxPriorityFeePerGas) =>
                maxPriorityFeePerGas.toJS,
            orElse: () => null,
          ),
          maxFeePerBlobGas: feeValues?.maybeWhen(
            eip4844: (maxFeePerBlobGas, maxFeePerGas, maxPriorityFeePerGas) =>
                maxFeePerBlobGas.toJS,
            orElse: () => null,
          ),
          //  nonce: nonce?.toJS,
          to: to?.toJS,
          type: type.toJS,
          value: value?.toJS,
        );

      default:
        return null;
    }
  }
}
