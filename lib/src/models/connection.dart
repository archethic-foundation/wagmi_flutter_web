import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wagmi_flutter_web/src/models/connector.dart';

part 'connection.freezed.dart';

@freezed
class Connection with _$Connection {
  const factory Connection({
    required List<String> accounts,
    required int chainId,
    required Connector connector,
  }) = _Connection;
  const Connection._();

  factory Connection.fromJson(Map<String, dynamic> json) {
    return Connection(
      accounts: List<String>.from(json['accounts']),
      chainId: json['chainId'],
      connector: Connector.fromJson(json['connector']),
    );
  }
}
