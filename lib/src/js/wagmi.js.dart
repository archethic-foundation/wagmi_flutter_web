import 'dart:js_interop';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js_util' as js_util;

import 'package:wagmi_flutter_web/src/models/connections.dart';
import 'package:wagmi_flutter_web/src/models/error.dart';
import 'package:wagmi_flutter_web/src/models/log.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart';

part 'actions/call.js.dart';
part 'actions/disconnect.js.dart';
part 'actions/estimate_fees_per_gas.js.dart';
part 'actions/estimate_gas.js.dart';
part 'actions/estimate_max_priority_fee_per_gas.js.dart';
part 'actions/get_balance.js.dart';
part 'actions/get_block.js.dart';
part 'actions/get_block_number.js.dart';
part 'actions/get_block_transaction_count.js.dart';
part 'actions/get_byte_code.js.dart';
part 'actions/get_chain_id.js.dart';
part 'actions/get_chains.js.dart';
part 'actions/get_fee_history.js.dart';
part 'actions/get_gas_price.js.dart';
part 'actions/get_token.js.dart';
part 'actions/get_transaction.js.dart';
part 'actions/get_transaction_confirmations.js.dart';
part 'actions/get_transaction_count.js.dart';
part 'actions/get_transaction_receipt.js.dart';
part 'actions/read_contract.js.dart';
part 'actions/read_contracts.js.dart';
part 'actions/send_transaction.js.dart';
part 'actions/sign_message.js.dart';
part 'actions/wait_for_transaction_receipt.js.dart';
part 'actions/watch_chain_id.js.dart';
part 'actions/watch_contract_event.js.dart';
part 'actions/watch_account.js.dart';
part 'actions/watch_connections.js.dart';
part 'actions/verify_message.js.dart';
part 'actions/switch_account.js.dart';
part 'actions/switch_chain.js.dart';

part 'actions/write_contract.js.dart';

part 'models/account.js.dart';
part 'models/appkit.js.dart';
part 'models/bigint.js.dart';
part 'models/block_tag.js.dart';
part 'models/chain.js.dart';
part 'models/config.js.dart';
part 'models/connector.js.dart';
part 'models/connections.js.dart';
part 'models/data_image.js.dart';
part 'models/error.js.dart';
part 'models/format_unit.js.dart';
part 'models/jsFunctionToDart.js.dart';
part 'models/listIntToJSArray.js.dart';
part 'models/log.js.dart';
part 'models/transport.js.dart';
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
  external void push(JSAny? _);
}

extension JSArrayNonNullableExtension<T extends JSAny> on JSArray<T> {
  external void push(JSAny _);
}
