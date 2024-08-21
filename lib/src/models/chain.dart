/// Chains identifiers.
///
/// Those constants are used to match
/// chains predefined in [Viem](https://viem.sh/docs/chains/introduction.html)
class Chain {
  Chain({
    required this.id,
    required this.name,
  });

  static const mainnet = 'mainnet';
  static const sepolia = 'sepolia';

  final int? id;
  final String? name;
}
