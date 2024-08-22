import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/actions/get_balance.dart';
import 'package:wagmi_flutter_web/src/actions/get_token.dart';
import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/src/models/account.dart';

class Core {
  static Account getAccount() {
    return window.wagmiCore.getAccount().toDart;
  }

  static int getChainId() {
    return window.wagmiCore.getChainId().toDartInt;
  }

  static Future<GetBalanceReturnType> getBalance(
    GetBalanceParameters getBalanceParameters,
  ) async {
    final result = await window.wagmiCore
        .getBalance(
          getBalanceParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<GetTokenReturnType> getToken(
    GetTokenParameters getTokenParameters,
  ) async {
    final result = await window.wagmiCore
        .getToken(
          getTokenParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }
}
