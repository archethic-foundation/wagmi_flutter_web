import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wagmi_flutter_web/src/models/fees_values.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/writeContract)

part 'write_contract.freezed.dart';

@freezed
class WriteContractParameters with _$WriteContractParameters {
  const WriteContractParameters._();

  const factory WriteContractParameters.legacy({
    required List<Map> abi,
    required String address,
    required String functionName,
    List<Map<String, dynamic>>? accessList,
    String? account,
    List<dynamic>? args,
    int? chainId,
    String? dataSuffix,
    BigInt? gas,
    FeeValuesLegacy? feeValues,
    BigInt? nonce,
    BigInt? value,
    String? type,
  }) = WriteContractParametersLegacy;

  const factory WriteContractParameters.eip1559({
    required List<Map> abi,
    required String address,
    required String functionName,
    List<Map<String, dynamic>>? accessList,
    String? account,
    List<dynamic>? args,
    int? chainId,
    String? dataSuffix,
    BigInt? gas,
    FeeValuesEIP1559? feeValues,
    BigInt? nonce,
    BigInt? value,
    String? type,
  }) = WriteContractParametersEIP1559;

  const factory WriteContractParameters.eip4844({
    required List<Map> abi,
    required String address,
    required String functionName,
    List<Map<String, dynamic>>? accessList,
    String? account,
    List<dynamic>? args,
    int? chainId,
    String? dataSuffix,
    BigInt? gas,
    FeeValuesEIP4844? feeValues,
    BigInt? nonce,
    BigInt? value,
    String? type,
  }) = WriteContractParametersEIP4844;
}
