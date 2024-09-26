import 'package:flutter/material.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart' as wagmi;

typedef Callback = void Function(dynamic value);

// ignore: must_be_immutable
class SwitchChainDialog extends StatefulWidget {
  SwitchChainDialog({
    super.key,
    required this.callback,
    required this.chains,
    required this.currentChain,
  });
  Callback callback;
  List<wagmi.Chain> chains;
  int currentChain;

  @override
  State<SwitchChainDialog> createState() => _SwitchChainDialogState();
}

class _SwitchChainDialogState extends State<SwitchChainDialog> {
  double contentFontSize = 11;
  @override
  void initState() {
    super.initState();
    // remove current chain from chains list
    widget.chains.removeWhere((element) => element.id == widget.currentChain);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context1) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 350,
            margin: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                const Text(
                  'Select Chain to Switch',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // show current chain
                Text(
                  'Current Chain: ${widget.currentChain}',
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Switch to:',
                ),
                Container(
                  width: 250,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: widget.chains.length,
                    itemBuilder: (context, index) {
                      final chain = widget.chains[index];

                      // chain with radio button
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Radio<int>(
                            value: chain.id,
                            groupValue: widget.currentChain,
                            onChanged: (int? value) {
                              if (value != null) {
                                // ignore: void_checks
                                return widget.callback(value);
                              }
                            },
                          ),
                          Container(
                            width: 180,
                            margin: const EdgeInsets.only(top: 8),
                            child: Text(
                              '${chain.name} (${chain.id})',
                              maxLines: 120,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: contentFontSize,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // close button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Close'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
