import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/readContracts)
class ReadContractsParameters {
  ReadContractsParameters({
    required this.contracts,
  });
  List<Map> contracts;

  JSReadContractsParameters get toJS => JSReadContractsParameters(
        contracts: contracts.jsify()!,
      );
}

class ReadContractsReturnType {
  ReadContractsReturnType({
    required this.value,
  });

  final JSArray<JSArray<JSObject>> value;
}
