import 'package:flutter/material.dart';

class ContractFunctionPreset {
  const ContractFunctionPreset({
    required this.name,
    required this.abi,
    required this.address,
    required this.args,
  });

  final String name;
  final String abi;
  final String address;
  final String args;
}

class ContractFunctionPresetSelector extends StatefulWidget {
  const ContractFunctionPresetSelector({
    super.key,
    required this.presets,
    required this.onSelect,
  });

  final List<ContractFunctionPreset> presets;
  final Function(ContractFunctionPreset preset) onSelect;

  @override
  State<ContractFunctionPresetSelector> createState() =>
      _ContractFunctionPresetSelectorState();
}

class _ContractFunctionPresetSelectorState
    extends State<ContractFunctionPresetSelector> {
  ContractFunctionPreset? selectedPreset;

  @override
  void initState() {
    _select(widget.presets.first);
    super.initState();
  }

  void _select(ContractFunctionPreset preset) {
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
