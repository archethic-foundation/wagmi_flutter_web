import 'package:wagmi_flutter_web/src/models/connection.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/watchConnections)

typedef OnChangeCallback3 = void Function(List<Connection> accounts);

class WatchConnectionsParameters {
  WatchConnectionsParameters({required this.onChange});
  final OnChangeCallback3 onChange;
}

typedef WatchConnectionsReturnType = void Function();
