import 'dart:js_interop';
part 'wagmi_core.js.dart';
part 'wagmi_web3modal.js.dart';

@JS()
external JSWindow get window;

@JS()
extension type JSWindow(JSObject _) implements JSObject {
  external JSWagmiCore get wagmiCore;
  external JSWagmiWeb3Modal get web3modal;
}
