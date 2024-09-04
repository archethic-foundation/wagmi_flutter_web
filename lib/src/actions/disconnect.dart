import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/disconnect)
class DisconnectParameters {
  DisconnectParameters({
    this.connector,
  });

  final dynamic connector;

  JSDisconnectParameters get toJS => JSDisconnectParameters(
        connector: connector,
      );
}
