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
    false // email
    [], // social networks
    true, // showWallets
    true, // walletFeatures
);

// Opens the Wallet connection modal.
wagmi.Web3Modal.open();
```


## Available Actions

***Status***

🔴 Not Implemented Yet.\
🟠 Work In Progress.\
✅ Implemented.\
🛠️ Blocking WASM Support. (Needs rework in future.)\
📄 TODO to be managed 


For more details, refer to the [API documentation](https://wagmi.sh/core/api/actions).

| Action Name                    | Status          |
| ------------------------------ | --------------- |
| `call`                         | ✅ Implemented   |
| `connect`                      | 🔴               |
| `deployContract`               | 🔴               |
| `disconnect`                   | 🔴               |
| `estimateFeesPerGas`           | ✅ Implemented   |
| `estimateGas`                  | ✅ Implemented   |
| `estimateMaxPriorityFeePerGas` | ✅ Implemented   |
| `getAccount`                   | ✅ Implemented   |
| `getBalance`                   | ✅ Implemented   |
| `getBlock`                     | ✅ Implemented   |
| `getBlockNumber`               | ✅ Implemented   |
| `getBlockTransactionCount`     | ✅ Implemented   |
| `getBytecode`                  | ✅ Implemented   |
| `getChainId`                   | ✅ Implemented   |
| `getChains`                    | 🟠 In progress   |
| `getClient`                    | 🔴               |
| `getConnections`               | 🔴               |
| `getConnectorClient`           | 🔴               |
| `getConnectors`                | 🔴               |
| `getEnsAddress`                | 🔴               |
| `getEnsAvatar`                 | 🔴               |
| `getEnsName`                   | 🔴               |
| `getEnsResolver`               | 🔴               |
| `getEnsText`                   | 🔴               |
| `getFeeHistory`                | ✅ Implemented   |
| `getGasPrice`                  | ✅ Implemented   |
| `getProof`                     | 🔴               |
| `getPublicClient`              | 🔴               |
| `getStorageAt`                 | 🔴               |
| `getToken`                     | ✅ Implemented   |
| `getTransaction`               | ✅ Implemented   |
| `getTransactionConfirmations`  | ✅ Implemented   |
| `getTransactionCount`          | ✅ Implemented   |
| `getTransactionReceipt`        | ✅ Implemented   |
| `getWalletClient`              | 🔴               |
| `multicall`                    | 🔴               |
| `prepareTransactionRequest`    | 🔴               |
| `readContract`                 | ✅ Implemented   |
| `readContracts`                | ✅ Implemented 🛠️ |
| `reconnect`                    | 🔴               |
| `sendTransaction`              | ✅ Implemented   |
| `signMessage`                  | ✅ Implemented   |
| `signTypedData`                | 🔴               |
| `simulateContract`             | 🔴               |
| `switchAccount`                | 🔴               |
| `switchChain`                  | 🔴               |
| `verifyMessage`                | 🔴               |
| `verifyTypedData`              | 🔴               |
| `waitForTransactionReceipt`    | 🟠 In progress   |
| `watchAccount`                 | 🔴               |
| `watchAsset`                   | 🔴               |
| `watchBlockNumber`             | 🔴               |
| `watchBlocks`                  | 🔴               |
| `watchChainId`                 | ✅ Implemented   |
| `watchClient`                  | 🔴               |
| `watchConnections`             | 🔴               |
| `watchConnectors`              | 🔴               |
| `watchContractEvent`           | ✅ Implemented   |
| `watchPendingTransactions`     | 🔴               |
| `watchPublicClient`            | 🔴               |
| `writeContract`                | ✅ Implemented   |


## Development environment

### Prerequisites

You will need the following tools :
- Flutter >= 3.22.3
- nodejs >= 18

### Compile TypeScript code

Following commands will build `JS` code to embed in the web browser.

```sh
npm install
npm run build // build production lib
npm run dev // build & watch in dev mode
``` 

### Run Flutter project

Then, you can run Flutter project as usual. 

```sh
flutter 
```
