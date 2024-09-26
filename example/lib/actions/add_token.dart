import 'package:example/actions/components/snackbar.dart';
import 'package:example/actions/components/spacer.dart';
import 'package:example/actions/components/tab_header.dart';
import 'package:flutter/material.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart' as wagmi;

class AddTokenExample extends StatefulWidget {
  const AddTokenExample({super.key});

  @override
  State<AddTokenExample> createState() => _AddTokenExampleState();
}

class _AddTokenExampleState extends State<AddTokenExample> {
  final addressController = TextEditingController();
  final symbolController = TextEditingController();
  final decimalsController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    addressController.dispose();
    symbolController.dispose();
    decimalsController.dispose();
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
              methodName: 'Add Token',
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
                labelText: 'Symbol',
              ),
              controller: symbolController,
              maxLines: null,
            ),
            Space.small(),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Decimals',
              ),
              maxLines: null,
              controller: decimalsController,
            ),
            Space.large(),
            ElevatedButton(
              onPressed: () async {
                try {
                  await wagmi.Core.watchAsset(
                    wagmi.WatchAssetParameters(
                      type: 'ERC20',
                      options: wagmi.Asset(
                        address: addressController.text,
                        symbol: symbolController.text.toUpperCase(),
                        decimals: int.parse(decimalsController.text),
                      ),
                    ),
                  );
                  _operationSucceed('Token added');
                } catch (e) {
                  _operationFailed(e.toString());
                }
              },
              child: const Text('Add Token'),
            ),
          ],
        ),
      ),
    );
  }

  void _operationFailed(String? message) {
    debugPrint('Write contract failed : $message');
    context.showFailure(
      'Write contract failed : $message',
    );
  }

  void _operationSucceed(String? message) {
    debugPrint('Write contract succeed : $message');
    context.showSuccess(
      'Write contract succeed : $message',
    );
  }
}
