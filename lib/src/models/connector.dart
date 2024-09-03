class Connector {
  Connector({
    required this.icon,
    required this.id,
    required this.name,
    required this.type,
    required this.uid,
    required this.supportsSimulation,
  });

  String icon;
  String id;
  String name;
  String type;
  String uid;
  bool supportsSimulation;

  static Connector? fromMap(Map<String, dynamic> connectorMap) {
    // remove "" from the icon string
    connectorMap['icon'] = connectorMap['icon'].replaceAll('"', '');
    // remove data:image/svg+xml;base64, from the icon string
    connectorMap['icon'] =
        connectorMap['icon'].replaceAll('data:image/svg+xml;base64,', '');
    return Connector(
        icon: connectorMap['icon'] as String,
        id: connectorMap['id'] as String,
        name: connectorMap['name'] as String,
        type: connectorMap['type'] as String,
        uid: connectorMap['uid'] as String,
        supportsSimulation: connectorMap['supportsSimulation'] as bool);
  }
}
