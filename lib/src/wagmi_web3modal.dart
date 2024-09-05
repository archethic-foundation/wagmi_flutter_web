import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

class Web3Modal {
  /// Initializes [Web3Modal].
  ///
  /// This must be done before any
  /// interactions with [Web3Modal].
  ///
  /// [Web3Modal documentation](https://docs.walletconnect.com/appkit/javascript/core/installation#implementation)
  static void init({
    required String projectId,
    required List<String> chains,
    required bool enableAnalytics,
    required bool enableOnRamp,
    required Web3ModalMetadata metadata,
    required bool email,
    required List<String>? socials,
    required bool showWallets,
    required bool walletFeatures,
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
    );
  }

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
