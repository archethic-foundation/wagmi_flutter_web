class ChainNativeCurrency {
  ChainNativeCurrency({
    required this.name,
    required this.symbol,
    required this.decimals,
  });

  factory ChainNativeCurrency.fromMap(Map<String, dynamic> map) {
    return ChainNativeCurrency(
      name: map['name'],
      symbol: map['symbol'],
      decimals: map['decimals'],
    );
  }

  String name;
  String symbol;
  int decimals;
}
