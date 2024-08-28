class WagmiError implements Exception {
  WagmiError({
    this.message,
    this.name,
  });

  final String? message;
  final String? name;

  @override
  String toString() => '$name : $message';
}
