part of 'wagmi.js.dart';

@JS()
extension type JSWagmiWeb3Modal(JSObject _) implements JSObject {
  external void init(
    JSString projectId,
    JSArray<JSNumber> chains,
    JSWagmiCoreStorage storage,
    JSBoolean enableAnalytics,
    JSBoolean enableOnRamp,
    JSWagmiWeb3ModalMetadata metadata,
    JSBoolean email,
    JSArray<JSString>? socials,
    JSBoolean showWallets,
    JSBoolean walletFeatures,
    JSFunction? transportBuilder,
    JSArray<JSString>? includedWalletIds,
    JSArray<JSString>? featuredWalletIds,
    JSArray<JSString>? excludedWalletIds,
  );
  // for create createConfig
  external JSConfig createConfig(
    JSString projectId,
    JSString configKey,
    JSArray<JSNumber> chains,
    JSWagmiCoreStorage storage,
    JSWagmiWeb3ModalMetadata metadata,
    JSBoolean email,
    JSArray<JSString>? socials,
    JSBoolean showWallets,
    JSBoolean walletFeatures,
    JSFunction? transportBuilder,
    JSArray<JSString>? includedWalletIds,
    JSArray<JSString>? featuredWalletIds,
    JSArray<JSString>? excludedWalletIds,
  );

  external JSAppKit createWeb3Modal(
    JSConfig wagmiConfig,
    JSString projectId,
    // Optional - defaults to your Cloud configuration
    JSBoolean? enableAnalytics,
    // Optional - false as default
    JSBoolean? enableOnRamp,
  );

  external JSPromise<Null> open();
  external JSPromise<Null> close();

  external JSFunction subscribeState(JSFunction callback);
}

@JS()
extension type PublicStateControllerState._(JSObject _) implements JSObject {
  external JSBoolean loading;
  external JSBoolean open;
  external JSString? selectedNetworkId;
  external JSString? activeChain;
}

extension Web3ModalStateFromJS on PublicStateControllerState {
  Web3ModalState get toDart => Web3ModalState(
        loading: loading.toDart,
        open: open.toDart,
        selectedNetworkId: selectedNetworkId?.toDart,
        activeChain: activeChain?.toDart,
      );
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
