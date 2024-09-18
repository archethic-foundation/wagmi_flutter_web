class ChainRpcUrls {
  ChainRpcUrls({
    required this.http,
    this.webSocket,
  });

  factory ChainRpcUrls.fromMap(Map<String, dynamic> map) {
    return ChainRpcUrls(
      http: (map['http'] as List).map((e) => e.toString()).toList(),
      webSocket: map['webSocket'] != null
          ? (map['webSocket'] as Map).values.map((e) => e.toString()).toList()
          : null,
    );
  }

  List<String> http;
  List<String>? webSocket;
}
