abstract class FeeValues {
  const FeeValues();
}

class FeeValuesLegacy extends FeeValues {
  FeeValuesLegacy({required this.gasPrice});

  final BigInt gasPrice;

  @override
  String toString() => 'gasPrice=$gasPrice';
}

class FeeValuesEIP1559 extends FeeValues {
  FeeValuesEIP1559({
    required this.maxFeePerGas,
    required this.maxPriorityFeePerGas,
  });

  final BigInt maxFeePerGas;
  final BigInt maxPriorityFeePerGas;

  @override
  String toString() =>
      'maxFeePerGas=$maxFeePerGas, maxPriorityFeePerGas=$maxPriorityFeePerGas';
}

class FeeValuesEIP4844 extends FeeValues {
  FeeValuesEIP4844({
    required this.maxFeePerBlobGas,
    required this.maxFeePerGas,
    required this.maxPriorityFeePerGas,
  });

  final BigInt maxFeePerBlobGas;
  final BigInt maxFeePerGas;
  final BigInt maxPriorityFeePerGas;

  @override
  String toString() =>
      'maxFeePerBlobGas=$maxFeePerBlobGas, maxFeePerGas=$maxFeePerGas, maxPriorityFeePerGas=$maxPriorityFeePerGas';
}
