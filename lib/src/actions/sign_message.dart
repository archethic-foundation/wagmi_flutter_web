import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/src/models/message_to_sign.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/signMessage)
class SignMessageParameters {
  SignMessageParameters({
    required this.account,
    this.message,
  });
  String account;
  MessageToSign? message;

  JSSignMessageParameters get toJS => JSSignMessageParameters(
        account: account.toJS,
        message: message?.toJS,
      );
}
