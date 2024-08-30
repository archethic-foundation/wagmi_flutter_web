library wagmi_flutter_web;

import 'dart:async';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
export 'src/actions/call.dart';
export 'src/actions/estimate_gas.dart';
export 'src/actions/estimate_fees_per_gas.dart';
export 'src/actions/get_balance.dart';
export 'src/actions/get_block.dart';
export 'src/actions/get_block_number.dart';
export 'src/actions/get_block_transaction_count.dart';
export 'src/actions/get_gas_price.dart';
export 'src/actions/get_token.dart';
export 'src/actions/get_transaction.dart';
export 'src/actions/get_transaction_confirmations.dart';
export 'src/actions/get_transaction_count.dart';
export 'src/actions/get_transaction_receipt.dart';
export 'src/actions/read_contract.dart';
export 'src/actions/read_contracts.dart';
export 'src/actions/send_transaction.dart';
export 'src/actions/sign_message.dart';
export 'src/actions/watch_chain_id.dart';
export 'src/actions/write_contract.dart';
export 'src/models/account.dart';
export 'src/models/chain.dart';
export 'src/models/chain_block_explorer.dart';
export 'src/models/chain_contract.dart';
export 'src/models/chain_fees.dart';
export 'src/models/chain_formatter.dart';
export 'src/models/chain_formatters.dart';
export 'src/models/chain_native_currency.dart';
export 'src/models/chain_rpc_urls.dart';
export 'src/models/chain_serializers.dart';
export 'src/models/fees_values.dart';
export 'src/utils/ether_amount.dart';
export 'src/utils/utils_js.dart';
export 'src/wagmi_core.dart';
export 'src/wagmi_web3modal.dart';

var _isReady = false;

/// Initializes the lib.
///
/// This must be done before any interaction
/// with the lib.
Future<void> init() async {
  if (_isReady) return;

  final completer = Completer();

  _completeOnReadyEvent(completer);

  await _injectJavascriptModule('assets/main.js');

  _isReady = true;
  return completer.future;
}

void _completeOnReadyEvent(Completer completer) {
  const readyEventName = 'wagmi_flutter_web_ready';

  void readyEventListener(event) {
    html.window.document.removeEventListener(
      readyEventName,
      readyEventListener,
    );
    completer.complete();
  }

  html.window.document.addEventListener(
    readyEventName,
    readyEventListener,
  );
}

Future<void> _injectJavascriptModule(String assetPath) async {
  final scriptPath = 'packages/wagmi_flutter_web/$assetPath';

  final scriptNode = html.ScriptElement()
    ..type = 'module'
    ..src = scriptPath;
  html.window.document.getElementsByTagName('html')[0].append(scriptNode);
}
