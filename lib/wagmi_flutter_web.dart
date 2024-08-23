library wagmi_flutter_web;

import 'dart:async';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

export 'src/actions/get_balance.dart';
export 'src/actions/get_block_number.dart';
export 'src/actions/get_gas_price.dart';
export 'src/actions/get_token.dart';
export 'src/actions/get_transaction_count.dart';
export 'src/actions/read_contract.dart';
export 'src/actions/sign_message.dart';
export 'src/actions/write_contract.dart';
export 'src/models/account.dart';
export 'src/models/chain.dart';
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
