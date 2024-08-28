class Log {
  Log({
    required this.address,
    this.blockHash,
    this.blockNumber,
    required this.data,
    this.logIndex,
    this.transactionHash,
    this.transactionIndex,
    required this.removed,
  });

  final String address;
  final String? blockHash;
  final BigInt? blockNumber;
  final String data;
  final int? logIndex;
  final String? transactionHash;
  final int? transactionIndex;
  final bool removed;
}
