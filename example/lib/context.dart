import 'package:flutter/material.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart' as wagmi;

/// Static declaration of some Wagmi configurations
class WagmiContext {
  WagmiContext(this.config) {
    web3modal = wagmi.Web3Modal.createWeb3Modal(
      config: config,
      projectId: _projectId,
    );
  }
  final wagmi.Config config;
  late final wagmi.AppKit web3modal;

  static const _projectId = 'f642e3f39ba3e375f8f714f18354faa4';

  /// Default [WagmiContext]
  static WagmiContext get main => withWSSTransport;

  /// [WagmiContext] with config using websocket transport
  static late final WagmiContext withWSSTransport;

  /// [WagmiContext] with config using no transport
  static late final WagmiContext withoutTransport;

  /// [ValueNotifier] to keep track of the readyness of Wagmi
  static final isReady = ValueNotifier<bool>(false);

  static Future<void> init() async {
    if (isReady.value) return;
    await wagmi.init();

    withWSSTransport = WagmiContext(
      wagmi.Web3Modal.defaultWagmiConfig(
        projectId: _projectId,
        chains: [
          wagmi.Chain.mainnet.id,
          wagmi.Chain.sepolia.id,
          wagmi.Chain.polygonAmoy.id,
          wagmi.Chain.polygon.id,
        ],
        metadata: wagmi.Web3ModalMetadata(
          name: 'Web3Modal',
          description: 'Web3Modal Example',
          // url must match your domain & subdomain
          url: 'https://web3modal.com',
          icons: ['https://avatars.githubusercontent.com/u/37784886'],
        ),
        email: false, // email
        showWallets: true, // showWallets
        walletFeatures: true, // walletFeatures
        transportBuilder: (chainId) => wagmi.Transport.websocket(
          url: _transportUrl(chainId),
        ),
      ),
    );

    withoutTransport = WagmiContext(
      wagmi.Web3Modal.defaultWagmiConfig(
        projectId: _projectId,
        chains: [
          wagmi.Chain.mainnet.id,
          wagmi.Chain.sepolia.id,
          wagmi.Chain.polygonAmoy.id,
          wagmi.Chain.polygon.id,
        ],
        metadata: wagmi.Web3ModalMetadata(
          name: 'Web3Modal',
          description: 'Web3Modal Example',
          // url must match your domain & subdomain
          url: 'https://web3modal.com',
          icons: ['https://avatars.githubusercontent.com/u/37784886'],
        ),
        email: false, // email
        showWallets: true, // showWallets
        walletFeatures: true, // walletFeatures
      ),
    );
    isReady.value = true;
  }

  static String _transportUrl(int chainId) {
    if (chainId == wagmi.Chain.sepolia.id) {
      return 'wss://eth-sepolia.g.alchemy.com/v2/eLhVAxz79HO5n2y98mdIl_gMkKSDc3G8';
    }
    if (chainId == wagmi.Chain.polygonAmoy.id) {
      return 'wss://polygon-amoy.g.alchemy.com/v2/DynWKvz6PUFaeZNmlxPXNiV1nK4Ac_2D';
    }
    if (chainId == wagmi.Chain.polygon.id) {
      return 'wss://polygon-mainnet.g.alchemy.com/v2/DynWKvz6PUFaeZNmlxPXNiV1nK4Ac_2D';
    }
    if (chainId == wagmi.Chain.bsc.id) {
      return 'wss://bsc-dataseed.bnbchain.org';
    }
    if (chainId == wagmi.Chain.bscTestnet.id) {
      return 'wss://bsc-testnet.publicnode.com';
    }
    return 'wss://eth-mainnet.alchemyapi.io/v2/DynWKvz6PUFaeZNmlxPXNiV1nK4Ac_2D';
  }
}
