class ChainFormatter {
  ChainFormatter({
    required this.format,
    required this.type,
  });

  factory ChainFormatter.fromMap(Map<String, dynamic> map) {
    return ChainFormatter(
      // TODO: Placeholder function, since Dart can't directly map JS functions
      format: (args) => args,
      type: map['type'],
    );
  }

  dynamic Function(dynamic) format;
  String type;
}
