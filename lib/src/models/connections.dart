import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wagmi_flutter_web/src/models/connector.dart';

part 'connections.freezed.dart';

@freezed
class Connections with _$Connections {
  const factory Connections({
    required List<String> accounts,
    required int chainId,
    required Connector connector,
  }) = _Connections;
  const Connections._();

  factory Connections.fromJson(Map<String, dynamic> json) {
    return Connections(
      accounts: List<String>.from(json['accounts']),
      chainId: json['chainId'],
      connector: Connector.fromJson(json['connector']),
    );
  }
}
