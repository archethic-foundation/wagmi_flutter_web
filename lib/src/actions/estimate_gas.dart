import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wagmi_flutter_web/src/models/fees_values.dart';

part 'estimate_gas.freezed.dart';

@freezed
class EstimateGasParameters with _$EstimateGasParameters {
  const EstimateGasParameters._();

  const factory EstimateGasParameters.legacy({
    List<Map<String, dynamic>>? accessList,
    String? account,
    int? chainId,
    String? data,
    BigInt? gas,
    FeeValuesLegacy? feeValues,
    BigInt? nonce,
    String? to,
    BigInt? value,
  }) = EstimateGasParametersLegacy;

  const factory EstimateGasParameters.eip1559({
    List<Map<String, dynamic>>? accessList,
    String? account,
    int? chainId,
    String? data,
    BigInt? gas,
    FeeValuesEIP1559? feeValues,
    BigInt? nonce,
    String? to,
    BigInt? value,
  }) = EstimateGasParametersEIP1559;

  const factory EstimateGasParameters.eip4844({
    List<Map<String, dynamic>>? accessList,
    String? account,
    int? chainId,
    String? data,
    BigInt? gas,
    FeeValuesEIP4844? feeValues,
    BigInt? nonce,
    String? to,
    BigInt? value,
  }) = EstimateGasParametersEIP4844;
}
