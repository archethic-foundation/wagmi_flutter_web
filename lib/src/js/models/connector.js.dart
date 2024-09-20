// define js functions
part of '../wagmi.js.dart';

@JS()
extension type JSConnector(JSObject _) implements JSObject {
  // it holds functions that are used to interact with the connector
  external JSDataImage? icon;
  external JSString? id;
  external JSString? name;
  external JSString? type;
  external JSString? uid;
  external JSBoolean? supportsSimulation;
  external JSFunction? connect;
  external JSFunction? disconnect;
  external JSAny? emitter;
  external JSFunction? getAccounts;
  external JSFunction? getChainId;
  external JSFunction? getProvider;
  external JSFunction? isAuthorized;
  external JSFunction? onAccountsChanged;
  external JSFunction? onChainChanged;
  external JSFunction? onConnect;
  external JSFunction? onDisconnect;
  external JSFunction? setup;
  external JSFunction? switchChain;

  Connector get toDart => Connector(
        icon: icon?.toDart,
        id: id?.toDart,
        name: name?.toDart,
        type: type?.toDart,
        uid: uid?.toDart,
        supportsSimulation: supportsSimulation?.toDart,
        connect: connect?.toDart as dynamic Function({
          int? chainId,
          bool? isReconnecting,
        })?,
        disconnect: disconnect?.toDart as void Function()?,
        emitter: emitter?.jsify(),
        getAccounts: getAccounts?.toDart as dynamic Function()?,
        getChainId: getChainId?.toDart as int Function()?,
        getProvider: getProvider?.toDart as Function()?,
        isAuthorized: isAuthorized?.toDart as bool Function()?,
        onAccountsChanged:
            onAccountsChanged?.toDart as Function({List<dynamic> accounts})?,
        onChainChanged: onChainChanged?.toDart as Function({int? chain})?,
        onConnect: onConnect?.toDart as Function({dynamic connectionInfo})?,
        onDisconnect: onDisconnect?.toDart as Function({dynamic error})?,
        setup: setup?.toDart as Function()?,
        switchChain: switchChain?.toDart as Function({
          dynamic addEthereumChainParameter,
          int? chainId,
        })?,
      );
}
