import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getWalletClient)
class GetWalletClientParameters {
  GetWalletClientParameters({
    this.account,
    this.connector,
    this.chainId,
  });
  String? account;
  int? chainId;
  dynamic connector;

  JSGetWalletClientParameters get toJS => JSGetWalletClientParameters(
        connector: connector,
        account: account?.toJS,
        chainId: chainId?.toJS,
      );
}

class GetWalletClientReturnType {
  GetWalletClientReturnType({
    required this.value,
  });

  final dynamic value;
}
