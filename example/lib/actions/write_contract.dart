import 'package:flutter/material.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart' as wagmi;

class WriteContractsExample extends StatefulWidget {
  const WriteContractsExample({super.key});

  @override
  State<WriteContractsExample> createState() => _WriteContractsExampleState();
}

class _WriteContractsExampleState extends State<WriteContractsExample> {
  String? hashApproval;
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
          ElevatedButton(
            onPressed: () async {
              setState(() {
                walletConnected = null;
                accountChainId = null;
                gasPrice = null;
                hashApproval = null;
              });

              final account = wagmi.Core.getAccount();
              if (account.chain == null) {
                wagmi.Web3Modal.open();
              }
              setState(() {
                walletConnected = true;
                accountChainId = account.chain?.id;
              });
              final getGasPriceParameters = wagmi.GetGasPriceParameters(
                chainId: account.chain?.id,
              );
              final getGasPriceReturnType =
                  await wagmi.Core.getGasPrice(getGasPriceParameters);

              setState(() {
                gasPrice = getGasPriceReturnType;
              });

              final writeContractParameters =
                  wagmi.WriteContractParameters.legacy(
                abi: [
                  {
                    'inputs': [
                      {
                        'internalType': 'address',
                        'name': 'spender',
                        'type': 'address',
                      },
                      {
                        'internalType': 'uint256',
                        'name': 'amount',
                        'type': 'uint256',
                      }
                    ],
                    'name': 'approve',
                    'outputs': [
                      {
                        'internalType': 'bool',
                        'name': '',
                        'type': 'bool',
                      },
                    ],
                    'stateMutability': 'nonpayable',
                    'type': 'function',
                  },
                ],
                address: '0xCBBd3374090113732393DAE1433Bc14E5233d5d7',
                account: account.address,
                functionName: 'approve',
                gas: wagmi.EtherAmount.fromInt(
                  wagmi.EtherUnit.gwei,
                  1500000,
                ).getInWei,
                feeValues: wagmi.FeeValuesLegacy(
                  gasPrice: gasPrice ?? BigInt.zero,
                ),
                args: [
                  '0x08Bfc8BA9fD137Fb632F79548B150FE0Be493254',
                  BigInt.from(498500000000000),
                ],
                chainId: 11155111,
              );

              final writeContractReturnType =
                  await wagmi.Core.writeContract(writeContractParameters);

              setState(() {
                hashApproval = writeContractReturnType.hash;
              });
            },
            child: const Text('Call approve function'),
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
                const SizedBox(
                  width: 10,
                  height: 10,
                  child: CircularProgressIndicator(
                    strokeWidth: 1,
                  ),
                ),
              if (gasPrice != null) Text('Gas Price: $gasPrice'),
              if (hashApproval != null) Text('Hash approval: $hashApproval'),
            ],
          ),
        ],
      ),
    );
  }
}
