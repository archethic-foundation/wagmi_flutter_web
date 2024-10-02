import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/src/models/connections.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/reconnect)
class ReconnectParameters {
  ReconnectParameters({
    this.connector,
  });
  final dynamic connector;
  JSReconnectParameters get toJS => JSReconnectParameters(
        connector: connector,
      );
}

class ReconnectReturnType {
  ReconnectReturnType({
    required this.connections,
  });
  final List<Connections>? connections;
}
