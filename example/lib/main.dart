import 'package:flutter/material.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart' as wagmi;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var chainId = 0;
  // Token? token;

  wagmi.GetBalanceReturnType? balance;
  wagmi.Account? account;
  String? signedMessage;
  String? hashApproval;
  String? token;
  final tokenAddressToSearch = '0x8a3d77e9d6968b780564936d15B09805827C21fa';
  final messageToSign = 'Hello World';

  @override
  void initState() {
    Future(
      () async {
        await wagmi.init();

        wagmi.Web3Modal.init(
          'f642e3f39ba3e375f8f714f18354faa4',
          [wagmi.Chain.ethereum.name!, wagmi.Chain.sepolia.name],
          true,
          true,
          wagmi.Web3ModalMetadata(
            name: 'Web3Modal',
            description: 'Web3Modal Example',
            // url must match your domain & subdomain
            url: 'https://web3modal.com',
            icons: ['https://avatars.githubusercontent.com/u/37784886'],
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Web3Modal')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  wagmi.Web3Modal.open();
                },
                child: const Text('Connect Wallet'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    signedMessage = null;
                    account = wagmi.Core.getAccount();
                    chainId = wagmi.Core.getChainId();
                  });
                },
                child: const Text('Get Account info'),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('account address: ${account?.address ?? 'unknown'}'),
              Text('account status:  ${account?.status ?? 'unknown'}'),
              Text('account chain ID: ${account?.chain?.id ?? 'unknown'}'),
              Text('Chain ID: $chainId'),
              ElevatedButton(
                onPressed: () async {
                  final balanceResult = await wagmi.Core.getBalance(
                    wagmi.GetBalanceParameters(
                      address: account?.address ?? '',
                    ),
                  );
                  setState(() {
                    balance = balanceResult;
                  });
                },
                child: const Text('Get Balance'),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'balance : ${balance?.value ?? 'unknown'} ${balance?.symbol}',
              ),
              ElevatedButton(
                onPressed: () async {
                  final getTokenParameters = wagmi.GetTokenParameters(
                    address: tokenAddressToSearch,
                    chainId: account!.chain!.id,
                  );
                  final getTokenReturnType =
                      await wagmi.Core.getToken(getTokenParameters);
                  setState(() {
                    token =
                        '${getTokenReturnType.name} ${getTokenReturnType.symbol}';
                  });
                },
                child: Text(
                  'Get Token info ($tokenAddressToSearch / ${account?.chain!.id})',
                ),
              ),
              if (token != null) Text('token: $token'),
              const SizedBox(
                height: 10,
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              // ElevatedButton(
              //   onPressed: () async {
              //     signedMessage = await signMessage(messageToSign);
              //     setState(() {});
              //   },
              //   child: Text('Personal sign ($messageToSign)'),
              // ),
              // if (signedMessage != null)
              //   Column(
              //     children: [
              //       Text('message signed: $signedMessage'),
              //     ],
              //   ),
              // ElevatedButton(
              //   onPressed: () async {
              //     await call(
              //         '0xCBBd3374090113732393DAE1433Bc14E5233d5d7',
              //         abiERC20,
              //         'approve',
              //         [
              //           '0x08Bfc8BA9fD137Fb632F79548B150FE0Be493254',
              //           100000000,
              //         ],
              //         1500000,
              //         chainId);

              //     setState(() {});
              //   },
              //   child: const Text('Call approve'),
              // ),
              // if (hashApproval != null)
              //   Column(
              //     children: [
              //       Text('Hash approval: $hashApproval'),
              //     ],
              //   ),
            ],
          ),
        ),
      ),
    );
  }

  // void openModal() {
  //   window.openModal();
  // }

  // void closeModal() {
  //   window.closeModal();
  // }

  // Account getAccount() {
  //   return window.getAccount();
  // }

  // int getChainId() {
  //   return window.getChainId();
  // }

  // Future<Token?> getToken(String address, int chainId) async {
  //   try {
  //     Token token = await window.getToken(address.toJS, chainId).toDart;
  //     return token;
  //   } catch (e) {
  //     print("Error fetching token: $e");
  //     return null;
  //   }
  // }

  // Future<String?> signMessage(String message) async {
  //   try {
  //     final account = getAccount();
  //     final accountAddress = account.address;

  //     if (accountAddress == null || accountAddress.isEmpty) {
  //       print("No valid account address found.");
  //       return null;
  //     }

  //     final signedMessage =
  //         await window.signMessage(message.toJS, accountAddress.toJS).toDart;
  //     return signedMessage.toString();
  //   } catch (e) {
  //     print("Error sign message: $e");
  //     return null;
  //   }
  // }

  // Future<String?> call(String contractAddress, String contractABI,
  //     String functionName, List<dynamic> args, int gaz, int chainId) async {
  //   try {
  //     final result = await window
  //         .writeContract(contractAddress.toJS, contractABI.toJS,
  //             functionName.toJS, args.jsify()!, gaz.toJS, chainId.toJS)
  //         .toDart;
  //     return result.hash;
  //   } catch (e) {
  //     print("Error call: $e");
  //     return null;
  //   }
  // }
}

