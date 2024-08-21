library wagmi_flutter_web;

export 'src/wagmi_chain.dart';
export 'src/wagmi_web3modal.dart';
import 'dart:async';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

Future<void> init() async {
  await injectJavascript('assets/main.js');
}

Future<void> injectJavascript(String assetPath) async {
  const readyEventName = 'wagmi_flutter_web_ready';
  final completer = Completer();

  void readyEventListener(event) {
    html.window.document
        .removeEventListener(readyEventName, readyEventListener);
    completer.complete();
  }

  final scriptPath = 'packages/wagmi_flutter_web/$assetPath';

  final scriptNode = html.ScriptElement()
    ..type = 'module'
    ..src = scriptPath;
  html.window.document.getElementsByTagName('html')[0].append(scriptNode);
  html.window.document.addEventListener(
    readyEventName,
    readyEventListener,
  );

  return completer.future;
}
