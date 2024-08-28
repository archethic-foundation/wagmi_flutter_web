class ChainSerializers {
  ChainSerializers({this.transaction});

  // ignore: avoid_unused_constructor_parameters
  factory ChainSerializers.fromMap(Map<String, dynamic> map) {
    return ChainSerializers(
      // ignore: avoid_redundant_argument_values
      transaction: null,
    );
  }

  dynamic Function(dynamic)? transaction;
}