// const abiERC20 = '''[
//     {
//       "inputs": [
//         {
//           "internalType": "string",
//           "name": "name_",
//           "type": "string"
//         },
//         {
//           "internalType": "string",
//           "name": "symbol_",
//           "type": "string"
//         }
//       ],
//       "stateMutability": "nonpayable",
//       "type": "constructor"
//     },
//     {
//       "anonymous": false,
//       "inputs": [
//         {
//           "indexed": true,
//           "internalType": "address",
//           "name": "owner",
//           "type": "address"
//         },
//         {
//           "indexed": true,
//           "internalType": "address",
//           "name": "spender",
//           "type": "address"
//         },
//         {
//           "indexed": false,
//           "internalType": "uint256",
//           "name": "value",
//           "type": "uint256"
//         }
//       ],
//       "name": "Approval",
//       "type": "event"
//     },
//     {
//       "anonymous": false,
//       "inputs": [
//         {
//           "indexed": true,
//           "internalType": "address",
//           "name": "from",
//           "type": "address"
//         },
//         {
//           "indexed": true,
//           "internalType": "address",
//           "name": "to",
//           "type": "address"
//         },
//         {
//           "indexed": false,
//           "internalType": "uint256",
//           "name": "value",
//           "type": "uint256"
//         }
//       ],
//       "name": "Transfer",
//       "type": "event"
//     },
//     {
//       "inputs": [
//         {
//           "internalType": "address",
//           "name": "owner",
//           "type": "address"
//         },
//         {
//           "internalType": "address",
//           "name": "spender",
//           "type": "address"
//         }
//       ],
//       "name": "allowance",
//       "outputs": [
//         {
//           "internalType": "uint256",
//           "name": "",
//           "type": "uint256"
//         }
//       ],
//       "stateMutability": "view",
//       "type": "function"
//     },
//     {
//       "inputs": [
//         {
//           "internalType": "address",
//           "name": "spender",
//           "type": "address"
//         },
//         {
//           "internalType": "uint256",
//           "name": "amount",
//           "type": "uint256"
//         }
//       ],
//       "name": "approve",
//       "outputs": [
//         {
//           "internalType": "bool",
//           "name": "",
//           "type": "bool"
//         }
//       ],
//       "stateMutability": "nonpayable",
//       "type": "function"
//     },
//     {
//       "inputs": [
//         {
//           "internalType": "address",
//           "name": "account",
//           "type": "address"
//         }
//       ],
//       "name": "balanceOf",
//       "outputs": [
//         {
//           "internalType": "uint256",
//           "name": "",
//           "type": "uint256"
//         }
//       ],
//       "stateMutability": "view",
//       "type": "function"
//     },
//     {
//       "inputs": [],
//       "name": "decimals",
//       "outputs": [
//         {
//           "internalType": "uint8",
//           "name": "",
//           "type": "uint8"
//         }
//       ],
//       "stateMutability": "view",
//       "type": "function"
//     },
//     {
//       "inputs": [
//         {
//           "internalType": "address",
//           "name": "spender",
//           "type": "address"
//         },
//         {
//           "internalType": "uint256",
//           "name": "subtractedValue",
//           "type": "uint256"
//         }
//       ],
//       "name": "decreaseAllowance",
//       "outputs": [
//         {
//           "internalType": "bool",
//           "name": "",
//           "type": "bool"
//         }
//       ],
//       "stateMutability": "nonpayable",
//       "type": "function"
//     },
//     {
//       "inputs": [
//         {
//           "internalType": "address",
//           "name": "spender",
//           "type": "address"
//         },
//         {
//           "internalType": "uint256",
//           "name": "addedValue",
//           "type": "uint256"
//         }
//       ],
//       "name": "increaseAllowance",
//       "outputs": [
//         {
//           "internalType": "bool",
//           "name": "",
//           "type": "bool"
//         }
//       ],
//       "stateMutability": "nonpayable",
//       "type": "function"
//     },
//     {
//       "inputs": [],
//       "name": "name",
//       "outputs": [
//         {
//           "internalType": "string",
//           "name": "",
//           "type": "string"
//         }
//       ],
//       "stateMutability": "view",
//       "type": "function"
//     },
//     {
//       "inputs": [],
//       "name": "symbol",
//       "outputs": [
//         {
//           "internalType": "string",
//           "name": "",
//           "type": "string"
//         }
//       ],
//       "stateMutability": "view",
//       "type": "function"
//     },
//     {
//       "inputs": [],
//       "name": "totalSupply",
//       "outputs": [
//         {
//           "internalType": "uint256",
//           "name": "",
//           "type": "uint256"
//         }
//       ],
//       "stateMutability": "view",
//       "type": "function"
//     },
//     {
//       "inputs": [
//         {
//           "internalType": "address",
//           "name": "to",
//           "type": "address"
//         },
//         {
//           "internalType": "uint256",
//           "name": "amount",
//           "type": "uint256"
//         }
//       ],
//       "name": "transfer",
//       "outputs": [
//         {
//           "internalType": "bool",
//           "name": "",
//           "type": "bool"
//         }
//       ],
//       "stateMutability": "nonpayable",
//       "type": "function"
//     },
//     {
//       "inputs": [
//         {
//           "internalType": "address",
//           "name": "from",
//           "type": "address"
//         },
//         {
//           "internalType": "address",
//           "name": "to",
//           "type": "address"
//         },
//         {
//           "internalType": "uint256",
//           "name": "amount",
//           "type": "uint256"
//         }
//       ],
//       "name": "transferFrom",
//       "outputs": [
//         {
//           "internalType": "bool",
//           "name": "",
//           "type": "bool"
//         }
//       ],
//       "stateMutability": "nonpayable",
//       "type": "function"
//     }
//   ] ''';
