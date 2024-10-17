import 'package:example/actions/components/tab_header.dart';
import 'package:flutter/material.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart' as wagmi;

class SwitchAccountExample extends StatefulWidget {
  const SwitchAccountExample({super.key});

  @override
  State<SwitchAccountExample> createState() => _SwitchAccountExampleState();
}

class _SwitchAccountExampleState extends State<SwitchAccountExample> {
  List<wagmi.Connection> connections1 = <wagmi.Connection>[];
  List<wagmi.Connection> connections2 = <wagmi.Connection>[];
  wagmi.Account? account;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          const TabHeader(
            methodName: 'switchAccount',
          ),
          const ElevatedButton(
            onPressed: wagmi.Web3Modal.open,
            child: Text('Connect Wallet'),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async {
              connections1 = wagmi.Core.getConnections();
              account = wagmi.Core.getAccount();
              setState(() {});
            },
            child: const Text('Get Connections 1'),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async {
              connections2 = wagmi.Core.getConnections();
              account = wagmi.Core.getAccount();
              setState(() {});
            },
            child: const Text('Get Connections 2'),
          ),
          const SizedBox(
            height: 10,
          ),
          if (connections2.length > 1)
            ElevatedButton(
              onPressed: () async {
                await wagmi.Core.switchAccount(
                  wagmi.SwitchAccountParameters(
                    connector: connections2[0].connector,
                  ),
                );
                account = wagmi.Core.getAccount();
                setState(() {});
              },
              child: const Text('Switch Account 1 -> 2'),
            ),
          const SizedBox(
            height: 10,
          ),
          if (account != null) Text('Current Account ${account!.address}'),
          if (connections1.isNotEmpty) _connectionInfos(connections1),
          if (connections1.isNotEmpty) _connectionInfos(connections2),
        ],
      ),
    );
  }

  Widget _connectionInfos(List<wagmi.Connection> connections) {
    return Expanded(
      child: ListView.builder(
        itemCount: connections.length,
        itemBuilder: (context, index) {
          final connection = connections[index];
          return Card(
            child: ListTile(
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Accounts: ${connection.accounts.join(', ')}'),
                  Text('Chain ID: ${connection.chainId}'),
                  Text(
                    'Connector Name: ${connection.connector.name ?? 'N/A'}',
                  ),
                  Text(
                    'Connector Type: ${connection.connector.type ?? 'N/A'}',
                  ),
                  Text(
                    'Supports Simulation: ${connection.connector.supportsSimulation ?? false}',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
