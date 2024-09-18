import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/switchChain)
class SwitchChainParameters {
  SwitchChainParameters({
    required this.connector,
    required this.chainId,
    this.addEthereumChainParameter,
  });
  dynamic addEthereumChainParameter;
  int chainId;
  dynamic connector;

  JSSwitchChainParameters get toJS => JSSwitchChainParameters(
        connector: connector,
        addEthereumChainParameter: addEthereumChainParameter?.toJS,
        chainId: chainId.toJS,
      );
}

class SwitchChainReturnType {
  SwitchChainReturnType({
    required this.value,
  });

  final dynamic value;
}
