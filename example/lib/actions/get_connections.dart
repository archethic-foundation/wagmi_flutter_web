import 'package:example/actions/components/tab_header.dart';
import 'package:flutter/material.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart' as wagmi;

class GetConnectionsExample extends StatefulWidget {
  const GetConnectionsExample({super.key});

  @override
  State<GetConnectionsExample> createState() => _GetConnectionsExampleState();
}

class _GetConnectionsExampleState extends State<GetConnectionsExample> {
  List<wagmi.Connection> connections = <wagmi.Connection>[];
  bool callDone = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          const TabHeader(
            methodName: 'getConnections',
          ),
          ElevatedButton(
            onPressed: () async {
              connections = wagmi.Core.getConnections();
              setState(() {
                callDone = true;
              });
            },
            child: const Text('Get Connections'),
          ),
          const SizedBox(
            height: 10,
          ),
          if (connections.isNotEmpty)
            Expanded(
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
            )
          else if (callDone)
            const Text('No connections available.'),
        ],
      ),
    );
  }
}
