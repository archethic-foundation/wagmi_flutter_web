# Wagmi SDK wrapper for Flutter Web

## Features

Exposes [Wagmi](https://wagmi.sh/) sdk to your Flutter web project.

Wagmi provides developers with intuitive building blocks to build their Ethereum apps.

## Getting started

In `pubspec.yaml` file, add the `wagmi_flutter_web` dependency :

```yaml
dependencies:
  wagmi_flutter_web:
```


## Usage


```dart
import 'package:wagmi_flutter_web/wagmi.dart' as wagmi;

// Load and initialize Wagmi lib.
await wagmi.init();

// Initializes Web3Modal
wagmi.Web3Modal.init(
    'f642e3f39ba3e375f8f714f18354faa4',
    [wagmi.Chain.ethereum.name!, wagmi.Chain.sepolia.name!],
    true,
    true,
    wagmi.Web3ModalMetadata(
        name: 'Web3Modal',
        description: 'Web3Modal Example',
        url: 'https://web3modal.com',
        icons: ['https://avatars.githubusercontent.com/u/37784886'],
    ),
);

// Opens the Wallet connection modal.
wagmi.Web3Modal.open();
```


## Available Actions

For more details, refer to the [API documentation](https://wagmi.sh/core/api/actions).

| Action Name                    | Status            |
| ------------------------------ | ----------------- |
| `call`                         | 🔴 Not Implemented |
| `connect`                      | 🔴 Not Implemented |
| `deployContract`               | 🔴 Not Implemented |
| `disconnect`                   | 🔴 Not Implemented |
| `estimateFeesPerGas`           | 🔴 Not Implemented |
| `estimateGas`                  | 🟠 In progress     |
| `estimateMaxPriorityFeePerGas` | 🔴 Not Implemented |
| `getAccount`                   | 🟢 Implemented     |
| `getBalance`                   | 🟢 Implemented     |
| `getBlock`                     | 🔴 Not Implemented |
| `getBlockNumber`               | 🟠 In progress     |
| `getBlockTransactionCount`     | 🔴 Not Implemented |
| `getBytecode`                  | 🔴 Not Implemented |
| `getChainId`                   | 🟢 Implemented     |
| `getChains`                    | 🟠 In progress     |
| `getClient`                    | 🔴 Not Implemented |
| `getConnections`               | 🔴 Not Implemented |
| `getConnectorClient`           | 🔴 Not Implemented |
| `getConnectors`                | 🔴 Not Implemented |
| `getEnsAddress`                | 🔴 Not Implemented |
| `getEnsAvatar`                 | 🔴 Not Implemented |
| `getEnsName`                   | 🔴 Not Implemented |
| `getEnsResolver`               | 🔴 Not Implemented |
| `getEnsText`                   | 🔴 Not Implemented |
| `getFeeHistory`                | 🔴 Not Implemented |
| `getGasPrice`                  | 🔴 Not Implemented |
| `getProof`                     | 🔴 Not Implemented |
| `getPublicClient`              | 🔴 Not Implemented |
| `getStorageAt`                 | 🔴 Not Implemented |
| `getToken`                     | 🟠 In progress     |
| `getTransaction`               | 🔴 Not Implemented |
| `getTransactionConfirmations`  | 🔴 Not Implemented |
| `getTransactionCount`          | 🟢 Implemented     |
| `getTransactionReceipt`        | 🔴 Not Implemented |
| `getWalletClient`              | 🔴 Not Implemented |
| `multicall`                    | 🔴 Not Implemented |
| `prepareTransactionRequest`    | 🔴 Not Implemented |
| `readContract`                 | 🟢 Implemented     |
| `readContracts`                | 🔴 Not Implemented |
| `reconnect`                    | 🔴 Not Implemented |
| `sendTransaction`              | 🔴 Not Implemented |
| `signMessage`                  | 🟢 Implemented     |
| `signTypedData`                | 🔴 Not Implemented |
| `simulateContract`             | 🔴 Not Implemented |
| `switchAccount`                | 🔴 Not Implemented |
| `switchChain`                  | 🔴 Not Implemented |
| `verifyMessage`                | 🔴 Not Implemented |
| `verifyTypedData`              | 🔴 Not Implemented |
| `waitForTransactionReceipt`    | 🔴 Not Implemented |
| `watchAccount`                 | 🔴 Not Implemented |
| `watchAsset`                   | 🔴 Not Implemented |
| `watchBlockNumber`             | 🔴 Not Implemented |
| `watchBlocks`                  | 🔴 Not Implemented |
| `watchChainId`                 | 🔴 Not Implemented |
| `watchClient`                  | 🔴 Not Implemented |
| `watchConnections`             | 🔴 Not Implemented |
| `watchConnectors`              | 🔴 Not Implemented |
| `watchContractEvent`           | 🔴 Not Implemented |
| `watchPendingTransactions`     | 🔴 Not Implemented |
| `watchPublicClient`            | 🔴 Not Implemented |
| `writeContract`                | 🟠 In progress     |



