import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/src/utils/utils_js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/readContracts)
class ReadContractsParameters {
  ReadContractsParameters({
    required this.contracts,
  });
  List<Map> contracts;

  JSReadContractsParameters get toJS => JSReadContractsParameters(
        contracts: contracts.toNonNullableJSArray,
      );
}

class ReadContractsReturnType {
  ReadContractsReturnType({
    required this.value,
  });

  final List<Map<String, dynamic>> value;
}
