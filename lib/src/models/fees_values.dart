import 'package:freezed_annotation/freezed_annotation.dart';

part 'fees_values.freezed.dart';
part 'fees_values.g.dart';

@freezed
class FeeValues with _$FeeValues {
  const factory FeeValues.legacy({
    required BigInt gasPrice,
  }) = FeeValuesLegacy;

  const factory FeeValues.eip1559({
    required BigInt maxFeePerGas,
    required BigInt maxPriorityFeePerGas,
  }) = FeeValuesEIP1559;

  const factory FeeValues.eip4844({
    required BigInt maxFeePerBlobGas,
    required BigInt maxFeePerGas,
    required BigInt maxPriorityFeePerGas,
  }) = FeeValuesEIP4844;

  factory FeeValues.fromJson(Map<String, dynamic> json) =>
      _$FeeValuesFromJson(json);
}
