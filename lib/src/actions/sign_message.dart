import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/signMessage)
class SignMessageParameters {
  SignMessageParameters({
    required this.account,
    this.message,
  });
  String account;
  String? message;

  JSSignMessageParameters get toJS => JSSignMessageParameters(
        account: account.toJS,
        message: message?.toJS,
      );
}
