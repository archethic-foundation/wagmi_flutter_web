import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/actions/get_balance.dart';
import 'package:wagmi_flutter_web/src/actions/get_block_number.dart';
import 'package:wagmi_flutter_web/src/actions/get_chains.dart';
import 'package:wagmi_flutter_web/src/actions/get_gas_price.dart';
import 'package:wagmi_flutter_web/src/actions/get_token.dart';
import 'package:wagmi_flutter_web/src/actions/get_transaction_receipt.dart';
import 'package:wagmi_flutter_web/src/actions/read_contract.dart';
import 'package:wagmi_flutter_web/src/actions/write_contract.dart';
import 'package:wagmi_flutter_web/src/models/account.dart';
import 'package:wagmi_flutter_web/src/models/chain.dart';

part 'actions/estimate_gas.js.dart';
part 'actions/get_balance.js.dart';
part 'actions/get_block_number.js.dart';
part 'actions/get_chain_id.js.dart';
part 'actions/get_chains.js.dart';
part 'actions/get_gas_price.js.dart';
part 'actions/get_token.js.dart';
part 'actions/get_transaction_count.js.dart';
part 'actions/get_transaction_receipt.js.dart';
part 'actions/read_contract.js.dart';
part 'actions/sign_message.js.dart';
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
