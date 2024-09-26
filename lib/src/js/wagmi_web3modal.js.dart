part of 'wagmi.js.dart';

@JS()
extension type JSWagmiWeb3Modal(JSObject _) implements JSObject {
  external void init(
    JSString projectId,
    JSArray<JSNumber> chains,
    JSBoolean enableAnalytics,
    JSBoolean enableOnRamp,
    JSWagmiWeb3ModalMetadata metadata,
    JSBoolean email,
    JSArray<JSString>? socials,
    JSBoolean showWallets,
    JSBoolean walletFeatures,
    JSFunction? transportBuilder,
  );
  // for create createConfig
  external JSConfig createConfig(
    JSString projectId,
    JSString configKey,
    JSArray<JSNumber> chains,
    JSWagmiWeb3ModalMetadata metadata,
    JSBoolean email,
    JSArray<JSString>? socials,
    JSBoolean showWallets,
    JSBoolean walletFeatures,
    JSFunction? transportBuilder,
  );

  external JSAppKit createWeb3Modal(
    JSConfig wagmiConfig,
    JSString projectId,
    // Optional - defaults to your Cloud configuration
    JSBoolean? enableAnalytics,
    // Optional - false as default
    JSBoolean? enableOnRamp,
  );

  external void open();
  external void close();
}

@JS()
extension type JSWagmiWeb3ModalMetadata._(JSObject _) implements JSObject {
  external JSWagmiWeb3ModalMetadata({
    required JSString name,
    required JSString description,
    required JSString url,
    required JSArray<JSString> icons,
  });
  external JSString name;
  external JSString description;
  external JSString url;
  external JSArray<JSString> icons;
}
