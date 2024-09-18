import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart';

class Web3Modal {
  static Config defaultWagmiConfig({
    required String projectId,
    required List<int> chains,
    required Web3ModalMetadata metadata,
    required bool email,
    List<String>? socials,
    required bool showWallets,
    required bool walletFeatures,
    TransportBuilder? transportBuilder,
  }) =>
      window.web3modal.defaultWagmiConfig(
        projectId.toJS,
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

  /// Initializes a [Web3Modal].
  ///
  /// This must be done before any
  /// interactions with [Web3Modal].
  ///
  /// [Web3Modal documentation](https://docs.walletconnect.com/appkit/javascript/core/installation#implementation)
  static AppKit createWeb3Modal({
    required Config config,
    required String projectId,
    bool? enableAnalytics,
    bool? enableOnRamp,
  }) =>
      window.web3modal.createWeb3Modal(
        config,
        projectId.toJS,
        enableAnalytics?.toJS,
        enableOnRamp?.toJS,
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
