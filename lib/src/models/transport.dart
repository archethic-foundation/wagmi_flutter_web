import 'package:freezed_annotation/freezed_annotation.dart';

part 'transport.freezed.dart';

@freezed
class Transport with _$Transport {
  const Transport._();
  const factory Transport.websocket({
    required String url,
  }) = _WebsocketTransport;
  const factory Transport.http({
    required String url,
  }) = _HttpTransport;
}

typedef TransportBuilder = Transport Function(int chainId);
