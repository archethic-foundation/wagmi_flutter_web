import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/actions/get_balance.dart';
import 'package:wagmi_flutter_web/src/models/account.dart';
import 'package:wagmi_flutter_web/src/models/chain.dart';
part 'wagmi_core.js.dart';
part 'wagmi_web3modal.js.dart';

part 'models/account.js.dart';
part 'models/chain.js.dart';
part 'models/bigint.js.dart';

part 'actions/get_balance.js.dart';
part 'actions/get_chain_id.js.dart';
part 'actions/get_token.js.dart';
part 'actions/sign_message.js.dart';

@JS()
external JSWindow get window;

@JS()
extension type JSWindow(JSObject _) implements JSObject {
  external JSWagmiCore get wagmiCore;
  external JSWagmiWeb3Modal get web3modal;
}
