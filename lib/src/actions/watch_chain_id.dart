import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/watchChainId)

typedef OnChangeCallback = void Function(int chainId, int prevChainId);

class WatchChainIdParameters {
  WatchChainIdParameters({required this.onChange});
  final OnChangeCallback onChange;
}

typedef WatchChainIdReturnType = void Function();
