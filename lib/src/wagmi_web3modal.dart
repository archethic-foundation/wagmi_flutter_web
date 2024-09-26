import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart';

class Web3Modal {
  static void init({
    required String projectId,
    required List<int> chains,
    required bool enableAnalytics,
    required bool enableOnRamp,
    required Web3ModalMetadata metadata,
    required bool email,
    List<String>? socials,
    required bool showWallets,
    required bool walletFeatures,
    TransportBuilder? transportBuilder,
  }) {
    window.web3modal.init(
      projectId.toJS,
      chains
          .map(
            (e) => e.toJS,
          )
          .toList()
          .toJS,
      enableAnalytics.toJS,
      enableOnRamp.toJS,
      metadata._toJS(),
      email.toJS,
      socials.jsify() as JSArray<JSString>?,
      showWallets.toJS,
      walletFeatures.toJS,
      transportBuilder?.toJS,
    );
  }

  // for create createConfig
  static Config createConfig({
    required String projectId,
    required String configKey,
    required List<int> chains,
    required Web3ModalMetadata metadata,
    required bool email,
    List<String>? socials,
    required bool showWallets,
    required bool walletFeatures,
    TransportBuilder? transportBuilder,
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
        metadata._toJS(),
        email.toJS,
        socials.jsify() as JSArray<JSString>?,
        showWallets.toJS,
        walletFeatures.toJS,
        transportBuilder?.toJS,
      );

  /// Opens the [Web3Modal]
  static void open() {
    window.web3modal.open();
  }

  /// Closes the [Web3Modal]
  static void close() {
    window.web3modal.close();
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
