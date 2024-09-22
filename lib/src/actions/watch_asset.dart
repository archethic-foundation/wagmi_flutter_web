import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/src/models/asset.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/watchAsset)
class WatchAssetParameters {
  WatchAssetParameters({
    required this.type,
    this.options,
    this.connector,
  });
  String type;
  Asset? options;
  dynamic connector;

  JSWatchAssetParameters get toJS => JSWatchAssetParameters(
        connector: connector,
        options: toJSAny,
        type: type.toJS,
      );

  dynamic get toJSAny => {
        'address': options?.address.toJS,
        'decimals': options?.decimals.toJS,
        'symbol': options?.symbol.toJS,
      }.jsify();
}

class WatchAssetReturnType {
  WatchAssetReturnType({
    required this.value,
  });

  final dynamic value;
}
