import 'package:example/actions/components/snackbar.dart';
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
  wagmi.Account? account;
  BigInt? gasPrice;
  wagmi.WatchContractEventReturnType? watchContractEventUnsubscribe;

  @override
  void initState() {
    walletConnected = false;
    super.initState();
  }

  bool get isProcessing => watchContractEventUnsubscribe != null;
  int? get accountChainId => account?.chain?.id;

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
            onPressed: isProcessing
                ? null
                : () async {
                    await _initOperation();

                    if (gasPrice == null || account == null) {
                      _operationFailed(
                        'Unable to fetch Account & GasPrice data',
                      );
                      return;
                    }

                    try {
                      await _startWatching();

                      await _writeContract();
                    } catch (error) {
                      _operationFailed(error.toString());
                    }
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
              if (isProcessing)
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Waiting for Approval'),
                      SizedBox(
                        width: 12,
                      ),
                      SizedBox.square(
                        dimension: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  void _operationFailed(String? message) {
    print('Approval failed : $message');
    context.showFailure(
      'Approval failed : $message',
    );

    watchContractEventUnsubscribe?.call();
    setState(() {
      watchContractEventUnsubscribe = null;
    });
  }

  void _operationSucceed(String? message) {
    print('Approval succeed : $message');
    context.showSuccess(
      'Approval succeed : $message',
    );

    watchContractEventUnsubscribe?.call();
    setState(() {
      watchContractEventUnsubscribe = null;
    });
  }

  Future<void> _initOperation() async {
    setState(() {
      walletConnected = null;
      account = null;
      gasPrice = null;
      hashApproval = null;
    });

    final _account = wagmi.Core.getAccount();
    if (_account.chain == null) {
      wagmi.Web3Modal.open();
    }
    setState(() {
      walletConnected = true;
      account = _account;
    });
    final getGasPriceParameters = wagmi.GetGasPriceParameters(
      chainId: _account.chain?.id,
    );
    final getGasPriceReturnType = await wagmi.Core.getGasPrice(
      getGasPriceParameters,
    );

    setState(() {
      gasPrice = getGasPriceReturnType;
    });
  }

  Future<void> _startWatching() async {
    final watchContractEventParameters = wagmi.WatchContractEventParameters(
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
      onError: (error) {
        _operationFailed(error.toString());
      },
      onLogs: (logs) {
        if (!logs.any(
          (log) => log.transactionHash == hashApproval,
        )) return;

        _operationSucceed(
          'Approval succeed for Tx : $hashApproval : ${logs.map((log) => log.toString())}',
        );
      },
    );

    final unwatch = await wagmi.Core.watchContractEvent(
      watchContractEventParameters,
    );
    setState(() {
      watchContractEventUnsubscribe = unwatch;
    });
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

  Future<void> _writeContract() async {
    final writeContractParameters = wagmi.WriteContractParameters.legacy(
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
      account: account!.address,
      functionName: 'approve',
      gas: wagmi.EtherAmount.fromInt(
        wagmi.EtherUnit.wei,
        100000,
      ).getInWei,
      feeValues: wagmi.FeeValuesLegacy(
        gasPrice: gasPrice!,
      ),
      args: [
        '0x08Bfc8BA9fD137Fb632F79548B150FE0Be493254',
        wagmi.EtherAmount.fromInt(
          wagmi.EtherUnit.wei,
          1,
        ).getInWei,
      ],
      chainId: 11155111,
    );

    final writeContractReturnType = await wagmi.Core.writeContract(
      writeContractParameters,
    );

    setState(() {
      hashApproval = writeContractReturnType;
    });
  }
}
