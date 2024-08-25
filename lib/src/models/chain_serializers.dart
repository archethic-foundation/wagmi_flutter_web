class ChainSerializers {
  ChainSerializers({this.transaction});

  factory ChainSerializers.fromMap(Map<String, dynamic> map) {
    return ChainSerializers(
      // TODO: Function can't be mapped directly
      transaction: null,
    );
  }

  dynamic Function(dynamic)? transaction;
}
