import 'dart:async';
import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart';

class Web3Modal {
  static void init({
    required String projectId,
    required List<int> chains,
    CoreStorage storage = CoreStorage.localStorage,
    required bool enableAnalytics,
    required bool enableOnRamp,
    required Web3ModalMetadata metadata,
    required bool email,
    List<String>? socials,
    required bool showWallets,
    required bool walletFeatures,
    TransportBuilder? transportBuilder,
    List<String>? includeWalletIds,
    List<String>? featuredWalletIds,
    List<String>? excludeWalletIds,
  }) {
    window.web3modal.init(
      projectId.toJS,
      chains
          .map(
            (e) => e.toJS,
          )
          .toList()
          .toJS,
      storage.toJS,
      enableAnalytics.toJS,
      enableOnRamp.toJS,
      metadata._toJS(),
      email.toJS,
      socials.jsify() as JSArray<JSString>?,
      showWallets.toJS,
      walletFeatures.toJS,
      transportBuilder?.toJS,
      includeWalletIds?.jsify() as JSArray<JSString>?,
      featuredWalletIds?.jsify() as JSArray<JSString>?,
      excludeWalletIds?.jsify() as JSArray<JSString>?,
    );
  }

  // for create createConfig
  static Config createConfig({
    required String projectId,
    required String configKey,
    required List<int> chains,
    CoreStorage storage = CoreStorage.localStorage,
    required Web3ModalMetadata metadata,
    required bool email,
    List<String>? socials,
    required bool showWallets,
    required bool walletFeatures,
    TransportBuilder? transportBuilder,
    List<String>? includeWalletIds,
    List<String>? featuredWalletIds,
    List<String>? excludeWalletIds,
  }) =>
      window.web3modal.createConfig(
        projectId.toJS,
        configKey.toJS,
        chains
            .map(
              (e) => e.toJS,
            )
            .toList()
            .toJS,
        storage.toJS,
        metadata._toJS(),
        email.toJS,
        socials.jsify() as JSArray<JSString>?,
        showWallets.toJS,
        walletFeatures.toJS,
        transportBuilder?.toJS,
        includeWalletIds?.jsify() as JSArray<JSString>?,
        featuredWalletIds?.jsify() as JSArray<JSString>?,
        excludeWalletIds?.jsify() as JSArray<JSString>?,
      );

  /// Opens the [Web3Modal]
  static Future<void> open() async {
    await window.web3modal.open().toDart;
  }

  /// Closes the [Web3Modal]
  static Future<void> close() async {
    await window.web3modal.close().toDart;
  }

  /// Listens to the [Web3Modal] state.
  static Stream<Web3ModalState> get state {
    late StreamController<Web3ModalState> controller;
    late Function? stopListeningFunction;

    void startListening() {
      stopListeningFunction = window.web3modal
          .subscribeState(
            ((PublicStateControllerState state) {
              controller.add(state.toDart);
            }).toJS,
          )
          .toDart;
    }

    void stopListening() {
      stopListeningFunction?.call();
      stopListeningFunction = null;
    }

    controller = StreamController<Web3ModalState>(
      onListen: startListening,
      onPause: stopListening,
      onResume: startListening,
      onCancel: stopListening,
    );

    return controller.stream;
  }
}

/// [Web3Modal documentation](https://docs.walletconnect.com/appkit/javascript/core/installation#implementation)
class Web3ModalMetadata {
  Web3ModalMetadata({
    required this.name,
    required this.description,
    required this.url,
    required this.icons,
  });

  final String name;
  final String description;
  final String url;
  final List<String> icons;

  JSWagmiWeb3ModalMetadata _toJS() => JSWagmiWeb3ModalMetadata(
        name: name.toJS,
        description: description.toJS,
        url: url.toJS,
        icons: icons.map((icon) => icon.toJS).toList().toJS,
      );
}

class Web3ModalState {
  Web3ModalState({
    required this.loading,
    required this.open,
    required this.selectedNetworkId,
    required this.activeChain,
  });

  final bool loading;
  final bool open;
  final String? selectedNetworkId;
  final String? activeChain;
}
