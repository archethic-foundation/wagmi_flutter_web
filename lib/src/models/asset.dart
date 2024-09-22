class Asset {
  Asset({
    required this.address,
    required this.symbol,
    required this.decimals,
  });

  factory Asset.fromJson(Map<String, dynamic> json) {
    return Asset(
      address: json['address'] as String,
      symbol: json['symbol'] as String,
      decimals: json['decimals'] as int,
    );
  }
  final String address;
  final String symbol;
  final int decimals;
}
