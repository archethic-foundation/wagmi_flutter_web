import 'package:freezed_annotation/freezed_annotation.dart';

part 'log.freezed.dart';

@freezed
class Log with _$Log {
  const factory Log({
    required String address,
    String? blockHash,
    BigInt? blockNumber,
    required String data,
    int? logIndex,
    String? transactionHash,
    int? transactionIndex,
    required bool removed,
  }) = _Log;
  const Log._();
}
