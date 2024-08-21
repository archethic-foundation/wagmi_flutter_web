import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

class Web3Modal {
  static void init(
    String projectId,
    List<String> chains,
    bool enableAnalytics,
    bool enableOnRamp,
    Web3ModalMetadata metadata,
  ) {
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
    );
  }

  static void open() {
    window.web3modal.open();
  }

  static void close() {
    window.web3modal.close();
  }
}

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
