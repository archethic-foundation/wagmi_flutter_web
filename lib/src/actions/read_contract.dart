import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/readContract)
class ReadContractParameters {
  ReadContractParameters({
    required this.abi,
    required this.address,
    required this.functionName,
    this.account,
    this.args,
    this.blockNumber,
    this.blockTag,
    this.chainId,
  });
  List<Map> abi;
  String address;
  String functionName;
  String? account;
  List<dynamic>? args;
  BigInt? blockNumber;
  BlockTag? blockTag;
  int? chainId;

  JSReadContractParameters get toJS => JSReadContractParameters(
        abi: abi.jsify()!,
        address: address.toJS,
        functionName: functionName.toJS,
      );
}

class ReadContractReturnType {
  ReadContractReturnType({
    required this.value,
  });

  final BigInt value;
}
