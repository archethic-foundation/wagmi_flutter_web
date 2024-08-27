import 'dart:js_interop';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/src/models/fees_values.dart';

part 'send_transaction.freezed.dart';
part 'send_transaction.g.dart';

@freezed
class SendTransactionParameters with _$SendTransactionParameters {
  const factory SendTransactionParameters({
    required String type,
    required String to,
    List<Map<String, dynamic>>? accessList,
    required String account,
    int? chainId,
    String? data,
    BigInt? gas,
    FeeValues? feeValues,
    BigInt? nonce,
    BigInt? value,
    dynamic connector,
  }) = _SendTransactionParameters;

  factory SendTransactionParameters.fromJson(Map<String, dynamic> json) =>
      _$SendTransactionParametersFromJson(json);
}

extension SendTransactionParametersX on SendTransactionParameters {
  JSObject? get toJS {
    switch (type) {
      case 'legacy':
        return nonce == null
            ? JSSendTransactionParametersLegacy(
                accessList: accessList?.jsify() as JSArray<JSObject>?,
                account: account?.toJS,
                chainId: chainId?.toJS,
                data: data?.toJS,
                gas: gas?.toJS ?? BigInt.zero.toJS,
                gasPrice: feeValues?.maybeWhen(
                  legacy: (gasPrice) => gasPrice.toJS,
                  orElse: () => null,
                ),
                to: to.toJS,
                type: type.toJS,
                value: value?.toJS,
                connector: connector?.toJS,
              )
            : JSSendTransactionParametersLegacy(
                accessList: accessList?.jsify() as JSArray<JSObject>?,
                account: account?.toJS,
                chainId: chainId?.toJS,
                data: data?.toJS,
                gas: gas?.toJS ?? BigInt.zero.toJS,
                gasPrice: feeValues?.maybeWhen(
                  legacy: (gasPrice) => gasPrice.toJS,
                  orElse: () => null,
                ),
                nonce: nonce?.toJS,
                to: to.toJS,
                type: type.toJS,
                value: value?.toJS,
                connector: connector?.toJS,
              );
      case 'eip1559':
        return nonce == null
            ? JSSendTransactionParametersEIP1559(
                accessList: accessList?.jsify() as JSArray<JSObject>?,
                account: account?.toJS,
                chainId: chainId?.toJS,
                data: data?.toJS,
                gas: gas?.toJS ?? BigInt.zero.toJS,
                maxFeePerGas: feeValues?.maybeWhen(
                  eip1559: (maxFeePerGas, maxPriorityFeePerGas) =>
                      maxFeePerGas.toJS,
                  orElse: () => null,
                ),
                maxPriorityFeePerGas: feeValues?.maybeWhen(
                  eip1559: (maxFeePerGas, maxPriorityFeePerGas) =>
                      maxPriorityFeePerGas.toJS,
                  orElse: () => null,
                ),
                to: to.toJS,
                type: type.toJS,
                value: value?.toJS,
                connector: connector?.toJS,
              )
            : JSSendTransactionParametersEIP1559(
                accessList: accessList?.jsify() as JSArray<JSObject>?,
                account: account?.toJS,
                chainId: chainId?.toJS,
                data: data?.toJS,
                gas: gas?.toJS ?? BigInt.zero.toJS,
                maxFeePerGas: feeValues?.maybeWhen(
                  eip1559: (maxFeePerGas, maxPriorityFeePerGas) =>
                      maxFeePerGas.toJS,
                  orElse: () => null,
                ),
                maxPriorityFeePerGas: feeValues?.maybeWhen(
                  eip1559: (maxFeePerGas, maxPriorityFeePerGas) =>
                      maxPriorityFeePerGas.toJS,
                  orElse: () => null,
                ),
                nonce: nonce?.toJS,
                to: to.toJS,
                type: type.toJS,
                value: value?.toJS,
                connector: connector?.toJS,
              );
      case 'eip4844':
        return nonce == null
            ? JSSendTransactionParametersEIP4844(
                accessList: accessList?.jsify() as JSArray<JSObject>?,
                account: account?.toJS,
                chainId: chainId?.toJS,
                data: data?.toJS,
                gas: gas?.toJS ?? BigInt.zero.toJS,
                maxFeePerGas: feeValues?.maybeWhen(
                  eip4844:
                      (maxFeePerBlobGas, maxFeePerGas, maxPriorityFeePerGas) =>
                          maxFeePerGas.toJS,
                  orElse: () => null,
                ),
                maxPriorityFeePerGas: feeValues?.maybeWhen(
                  eip1559: (maxFeePerGas, maxPriorityFeePerGas) =>
                      maxPriorityFeePerGas.toJS,
                  orElse: () => null,
                ),
                maxFeePerBlobGas: feeValues?.maybeWhen(
                  eip4844:
                      (maxFeePerBlobGas, maxFeePerGas, maxPriorityFeePerGas) =>
                          maxFeePerBlobGas.toJS,
                  orElse: () => null,
                ),
                to: to.toJS,
                type: type.toJS,
                value: value?.toJS,
                connector: connector?.toJS,
              )
            : JSSendTransactionParametersEIP4844(
                accessList: accessList?.jsify() as JSArray<JSObject>?,
                account: account?.toJS,
                chainId: chainId?.toJS,
                data: data?.toJS,
                gas: gas?.toJS ?? BigInt.zero.toJS,
                maxFeePerGas: feeValues?.maybeWhen(
                  eip4844:
                      (maxFeePerBlobGas, maxFeePerGas, maxPriorityFeePerGas) =>
                          maxFeePerGas.toJS,
                  orElse: () => null,
                ),
                maxPriorityFeePerGas: feeValues?.maybeWhen(
                  eip1559: (maxFeePerGas, maxPriorityFeePerGas) =>
                      maxPriorityFeePerGas.toJS,
                  orElse: () => null,
                ),
                maxFeePerBlobGas: feeValues?.maybeWhen(
                  eip4844:
                      (maxFeePerBlobGas, maxFeePerGas, maxPriorityFeePerGas) =>
                          maxFeePerBlobGas.toJS,
                  orElse: () => null,
                ),
                nonce: nonce?.toJS,
                to: to.toJS,
                type: type.toJS,
                value: value?.toJS,
                connector: connector?.toJS,
              );

      default:
        return null;
    }
  }
}
