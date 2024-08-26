class ChainFees {
  ChainFees({
    this.baseFeeMultiplier,
    this.defaultPriorityFee,
    this.estimateFeesPerGas,
  });

  factory ChainFees.fromMap(Map<String, dynamic> map) {
    return ChainFees(
      baseFeeMultiplier: map['baseFeeMultiplier']?.toDouble(),
      defaultPriorityFee: map['defaultPriorityFee'] != null
          ? BigInt.parse(map['defaultPriorityFee'])
          : null,
    );
  }

  double? baseFeeMultiplier;
  BigInt? defaultPriorityFee;
  BigInt? Function()? estimateFeesPerGas;
}
