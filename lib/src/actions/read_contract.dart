import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/readContract)
class ReadContractParameters {
  ReadContractParameters({
    required this.abi,
    required this.address,
    required this.functionName,
  });
  List<Map> abi;
  String address;
  String functionName;

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
