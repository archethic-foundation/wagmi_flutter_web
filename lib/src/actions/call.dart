import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/src/models/block_tag.dart';

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
  final BlockTag? blockTag;
  final int? chainId;

  JSCallParameters get toJS {
    final jsCallParams = JSCallParameters();
    if (account != null) jsCallParams.account = account!.toJS;
    if (data != null) jsCallParams.data = data!.toJS;
    if (to != null) jsCallParams.to = to!.toJS;
    if (accessList != null) {
      jsCallParams.accessList = accessList?.jsify() as JSArray<JSObject>?;
    }
    if (gas != null) jsCallParams.gas = gas!.toJS;
    if (gasPrice != null) jsCallParams.gasPrice = gasPrice!.toJS;
    if (maxFeePerGas != null) jsCallParams.maxFeePerGas = maxFeePerGas!.toJS;
    if (maxPriorityFeePerGas != null) {
      jsCallParams.maxPriorityFeePerGas = maxPriorityFeePerGas!.toJS;
    }
    if (nonce != null) jsCallParams.nonce = nonce!.toJS;
    if (value != null) jsCallParams.value = value!.toJS;
    if (blockNumber != null) jsCallParams.blockNumber = blockNumber!.toJS;
    if (blockTag != null) jsCallParams.blockTag = blockTag!.toJS;
    if (chainId != null) jsCallParams.chainId = chainId!.toJS;
    return jsCallParams;
  }
}

class CallReturnType {
  CallReturnType({
    required this.data,
  });

  final dynamic data;
}
