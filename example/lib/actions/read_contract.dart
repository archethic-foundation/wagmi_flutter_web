import 'dart:convert';

import 'package:example/actions/components/contract_function_preset.dart';
import 'package:example/actions/components/snackbar.dart';
import 'package:example/actions/components/spacer.dart';
import 'package:example/actions/components/tab_header.dart';
import 'package:example/context.dart';
import 'package:flutter/material.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart' as wagmi;

class ReadContractExample extends StatefulWidget {
  const ReadContractExample({super.key});

  @override
  State<ReadContractExample> createState() => _ReadContractExampleState();
}

class _ReadContractExampleState extends State<ReadContractExample> {
  wagmi.Account? account;

  final addressController = TextEditingController();
  final abiController = TextEditingController();
  final argsController = TextEditingController();

  final presets = [
    const ContractFunctionPreset(
      name: '[Amoy] Total supply (bigint)',
      address: '0x2237605711227D0254Ccb33CE70767871Cf1CCc3',
      args: '[]',
      abi: '''
{
  "inputs": [],
  "name": "totalSupply",
  "outputs": [
    {"internalType": "uint256", "name": "", "type": "uint256"}
  ],
  "stateMutability": "view",
  "type": "function"
}''',
    ),
    const ContractFunctionPreset(
      name: '[Amoy] Token decimals (uint8)',
      address: '0x2237605711227D0254Ccb33CE70767871Cf1CCc3',
      args: '[]',
      abi: '''
{
  "inputs": [],
  "name": "decimals",
  "outputs": [
    {
      "internalType": "uint8",
      "name": "",
      "type": "uint8"
    }
  ],
  "stateMutability": "view",
  "type": "function"
}''',
    ),
    const ContractFunctionPreset(
      name: '[Sepolia] getSwapsByOwner',
      address: '0xe983d3dBCB15038dbF2AE69A445A5576B0280d1c',
      args: '''
[
    "0xAD1F4dF14DC3eb4094092CF44b713067431813B8"
]''',
      abi: '''
{
  "inputs": [
    {
      "internalType": "address",
      "name": "owner",
      "type": "address"
    }
  ],
  "name": "getSwapsByOwner",
  "outputs": [
    {
      "components": [
        {
          "internalType": "address",
          "name": "evmAddress",
          "type": "address"
        },
        {
          "internalType": "bytes",
          "name": "archethicAddress",
          "type": "bytes"
        },
        {
          "internalType": "enum IPool.SwapType",
          "name": "swapType",
          "type": "uint8"
        }
      ],
      "internalType": "struct IPool.Swap[]",
      "name": "swaps",
      "type": "tuple[]"
    }
  ],
  "stateMutability": "view",
  "type": "function"
}''',
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    addressController.dispose();
    abiController.dispose();
    argsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TabHeader(
              methodName: 'readContract',
            ),
            Space.large(),
            ContractFunctionPresetSelector(
              onSelect: (ContractFunctionPreset preset) {
                abiController.text = preset.abi;
                addressController.text = preset.address;
                argsController.text = preset.args;
              },
              presets: presets,
            ),
            Space.large(),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Contract Address',
              ),
              controller: addressController,
            ),
            Space.small(),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Arguments',
              ),
              controller: argsController,
              maxLines: null,
            ),
            Space.small(),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Contract ABI',
              ),
              maxLines: null,
              controller: abiController,
            ),
            Space.large(),
            ElevatedButton(
              onPressed: () async {
                try {
                  final functionAbi = jsonDecode(abiController.text);
                  final functionName = functionAbi['name'];
                  final args = jsonDecode(argsController.text);
                  final result = await wagmi.Core.readContract(
                    WagmiContext.main.config,
                    wagmi.ReadContractParameters(
                      abi: [functionAbi],
                      address: addressController.text,
                      functionName: functionName,
                      args: args,
                    ),
                  );
                  _operationSucceed(result.toString());
                } catch (e) {
                  _operationFailed(e.toString());
                }
              },
              child: const Text('Read contract'),
            ),
          ],
        ),
      ),
    );
  }

  void _operationFailed(String? message) {
    debugPrint('Read contract failed : $message');
    context.showFailure(
      'Read contract failed : $message',
    );
  }

  void _operationSucceed(String? message) {
    debugPrint('Read contract succeed : $message');
    context.showSuccess(
      'Read contract succeed : $message',
    );
  }
}
