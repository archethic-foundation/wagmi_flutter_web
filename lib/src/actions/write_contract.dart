import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/writeContract)

class WriteContractParameters {
  WriteContractParameters({
    required this.abi,
    required this.address,
    required this.functionName,
    this.accessList,
    this.account,
    this.args,
    this.chainId,
    this.dataSuffix,
    this.gas,
    this.gasPrice,
    this.maxFeePerGas,
    this.maxPriorityFeePerGas,
    this.nonce,
    this.type,
    this.value,
  });

  List<Map> abi;
  String address;
  List<Map<String, dynamic>>? accessList;
  String? account;
  String functionName;
  List<dynamic>? args;
  int? chainId;
  String? dataSuffix;
  BigInt? gas;
  BigInt? gasPrice;
  BigInt? maxFeePerGas;
  BigInt? maxPriorityFeePerGas;
  int? nonce;
  String? type;
  BigInt? value;

  JSArray<JSObject>? _convertArgs(List<dynamic>? args) {
    if (args == null) {
      return null;
    }
    final jsArgs = JSArray<JSObject>();
    for (final arg in args) {
      if (arg is String) {
        jsArgs.add(arg.toJS);
      } else if (arg is int) {
        jsArgs.add(arg.toJS);
      } else if (arg is bool) {
        jsArgs.add(arg.toJS);
      }
    }
    return jsArgs;
  }

  JSWriteContractParameters get toJS => JSWriteContractParameters(
        abi: abi.jsify(),
        address: address.toJS,
        functionName: functionName.toJS,
        accessList: accessList?.jsify() as JSArray<JSObject>?,
        account: account?.toJS,
        args: _convertArgs(args),
        chainId: chainId?.toJS,
        dataSuffix: dataSuffix?.toJS,
        gas: gas?.toJS,
        gasPrice: gasPrice?.toJS,
        maxFeePerGas: maxFeePerGas?.toJS,
        maxPriorityFeePerGas: maxPriorityFeePerGas?.toJS,
        nonce: nonce?.toJS,
        type: type?.toJS,
        value: value?.toJS,
      );
}

class WriteContractReturnType {
  WriteContractReturnType({
    required this.hash,
  });

  String hash;
}
