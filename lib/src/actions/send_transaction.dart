import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wagmi_flutter_web/src/models/fees_values.dart';

part 'send_transaction.freezed.dart';

@freezed
class SendTransactionParameters with _$SendTransactionParameters {
  const SendTransactionParameters._();

  const factory SendTransactionParameters.legacy({
    required String to,
    List<Map<String, dynamic>>? accessList,
    required String account,
    int? chainId,
    String? data,
    BigInt? gas,
    FeeValuesLegacy? feeValues,
    BigInt? nonce,
    BigInt? value,
    dynamic connector,
  }) = SendTransactionParametersLegacy;

  const factory SendTransactionParameters.eip1559({
    required String to,
    List<Map<String, dynamic>>? accessList,
    required String account,
    int? chainId,
    String? data,
    BigInt? gas,
    FeeValuesEIP1559? feeValues,
    BigInt? nonce,
    BigInt? value,
    dynamic connector,
  }) = SendTransactionParametersEIP1559;

  const factory SendTransactionParameters.eip4844({
    required String to,
    List<Map<String, dynamic>>? accessList,
    required String account,
    int? chainId,
    String? data,
    BigInt? gas,
    FeeValuesEIP4844? feeValues,
    BigInt? nonce,
    BigInt? value,
    dynamic connector,
  }) = SendTransactionParametersEIP4844;
}
