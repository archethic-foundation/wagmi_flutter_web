class Connector {
  Connector({
    this.icon,
    this.id,
    this.name,
    this.type,
    this.uid,
    this.supportsSimulation,
  });

  String? icon;
  String? id;
  String? name;
  String? type;
  String? uid;
  bool? supportsSimulation;

  static Connector? fromMap(Map<String, dynamic> connectorMap) {
    // remove "" from the icon string
    if (connectorMap['icon'] != null) {
      connectorMap['icon'] = connectorMap['icon'].replaceAll('"', '');
      // remove data:image/svg+xml;base64, from the icon string
      connectorMap['icon'] =
          connectorMap['icon'].replaceAll('data:image/svg+xml;base64,', '');
    }

    return Connector(
      icon: connectorMap['icon'],
      id: connectorMap['id'],
      name: connectorMap['name'],
      type: connectorMap['type'],
      uid: connectorMap['uid'],
      supportsSimulation: connectorMap['supportsSimulation'],
    );
  }
}
