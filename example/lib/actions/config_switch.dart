import 'package:flutter/material.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart' as wagmi;

class ConfigSwitchExample extends StatelessWidget {
  const ConfigSwitchExample({
    super.key,
    required this.chainId,
  });

  final int? chainId;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetBlockNumberSection(
          title: '[With WSS Transport] Get block number',
          chainId: chainId,
        ),
        GetBlockNumberSection(
          title: '[Without Transport] Get block number',
          chainId: chainId,
        ),
      ],
    );
  }
}

class GetBlockNumberSection extends StatefulWidget {
  const GetBlockNumberSection({
    super.key,
    required this.title,
    required this.chainId,
  });

  final int? chainId;
  final String title;
  @override
  State<GetBlockNumberSection> createState() => _GetBlockNumberSectionState();
}

class _GetBlockNumberSectionState extends State<GetBlockNumberSection> {
  BigInt? blockNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          child: Text(widget.title),
          onPressed: () async {
            final getBlockNumberParameters = wagmi.GetBlockNumberParameters(
              chainId: widget.chainId,
              cacheTime: 4000,
            );
            final getBlockNumberReturnType = await wagmi.Core.getBlockNumber(
              getBlockNumberParameters,
            );
            setState(() {
              blockNumber = getBlockNumberReturnType;
            });
          },
        ),
        if (blockNumber != null)
          Text(
            'blockNumber : $blockNumber',
          ),
      ],
    );
  }
}
