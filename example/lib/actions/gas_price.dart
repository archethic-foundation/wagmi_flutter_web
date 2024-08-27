import 'package:example/actions/components/tab_header.dart';
import 'package:flutter/material.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart' as wagmi;

class GasPriceExample extends StatefulWidget {
  const GasPriceExample({super.key});

  @override
  State<GasPriceExample> createState() => _GasPriceExampleState();
}

class _GasPriceExampleState extends State<GasPriceExample> {
  bool? walletConnected;
  int? accountChainId;
  BigInt? gasPrice;

  @override
  void initState() {
    walletConnected = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          const TabHeader(
            methodName: 'getGasPrice',
          ),
          ElevatedButton(
            onPressed: () async {
              final account = wagmi.Core.getAccount();
              if (account.chain == null) {
                wagmi.Web3Modal.open();
              }
              setState(() {
                walletConnected = true;
                accountChainId = account.chain?.id;
              });
              final getGasPriceParameters = wagmi.GetGasPriceParameters(
                chainId: account.chain!.id,
              );
              final getGasPriceReturnType =
                  await wagmi.Core.getGasPrice(getGasPriceParameters);
              setState(() {
                gasPrice = getGasPriceReturnType;
              });
            },
            child: const Text('Get Gas Price'),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              if (walletConnected != null)
                Text('Wallet connected: $walletConnected'),
              if (accountChainId != null)
                Text('Account chain ID: $accountChainId'),
              if (walletConnected != null &&
                  walletConnected! == true &&
                  accountChainId != null &&
                  gasPrice == null)
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Gas Price: '),
                    SizedBox(
                      width: 10,
                      height: 10,
                      child: CircularProgressIndicator(
                        strokeWidth: 1,
                      ),
                    ),
                  ],
                ),
              if (gasPrice != null) Text('Gas Price: $gasPrice'),
            ],
          ),
        ],
      ),
    );
  }
}
