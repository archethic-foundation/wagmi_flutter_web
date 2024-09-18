import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/switchAccount)
class SwitchAccountParameters {
  SwitchAccountParameters({
    required this.connector,
  });
  dynamic connector;

  JSSwitchAccountParameters get toJS => JSSwitchAccountParameters(
        connector: connector,
      );
}

class SwitchAccountReturnType {
  SwitchAccountReturnType({
    required this.accounts,
    required this.chainId,
  });

  final List<String> accounts;
  final int chainId;
}
