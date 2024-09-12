import 'dart:convert';

import 'package:example/actions/components/snackbar.dart';
import 'package:example/actions/components/spacer.dart';
import 'package:example/actions/components/tab_header.dart';
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

  final presets = [
    const Preset(
      name: '[Amoy] Total supply (bigint)',
      address: '0x2237605711227D0254Ccb33CE70767871Cf1CCc3',
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
    const Preset(
      name: '[Amoy] Token decimals (uint8)',
      address: '0x2237605711227D0254Ccb33CE70767871Cf1CCc3',
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
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    addressController.dispose();
    abiController.dispose();
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
            _PresetSelector(
              onSelect: (Preset preset) {
                abiController.text = preset.abi;
                addressController.text = preset.address;
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

                  final result = await wagmi.Core.readContract(
                    wagmi.ReadContractParameters(
                      abi: [functionAbi],
                      address: addressController.text,
                      functionName: functionName,
                      args: [],
                    ),
                  );
                  _operationSucceed(result);
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
    print('Read contract failed : $message');
    context.showFailure(
      'Read contract failed : $message',
    );
  }

  void _operationSucceed(String? message) {
    print('Read contract succeed : $message');
    context.showSuccess(
      'Read contract succeed : $message',
    );
  }
}

class Preset {
  const Preset({
    required this.name,
    required this.abi,
    required this.address,
  });

  final String name;
  final String abi;
  final String address;
}

class _PresetSelector extends StatefulWidget {
  const _PresetSelector({
    super.key,
    required this.presets,
    required this.onSelect,
  });

  final List<Preset> presets;
  final Function(Preset preset) onSelect;

  @override
  State<_PresetSelector> createState() => _PresetSelectorState();
}

class _PresetSelectorState extends State<_PresetSelector> {
  Preset? selectedPreset;

  @override
  void initState() {
    _select(widget.presets.first);
    super.initState();
  }

  void _select(Preset preset) {
    widget.onSelect(preset);
    setState(() {
      selectedPreset = preset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: widget.presets
          .map(
            (preset) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ChoiceChip(
                label: Text(preset.name),
                selected: preset == selectedPreset,
                onSelected: (selected) {
                  if (selected) _select(preset);
                },
              ),
            ),
          )
          .toList(),
    );
  }
}
