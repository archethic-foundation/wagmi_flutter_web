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

class TokenTotalSupply {
  TokenTotalSupply({
    required this.formatted,
    required this.value,
  });

  final String formatted;
  final BigInt value;
}

class GetTokenReturnType {
  GetTokenReturnType({
    required this.address,
    required this.decimals,
    required this.totalSupply,
    this.name,
    this.symbol,
  });

  final String address;
  final int decimals;
  final TokenTotalSupply totalSupply;
  final String? name;
  final String? symbol;
}
