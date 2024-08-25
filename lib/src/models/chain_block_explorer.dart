class ChainBlockExplorer {
  ChainBlockExplorer({
    required this.name,
    required this.url,
    this.apiUrl,
  });

  factory ChainBlockExplorer.fromMap(Map<String, dynamic> map) {
    return ChainBlockExplorer(
      name: map['name'],
      url: map['url'],
      apiUrl: map['apiUrl'],
    );
  }

  String name;
  String url;
  String? apiUrl;
}
