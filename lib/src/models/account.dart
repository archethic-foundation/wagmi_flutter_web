import 'package:wagmi_flutter_web/src/models/chain.dart';
import 'package:wagmi_flutter_web/src/models/connector.dart';

class Account {
  Account({
    required this.address,
    required this.status,
    required this.chain,
    required this.isConnecting,
    required this.isReconnecting,
    required this.isConnected,
    required this.isDisconnected,
    this.connector,
  });

  final String? address;
  final String? status;
  final Chain? chain;
  final bool isConnecting;
  final bool isReconnecting;
  final bool isConnected;
  final bool isDisconnected;
  Connector? connector;
}
