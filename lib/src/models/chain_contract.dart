class ChainContract {
  ChainContract({
    required this.address,
    this.blockCreated,
  });

  factory ChainContract.fromMap(Map<String, dynamic> map) {
    return ChainContract(
      address: map['address'],
      blockCreated: map['blockCreated'],
    );
  }

  String address;
  int? blockCreated;
}
