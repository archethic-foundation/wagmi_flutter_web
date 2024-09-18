import 'dart:convert';

import 'package:example/actions/components/contract_function_preset.dart';
import 'package:example/actions/components/snackbar.dart';
import 'package:example/actions/components/spacer.dart';
import 'package:example/actions/components/tab_header.dart';
import 'package:example/context.dart';
import 'package:flutter/material.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart' as wagmi;

class WriteContractExample extends StatefulWidget {
  const WriteContractExample({super.key});

  @override
  State<WriteContractExample> createState() => _WriteContractExampleState();
}

class _WriteContractExampleState extends State<WriteContractExample> {
  wagmi.Account? account;

  final addressController = TextEditingController();
  final abiController = TextEditingController();
  final argsController = TextEditingController();

  final presets = [
    const ContractFunctionPreset(
      name: '[Sepolia] provisionHTLC',
      address: '0xe983d3dBCB15038dbF2AE69A445A5576B0280d1c',
      args: '''
[
    "0x8ED0ED21B8DBCA44BEC0764B101385D94776176B47DAC91B5FDB7278983F694E",
    9970000000000,
    1726477620,
    "0x000067e615f9538e1649d7669d4029b64c80dd6f46577e0ece87c4aa52cb0056e0ed",
    "0x96A71752DA2F114BCB141DEE1F64FD45E1EB4F70470998BF3188A8DAE476188D",
    "0x2B97182E65E18E0772045A6E451865287B36C9D7C139511DCBD9D75F8DA1D3C7",
    27
]''',
      abi: '''
{
  "inputs": [
    {
      "internalType": "bytes32",
      "name": "_hash",
      "type": "bytes32"
    },
    {
      "internalType": "uint256",
      "name": "_amount",
      "type": "uint256"
    },
    {
      "internalType": "uint256",
      "name": "_lockTime",
      "type": "uint256"
    },
    {
      "internalType": "bytes",
      "name": "_archethicHTLCAddress",
      "type": "bytes"
    },
    {
      "internalType": "bytes32",
      "name": "_r",
      "type": "bytes32"
    },
    {
      "internalType": "bytes32",
      "name": "_s",
      "type": "bytes32"
    },
    {
      "internalType": "uint8",
      "name": "_v",
      "type": "uint8"
    }
  ],
  "name": "provisionHTLC",
  "outputs": [],
  "stateMutability": "nonpayable",
  "type": "function"
}''',
    ),
    const ContractFunctionPreset(
      name: '[Sepolia] approve',
      address: '0xCBBd3374090113732393DAE1433Bc14E5233d5d7',
      args: '''
[
    "0x08Bfc8BA9fD137Fb632F79548B150FE0Be493254",
    1
]''',
      abi: '''
{
  "inputs": [
    {
      "internalType": "address",
      "name": "spender",
      "type": "address"
    },
    {
      "internalType": "uint256",
      "name": "amount",
      "type": "uint256"
    }
  ],
  "name": "approve",
  "outputs": [
    {
      "internalType": "bool",
      "name": "",
      "type": "bool"
    }
  ],
  "stateMutability": "nonpayable",
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
              methodName: 'writeContract',
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
                  final result = await wagmi.Core.writeContract(
                    WagmiContext.main.config,
                    wagmi.WriteContractParameters.legacy(
                      abi: [functionAbi],
                      address: addressController.text,
                      functionName: functionName,
                      args: args,
                    ),
                  );
                  _operationSucceed(result);
                } catch (e) {
                  _operationFailed(e.toString());
                }
              },
              child: const Text('Write contract'),
            ),
          ],
        ),
      ),
    );
  }

  void _operationFailed(String? message) {
    print('Write contract failed : $message');
    context.showFailure(
      'Write contract failed : $message',
    );
  }

  void _operationSucceed(String? message) {
    print('Write contract succeed : $message');
    context.showSuccess(
      'Write contract succeed : $message',
    );
  }
}
