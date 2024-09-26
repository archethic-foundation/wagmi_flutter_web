class Connector {
  Connector({
    this.icon,
    this.id,
    this.name,
    this.type,
    this.uid,
    this.supportsSimulation,
    this.connect,
    this.disconnect,
    this.emitter,
    this.getAccounts,
    this.getChainId,
    this.getProvider,
    this.isAuthorized,
    this.onAccountsChanged,
    this.onChainChanged,
    this.onConnect,
    this.onDisconnect,
    this.setup,
    this.switchChain,
  });
  factory Connector.fromJson(Map<String, dynamic> json) => Connector(
        icon: json['icon'],
        id: json['id'],
        name: json['name'],
        type: json['type'],
        uid: json['uid'],
        supportsSimulation: json['supportsSimulation'],
        connect: json['connect'],
        disconnect: json['disconnect'],
        emitter: json['emitter'],
        getAccounts: json['getAccounts'],
        getChainId: json['getChainId'],
        getProvider: json['getProvider'],
        isAuthorized: json['isAuthorized'],
        onAccountsChanged: json['onAccountsChanged'],
        onChainChanged: json['onChainChanged'],
        onConnect: json['onConnect'],
        onDisconnect: json['onDisconnect'],
        setup: json['setup'],
        switchChain: json['switchChain'],
      );

  String? icon;
  String? id;
  String? name;
  String? type;
  String? uid;
  bool? supportsSimulation;
  dynamic Function({int? chainId, bool? isReconnecting})? connect;
  void Function()? disconnect;
  dynamic emitter;
  dynamic Function()? getAccounts;
  int Function()? getChainId;
  Function()? getProvider;
  bool Function()? isAuthorized;
  Function({List<dynamic> accounts})? onAccountsChanged;
  Function({int? chain})? onChainChanged;
  Function({dynamic connectionInfo})? onConnect;
  Function({dynamic error})? onDisconnect;
  Function()? setup;
  dynamic Function({dynamic addEthereumChainParameter, int? chainId})?
      switchChain;
}
