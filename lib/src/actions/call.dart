import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/call)
class CallParameters {
  CallParameters({
    required this.data,
    required this.to,
    this.account,
    this.accessList,
    this.gas,
    this.gasPrice,
    this.maxFeePerGas,
    this.maxPriorityFeePerGas,
    this.nonce,
    this.value,
    this.blockNumber,
    this.blockTag,
    this.chainId,
  });

  final String? account;
  final String? data;
  final String? to;
  final List<Map<String, dynamic>>? accessList;
  final BigInt? gas;
  final BigInt? gasPrice;
  final BigInt? maxFeePerGas;
  final BigInt? maxPriorityFeePerGas;
  final int? nonce;
  final BigInt? value;
  final int? blockNumber;
  final String? blockTag;
  final int? chainId;

  JSCallParameters get toJS => JSCallParameters(
        account: account?.toJS,
        data: data?.toJS,
        to: to?.toJS,
        accessList: accessList?.jsify() as JSArray<JSObject>?,
        gas: gas?.toJS,
        gasPrice: gasPrice?.toJS,
        maxFeePerGas: maxFeePerGas?.toJS,
        maxPriorityFeePerGas: maxPriorityFeePerGas?.toJS,
        nonce: nonce?.toJS,
        value: value?.toJS,
        blockNumber: blockNumber?.toJS,
        blockTag: blockTag?.toJS,
        chainId: chainId?.toJS,
      );
}

class CallReturnType {
  CallReturnType({
    required this.data,
  });

  final dynamic data;
}
