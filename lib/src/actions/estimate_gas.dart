import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/estimateGas)
class EstimateGasParameters {
  EstimateGasParameters({
    this.accessList,
    this.account,
    this.chainId,
    this.data,
    this.gas,
    this.gasPrice,
    this.maxFeePerGas,
    this.maxPriorityFeePerGas,
    this.nonce,
    this.to,
    this.type,
    this.value,
  });
  List<Map<String, dynamic>>? accessList;
  String? account;
  int? chainId;
  String? data;
  BigInt? gas;
  BigInt? gasPrice;
  BigInt? maxFeePerGas;
  BigInt? maxPriorityFeePerGas;
  int? nonce;
  String? to;
  String? type;
  BigInt? value;

  JSEstimateGasParameters get toJS => JSEstimateGasParameters(
        accessList: accessList?.jsify() as JSArray<JSObject>?,
        account: account?.toJS,
        chainId: chainId?.toJS,
        data: data?.toJS,
        gas: gas?.toJS ?? BigInt.zero.toJS,
        gasPrice: gasPrice?.toJS ?? BigInt.zero.toJS,
        maxFeePerGas: maxFeePerGas?.toJS ?? BigInt.zero.toJS,
        maxPriorityFeePerGas: maxPriorityFeePerGas?.toJS ?? BigInt.zero.toJS,
        nonce: nonce?.toJS,
        to: to?.toJS,
        type: type?.toJS,
        value: value?.toJS,
      );
}
