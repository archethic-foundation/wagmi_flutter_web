import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getToken)
class GetTokenParameters {
  GetTokenParameters({
    required this.address,
    this.chainId,
    this.formatUnits,
  });
  String address;
  int? chainId;
  String? formatUnits;

  JSGetTokenParameters get toJS => JSGetTokenParameters(
        address: address.toJS,
        chainId: chainId?.toJS,
        formatUnits: formatUnits?.toJS,
      );
}

class GetTokenReturnType {
  GetTokenReturnType({
    required this.address,
    required this.decimals,
    required this.name,
    required this.symbol,
    required this.totalSupply,
  });

  final String address;
  final int decimals;
  final String? name;
  final String? symbol;
  final Map? totalSupply;
}

@JS()
extension type GetTokenErrorType(JSObject _) implements JSObject {}
