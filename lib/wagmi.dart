library wagmi_flutter_web;

import 'dart:async';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

export 'src/wagmi_chain.dart';
export 'src/wagmi_web3modal.dart';

var _isReady = false;

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
