import 'package:example/actions/components/tab_header.dart';
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
  wagmi.WatchContractEventReturnType? watchContractEventUnsubscribe;

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
            methodName: 'writeContracts',
          ),
          _howto(),
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
                  wagmi.EtherUnit.wei,
                  1500000,
                ).getInWei,
                feeValues: wagmi.FeeValuesLegacy(
                  gasPrice: getGasPriceReturnType,
                ),
                args: [
                  '0x08Bfc8BA9fD137Fb632F79548B150FE0Be493254',
                  BigInt.from(498500000000000),
                ],
                chainId: 11155111,
              );

              final watchContractEventParameters =
                  wagmi.WatchContractEventParameters(
                abi: [
                  {
                    'anonymous': false,
                    'inputs': [
                      {
                        'indexed': true,
                        'internalType': 'address',
                        'name': 'owner',
                        'type': 'address',
                      },
                      {
                        'indexed': true,
                        'internalType': 'address',
                        'name': 'spender',
                        'type': 'address',
                      },
                      {
                        'indexed': false,
                        'internalType': 'uint256',
                        'name': 'value',
                        'type': 'uint256',
                      }
                    ],
                    'name': 'Approval',
                    'type': 'event',
                  },
                ],
                address: '0xCBBd3374090113732393DAE1433Bc14E5233d5d7',
                eventName: 'Approval',
                onError: (error) => print('watchContractEventt ERROR $error'),
                onLogs: (logs, prevLogs) =>
                    print('watchContractEventt LOGS $logs, $prevLogs'),
              );

              final unwatch = await wagmi.Core.watchContractEvent(
                watchContractEventParameters,
              );

              final writeContractReturnType =
                  await wagmi.Core.writeContract(writeContractParameters);

              setState(() {
                hashApproval = writeContractReturnType;
                watchContractEventUnsubscribe = unwatch;
                watchContractEventUnsubscribe?.call();
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

  Widget _howto() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Text('Click on approve function button to test the method'),
          Text('The ABI used is ERC20 approve function'),
          Text(
            'The address of the ERC20 token is 0xCBBd3374090113732393DAE1433Bc14E5233d5d7 available on Sepolia',
          ),
          Text(
            'The approve method target a contract (0x08Bfc8BA9fD137Fb632F79548B150FE0Be493254) and request 1500000 GWei',
          ),
        ],
      ),
    );
  }
}
