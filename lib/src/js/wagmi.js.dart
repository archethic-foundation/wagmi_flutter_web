import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/actions/get_chains.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart';

part 'actions/estimate_gas.js.dart';
part 'actions/get_balance.js.dart';
part 'actions/get_block_number.js.dart';
part 'actions/get_chain_id.js.dart';
part 'actions/get_chains.js.dart';
part 'actions/get_gas_price.js.dart';
part 'actions/get_token.js.dart';
part 'actions/get_transaction_count.js.dart';
part 'actions/get_transaction_receipt.js.dart';
part 'actions/send_transaction.js.dart';
part 'actions/get_transaction.js.dart';
part 'actions/get_transaction_confirmations.js.dart';
part 'actions/get_block_transaction_count.js.dart';
part 'actions/get_block.js.dart';
part 'actions/call.js.dart';
part 'actions/read_contract.js.dart';
part 'actions/read_contracts.js.dart';
part 'actions/sign_message.js.dart';
part 'actions/watch_chain_id.js.dart';
part 'actions/write_contract.js.dart';
part 'models/account.js.dart';
part 'models/bigint.js.dart';
part 'models/chain.js.dart';
part 'wagmi_core.js.dart';
part 'wagmi_web3modal.js.dart';

@JS()
external JSWindow get window;

@JS()
extension type JSWindow(JSObject _) implements JSObject {
  external JSWagmiCore get wagmiCore;
  external JSWagmiWeb3Modal get web3modal;
}

extension JSArrayExtension<T extends JSAny?> on JSArray<T> {
  external void push(JSAny _);
}
