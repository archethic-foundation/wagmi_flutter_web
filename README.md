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
