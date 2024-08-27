import 'dart:js_interop';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/src/models/fees_values.dart';

part 'estimate_gas.freezed.dart';
part 'estimate_gas.g.dart';

@freezed
class EstimateGasParameters with _$EstimateGasParameters {
  const factory EstimateGasParameters.legacy({
    List<Map<String, dynamic>>? accessList,
    String? account,
    int? chainId,
    String? data,
    BigInt? gas,
    FeeValues? feeValues,
    BigInt? nonce,
    String? to,
    BigInt? value,
  }) = EstimateGasParametersLegacy;

  const factory EstimateGasParameters.eip1559({
    List<Map<String, dynamic>>? accessList,
    String? account,
    int? chainId,
    String? data,
    BigInt? gas,
    FeeValues? feeValues,
    BigInt? nonce,
    String? to,
    BigInt? value,
  }) = EstimateGasParametersEIP1559;

  const factory EstimateGasParameters.eip4844({
    List<Map<String, dynamic>>? accessList,
    String? account,
    int? chainId,
    String? data,
    BigInt? gas,
    FeeValues? feeValues,
    BigInt? nonce,
    String? to,
    BigInt? value,
  }) = EstimateGasParametersEIP4844;

  factory EstimateGasParameters.fromJson(Map<String, dynamic> json) =>
      _$EstimateGasParametersFromJson(json);
}

extension EstimateGasParametersX on EstimateGasParameters {
  JSObject get toJS {
    return when(
      legacy: (
        accessList,
        account,
        chainId,
        data,
        gas,
        feeValues,
        nonce,
        to,
        value,
      ) {
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
          type: 'legacy'.toJS,
          to: to?.toJS,
          value: value?.toJS,
        );
      },
      eip1559: (
        accessList,
        account,
        chainId,
        data,
        gas,
        feeValues,
        nonce,
        to,
        value,
      ) {
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
          type: 'eip1559'.toJS,
          to: to?.toJS,
          value: value?.toJS,
        );
      },
      eip4844: (
        accessList,
        account,
        chainId,
        data,
        gas,
        feeValues,
        nonce,
        to,
        value,
      ) {
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
            eip4844: (maxFeePerBlobGas, maxFeePerGas, maxPriorityFeePerGas) =>
                maxPriorityFeePerGas.toJS,
            orElse: () => null,
          ),
          maxFeePerBlobGas: feeValues?.maybeWhen(
            eip4844: (maxFeePerBlobGas, maxFeePerGas, maxPriorityFeePerGas) =>
                maxFeePerBlobGas.toJS,
            orElse: () => null,
          ),
          type: 'eip4844'.toJS,
          to: to?.toJS,
          value: value?.toJS,
        );
      },
    );
  }
}
