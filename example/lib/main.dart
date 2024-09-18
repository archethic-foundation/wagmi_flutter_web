import 'dart:convert';
import 'dart:math';

import 'package:example/actions/config_switch.dart';
import 'package:example/actions/gas_price.dart';
import 'package:example/actions/read_contract.dart';
import 'package:example/actions/write_contract.dart';
import 'package:example/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart' as wagmi;
import 'package:webthree/crypto.dart';
import 'package:webthree/webthree.dart';

void main() {
  runApp(const MaterialApp(title: 'Web3Modal Example', home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int chainId = 0;
  wagmi.GetBalanceReturnType? balance, tokenBalance;
  wagmi.Account? account;
  List<wagmi.Chain> chains = [];
  BigInt? blockNumber;
  String? signedMessage;
  wagmi.WatchChainIdReturnType? watchChainIdUnsubscribe;
  wagmi.WatchAccountReturnType? watchAccountUnsubscribe;
  wagmi.WatchConnectionsReturnType? watchConnectionsUnsubscribe;
  String? watchChainIdInfo;
  int? gasEstimation;
  int? transactionCount;
  final tokenAddressToSearch = '0x8a3d77e9d6968b780564936d15B09805827C21fa';
  final messageToSign = 'Hello World';
  double? tokenSupply; // hold the total supply of the given token
  String bitTokenAddress =
      '0x2237605711227D0254Ccb33CE70767871Cf1CCc3'; // contract address deployed on polygonAmoy network only
  String hash =
      '0x28c67e05c4f32710697629c996e33f94f251e733e373f80ea84d432926ca9260';

  String testTokenA1 = '0x4D8cb4Fa6Df53d47f0B7d76a05d4AC881B2f4101';
  String tempWallet = '0xfAd3b616BCD747A12A7c0a6203E7a481606B12E8';

  String txHash = '';
  BigInt blockConfirmationNumber = BigInt.zero,
      estimateMaxPriorityFeePerGas = BigInt.zero;
  int? transactionsCountOfChain;
  BigInt callReturnType = BigInt.zero;
  bool? verifyMsg;

  final tabs = [
    const Tab(text: 'Main'),
    const Tab(text: 'Test config switch'),
    const Tab(text: 'Read Contracts'),
    const Tab(text: 'Write Contracts'),
    const Tab(text: 'Gas Price'),
  ];

  @override
  void initState() {
    Future(
      () async {
        await WagmiContext.init();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: WagmiContext.isReady,
      builder: (context, child) => !WagmiContext.isReady.value
          ? const Center(child: CircularProgressIndicator())
          : DefaultTabController(
              length: tabs.length,
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('Flutter Web3Modal'),
                  bottom: TabBar(
                    tabs: tabs,
                  ),
                ),
                body: TabBarView(
                  children: [
                    buildMainTab(),
                    ConfigSwitchExample(chainId: chainId),
                    const ReadContractExample(),
                    const WriteContractExample(),
                    const GasPriceExample(),
                  ],
                ),
              ),
            ),
    );
  }

  Widget buildMainTab() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => WagmiContext.main.web3modal.open(),
              child: const Text('Connect Wallet'),
            ),
            const SizedBox(
              height: 10,
            ),
            // disconnect wallet
            ElevatedButton(
              onPressed: () async {
                // disconnect wallet
                final getTokenParameters = wagmi.DisconnectParameters(
                  connector: account?.connector!.id,
                );
                await wagmi.Core.disconnect(
                  WagmiContext.main.config,
                  getTokenParameters,
                );
              },
              child: const Text('Disconnect Wallet'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  signedMessage = null;
                  account = wagmi.Core.getAccount(
                    WagmiContext.main.config,
                  );
                  chainId = wagmi.Core.getChainId(
                    WagmiContext.main.config,
                  );
                });
                showAccountDetails(context, account);
              },
              child: const Text('Get Account info'),
            ),

            const SizedBox(
              height: 10,
            ),
            Text('account address: ${account?.address ?? 'unknown'}'),
            Text('account status:  ${account?.status ?? 'unknown'}'),
            Text('account chain ID: ${account?.chain?.id ?? 'unknown'}'),
            Text('Chain ID: $chainId'),

            const SizedBox(
              height: 10,
            ),

            ElevatedButton(
              onPressed: () {
                chains = wagmi.Core.getChains(
                  WagmiContext.main.config,
                );

                showGetChainsMethodsResponse(context, chains);
              },
              child: const Text('Get chains'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                final getBlockNumberParameters = wagmi.GetBlockNumberParameters(
                  chainId: account!.chain!.id,
                  cacheTime: 4000,
                );
                final getBlockNumberReturnType =
                    await wagmi.Core.getBlockNumber(
                  WagmiContext.main.config,
                  getBlockNumberParameters,
                );
                setState(() {
                  blockNumber = getBlockNumberReturnType;
                });
              },
              child: const Text('Get Block number'),
            ),
            if (blockNumber != null)
              Text(
                'blockNumber : $blockNumber',
              ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                final balanceResult = await wagmi.Core.getBalance(
                  WagmiContext.main.config,
                  wagmi.GetBalanceParameters(
                    address: account?.address ?? '',
                    blockTag: 'latest',
                  ),
                );
                setState(() {
                  balance = balanceResult;
                });
              },
              child: const Text('Get Balance'),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              (balance != null && balance!.value > BigInt.from(0))
                  ? 'balance : ${(balance!.value.toInt()) / pow(10, balance!.decimals)} ${balance?.symbol}'
                  : 'balance : ${balance?.value ?? 'unknown'} ${balance?.symbol}',
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                final balanceResult = await wagmi.Core.getBalance(
                  WagmiContext.main.config,
                  wagmi.GetBalanceParameters(
                    address: account?.address ?? '',
                    token: bitTokenAddress,
                  ),
                );
                setState(() {
                  tokenBalance = balanceResult;
                });
              },
              child: const Text('Get BIT Token Balance'),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              (tokenBalance != null && tokenBalance!.value > BigInt.from(0))
                  ? 'balance : ${(tokenBalance!.value.toInt()) / pow(10, tokenBalance!.decimals)} ${tokenBalance?.symbol}'
                  : 'balance : ${tokenBalance?.value ?? 'unknown'} ${tokenBalance?.symbol}',
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () async {
                final getTokenParameters = wagmi.GetTokenParameters(
                  address: bitTokenAddress,
                  chainId: account!.chain!.id,
                  formatUnits: const wagmi.FormatUnit.wei(),
                );
                final getTokenReturnType = await wagmi.Core.getToken(
                  WagmiContext.main.config,
                  getTokenParameters,
                );
                showTokenInfoDialog(context, getTokenReturnType);
              },
              child: Text(
                'Get Token info ($bitTokenAddress / ${account?.chain!.id})',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                final transactionCountResult =
                    await wagmi.Core.getTransactionCount(
                  WagmiContext.main.config,
                  wagmi.GetTransactionCountParameters(
                    address: account?.address ?? '',
                    chainId: account!.chain!.id,
                    blockTag: 'latest',
                  ),
                );
                setState(() {
                  transactionCount = transactionCountResult;
                });
              },
              child: const Text('Get Transaction Count'),
            ),
            const SizedBox(
              height: 5,
            ),
            if (transactionCount != null)
              Text('transactionCount : $transactionCount'),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                final signMessageParameters = wagmi.SignMessageParameters(
                  account: account!.address!,
                  message:
                      wagmi.MessageToSign.stringMessage(message: messageToSign),
                );
                final signMessageReturnType = await wagmi.Core.signMessage(
                  WagmiContext.main.config,
                  signMessageParameters,
                );
                setState(() {
                  signedMessage = signMessageReturnType;
                });
              },
              child: Text('Personal sign (string: $messageToSign)'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                final signMessageParameters = wagmi.SignMessageParameters(
                  account: account!.address!,
                  message: wagmi.MessageToSign.rawMessage(
                    message: wagmi.RawMessage.hex(raw: messageToSign),
                  ),
                );
                final signMessageReturnType = await wagmi.Core.signMessage(
                    WagmiContext.main.config, signMessageParameters);
                setState(() {
                  signedMessage = signMessageReturnType;
                });
              },
              child: Text('Personal sign (raw: $messageToSign)'),
            ),
            if (signedMessage != null)
              Column(
                children: [
                  Text('message signed: $signedMessage'),
                ],
              ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                final getTransactionReceiptParameters =
                    wagmi.GetTransactionReceiptParameters(hash: hash);
                final readContractReturnType =
                    await wagmi.Core.getTransactionReceipt(
                  WagmiContext.main.config,
                  getTransactionReceiptParameters,
                );
                showTransactionReceiptDialog(
                  context,
                  readContractReturnType,
                );
              },
              child: const Text('Get Transaction Receipt'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                final readContractsParameters = wagmi.ReadContractsParameters(
                  contracts: [
                    {
                      'abi': bitContractAbi,
                      'address': bitTokenAddress,
                      'functionName': 'totalSupply',
                    },
                    {
                      'abi': testA1ContractAbi,
                      'address': testTokenA1,
                      'functionName': 'balanceOf',
                      'args': [tempWallet],
                    },
                  ],
                );
                final result = await wagmi.Core.readContracts(
                  WagmiContext.main.config,
                  readContractsParameters,
                );
                showMultipleContractMethodsResponse(context, result);
              },
              child: const Text('Call Multiple Contracts'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                final estimateGasParameters =
                    wagmi.EstimateGasParameters.legacy(
                  to: '0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2',
                  feeValues: wagmi.FeeValuesLegacy(
                    gasPrice: BigInt.parse('0'),
                  ),
                  account: account!.address,
                  data: '0xd0e30db0',
                  value: BigInt.parse('10000000000000000'),
                );
                final result = await wagmi.Core.estimateGas(
                  WagmiContext.main.config,
                  estimateGasParameters,
                );
                setState(() {
                  gasEstimation = result.toInt();
                });
              },
              child: const Text('Estimate Gas'),
            ),
            if (gasEstimation != null)
              Column(
                children: [
                  Text('Gas estimated: $gasEstimation'),
                ],
              ),
            const SizedBox(
              height: 10,
            ),
            if (watchChainIdUnsubscribe != null)
              ElevatedButton(
                onPressed: () async {
                  watchChainIdUnsubscribe?.call();
                  setState(() {
                    watchChainIdUnsubscribe = null;
                  });
                },
                child: const Text('Unwatch Chain Id'),
              )
            else
              ElevatedButton(
                onPressed: () async {
                  final watchChainIdParameters = wagmi.WatchChainIdParameters(
                    onChange: (chainId, prevChainId) => setState(() {
                      watchChainIdInfo =
                          'current : $chainId, previous : $prevChainId';
                    }),
                  );

                  final unwatch = await wagmi.Core.watchChainId(
                    WagmiContext.main.config,
                    watchChainIdParameters,
                  );
                  setState(() {
                    watchChainIdUnsubscribe = unwatch;
                  });
                },
                child: const Text('Watch Chain Id'),
              ),
            if (watchChainIdInfo != null)
              Column(
                children: [
                  Text('watchChainIdInfo: $watchChainIdInfo'),
                ],
              ),
            const SizedBox(
              height: 7,
            ),
            ElevatedButton(
              onPressed: () async {
                final sendTransactionParameters =
                    wagmi.SendTransactionParameters.legacy(
                  to: '0xfA9F840d49D5774Fb3fc46AF9d8cE66087CBB79a',
                  gas: BigInt.from(15000000000),
                  feeValues: wagmi.FeeValuesLegacy(
                    gasPrice: BigInt.parse('150000000000'),
                  ),
                  // chainId: account!.chain!.id,
                  account: account!.address!,
                  value: BigInt.parse('10000000000000000'),
                );
                final result = await wagmi.Core.sendTransaction(
                  WagmiContext.main.config,
                  sendTransactionParameters,
                );
                setState(() {
                  txHash = result;
                });

                // send transaction on contract
                // DeployedContract contract = DeployedContract(
                //   ContractAbi.fromJson(test3BitApi, 'Bit3Api'),
                //   EthereumAddress.fromHex(bitTokenAddress),
                // );
                // String data = bytesToHex(
                //     contract.function('transfer').encodeCall([
                //       EthereumAddress.fromHex(
                //           '0xfA9F840d49D5774Fb3fc46AF9d8cE66087CBB79a'),
                //       BigInt.parse('1000000')
                //     ]),
                //     include0x: true,
                //     padToEvenLength: true);
                // debugPrint('data: $data');

                // final sendTransactionParameters =
                //     wagmi.SendTransactionParameters.legacy(
                //   to: bitTokenAddress,
                //   gas: BigInt.from(15000000),
                //   feeValues: wagmi.FeeValuesLegacy(
                //     gasPrice: BigInt.parse('150000000'),
                //   ),
                //   // chainId: account!.chain!.id,
                //   account: account!.address!,
                //   type: 'legacy',
                //   data: data,
                //   // value: BigInt.parse('10000000000000000'),
                // );
                // final result = await wagmi.Core.sendTransaction(
                //     sendTransactionParameters);
                // debugPrint('result: ${result}');
                // setState(() {
                //   txHash = result;
                // });
              },
              child: const Text('Send Transaction'),
            ),
            const SizedBox(
              height: 7,
            ),
            // get transaction method
            ElevatedButton(
              onPressed: () async {
                final getTransactionParameters = wagmi.GetTransactionParameters(
                  hash:
                      '0x6f79870e05ebfb529d7ee291cfdf7cbfe05222313045a1d43c24c0906e65e4a7',
                );
                final getTransactionReturnType =
                    await wagmi.Core.getTransaction(
                  WagmiContext.main.config,
                  getTransactionParameters,
                );
                showTransactionDetails(context, getTransactionReturnType);
              },
              child: const Text('Get Transaction'),
            ),
            const SizedBox(height: 7),

            // get transaction confirmations
            ElevatedButton(
              onPressed: () async {
                final getTransactionConfirmationsParameters =
                    wagmi.GetTransactionConfirmationsParameters(
                  hash:
                      '0x6f79870e05ebfb529d7ee291cfdf7cbfe05222313045a1d43c24c0906e65e4a7',
                );
                final getTransactionConfirmationsReturnType =
                    await wagmi.Core.getTransactionConfirmations(
                  WagmiContext.main.config,
                  getTransactionConfirmationsParameters,
                );
                setState(() {
                  blockConfirmationNumber =
                      getTransactionConfirmationsReturnType;
                });
              },
              child: const Text('Get Transaction Confirmations'),
            ),
            const SizedBox(height: 7),
            // txHash is not empty then show the transaction hash
            if (blockConfirmationNumber > BigInt.zero)
              Text('Block Confirmation: $blockConfirmationNumber')
            else
              Container(),
            const SizedBox(
              height: 7,
            ),
            // get block
            ElevatedButton(
              onPressed: () async {
                final getBlockParameters = wagmi.GetBlockParameters(
                  blockNumber: BigInt.from(11268698),
                );
                final getBlockReturnType = await wagmi.Core.getBlock(
                  WagmiContext.main.config,
                  getBlockParameters,
                );
                showBlockDetails(context, getBlockReturnType);
              },
              child: const Text('Get Block'),
            ),
            const SizedBox(
              height: 7,
            ),

            // get block transaction count
            ElevatedButton(
              onPressed: () async {
                final getBlockTransactionCountParameters =
                    wagmi.GetBlockTransactionCountParameters(
                  chainId: account!.chain!.id,
                );
                final getBlockTransactionCountReturnType =
                    await wagmi.Core.getBlockTransactionCount(
                  WagmiContext.main.config,
                  getBlockTransactionCountParameters,
                );
                setState(() {
                  transactionsCountOfChain = getBlockTransactionCountReturnType;
                });
              },
              child: const Text('Get Block Transaction Count'),
            ),
            const SizedBox(
              height: 7,
            ),
            // transactionsCountOfChain is not empty then show the transaction hash
            if (transactionsCountOfChain != null)
              Text('Transactions Count: $transactionsCountOfChain')
            else
              Container(),
            const SizedBox(
              height: 10,
            ),
            // call function
            ElevatedButton(
              onPressed: () async {
                final contract = DeployedContract(
                  ContractAbi.fromJson(callContract, 'Bit3Api'),
                  EthereumAddress.fromHex(bitTokenAddress),
                );
                final data = bytesToHex(
                  contract.function('totalSupply').encodeCall([
                    // EthereumAddress.fromHex(
                    //     '0xfA9F840d49D5774Fb3fc46AF9d8cE66087CBB79a'),
                    // BigInt.parse('1000000')
                  ]),
                  include0x: true,
                  padToEvenLength: true,
                );

                final callParameters = wagmi.CallParameters(
                  to: bitTokenAddress,
                  data: data,
                );
                final res = await wagmi.Core.call(
                  WagmiContext.main.config,
                  callParameters,
                );
                // print('callReturnType: ${res.data}');
                setState(() {
                  callReturnType = BigInt.parse(res.data.toString());
                });
              },
              child: const Text('Call Function'),
            ),
            const SizedBox(
              height: 10,
            ),
            if (callReturnType > BigInt.zero)
              Text('Call Response: ${callReturnType / BigInt.from(1000000)}')
            else
              Container(),
            const SizedBox(
              height: 10,
            ),
            // estimate fees per gas
            ElevatedButton(
              onPressed: () async {
                final estimateFeesPerGasParameters =
                    wagmi.EstimateFeesPerGasParameters(
                  formatUnits: 'gwei',
                  chainId: account!.chain!.id,
                );
                final result = await wagmi.Core.estimateFeesPerGas(
                  WagmiContext.main.config,
                  estimateFeesPerGasParameters,
                );
                showEstimateFeesPerGasDialog(context, result);
              },
              child: const Text('Estimate Fees Per Gas'),
            ),
            const SizedBox(
              height: 7,
            ),

            // estimate max priority fee per gas
            ElevatedButton(
              onPressed: () async {
                final estimateMaxPriorityFeePerGasParameters =
                    wagmi.EstimateMaxPriorityFeePerGasParameters(
                  chainId: account!.chain!.id,
                );
                final result = await wagmi.Core.estimateMaxPriorityFeePerGas(
                  WagmiContext.main.config,
                  estimateMaxPriorityFeePerGasParameters,
                );
                setState(() {
                  estimateMaxPriorityFeePerGas = result;
                });
              },
              child: const Text('Estimate Max Priority Fee Per Gas'),
            ),
            const SizedBox(
              height: 7,
            ),
            if (estimateMaxPriorityFeePerGas > BigInt.zero)
              Text('Max Priority Fee Per Gas: $estimateMaxPriorityFeePerGas')
            else
              Container(),
            const SizedBox(
              height: 7,
            ),

            // get byte code
            ElevatedButton(
              onPressed: () async {
                final getByteCodeParameters = wagmi.GetByteCodeParameters(
                  address: bitTokenAddress,
                  blockTag: const wagmi.BlockTag.finalized(),
                );
                final result = await wagmi.Core.getBytecode(
                  WagmiContext.main.config,
                  getByteCodeParameters,
                );
                showByteCodeDialog(context, result);
              },
              child: const Text('Get Byte Code'),
            ),
            const SizedBox(
              height: 7,
            ),
            ElevatedButton(
              onPressed: () async {
                final waitForTransactionReceiptParameters =
                    wagmi.WaitForTransactionReceiptParameters(
                  hash:
                      '0x041f2da24620eeef645e646f07399b3b374b86201931b228578c4632fb41abf4',
                );
                final result = await wagmi.Core.waitForTransactionReceipt(
                  WagmiContext.main.config,
                  waitForTransactionReceiptParameters,
                );
                showWaitForTransactionReceiptDialog(context, result);
              },
              child: const Text('Wait For Transaction Receipt'),
            ),
            const SizedBox(
              height: 7,
            ),
            // get fee history
            ElevatedButton(
              onPressed: () async {
                final getFeeHistoryParameters = wagmi.GetFeeHistoryParameters(
                  chainId: account!.chain!.id,
                  blockCount: 10,
                  rewardPercentiles: [10, 50, 90],
                  blockNumber: BigInt.from(11268698),
                  blockTag: const wagmi.BlockTag.latest(),
                );
                final result = await wagmi.Core.getFeeHistory(
                  WagmiContext.main.config,
                  getFeeHistoryParameters,
                );
                showGetFeeHistoryDialog(context, result);
              },
              child: const Text('Get Fee History'),
            ),
            const SizedBox(
              height: 7,
            ),
            // switch chain
            ElevatedButton(
              onPressed: () async {
                final switchChainParameters = wagmi.SwitchChainParameters(
                  connector: account!.connector,
                  chainId: 137,
                );
                final result = await wagmi.Core.switchChain(
                  WagmiContext.main.config,
                  switchChainParameters,
                );
                showSwitchChainDialog(context, result);
              },
              child: const Text('Switch Chain'),
            ),
            const SizedBox(
              height: 7,
            ),
            // switch account
            ElevatedButton(
              onPressed: () async {
                final switchAccountParameters = wagmi.SwitchAccountParameters(
                  connector: account!.connector,
                );
                final result = await wagmi.Core.switchAccount(
                    WagmiContext.main.config, switchAccountParameters);
                showSwitchAccountDialog(context, result);
              },
              child: const Text('Switch Account'),
            ),
            const SizedBox(
              height: 7,
            ),
            // verify message
            ElevatedButton(
              onPressed: () async {
                final verifyMessageParameters = wagmi.VerifyMessageParameters(
                  message: messageToSign,
                  signature: signedMessage!,
                  address: account!.address!,
                );
                final result = await wagmi.Core.verifyMessage(
                  WagmiContext.main.config,
                  verifyMessageParameters,
                );
                setState(() {
                  verifyMsg = result;
                });
              },
              child: const Text('Verify Message'),
            ),
            const SizedBox(
              height: 7,
            ),
            if (verifyMsg != null)
              Text('Verify Message: $verifyMsg')
            else
              Container(),
            const SizedBox(
              height: 7,
            ),

            // watch account
            if (watchAccountUnsubscribe != null)
              ElevatedButton(
                onPressed: () async {
                  watchAccountUnsubscribe?.call();
                  setState(() {
                    watchAccountUnsubscribe = null;
                  });
                },
                child: const Text('Unwatch Account'),
              )
            else
              ElevatedButton(
                onPressed: () async {
                  final watchAccountParameters = wagmi.WatchAccountParameters(
                    onChange: (account) => setState(() {
                      debugPrint('account changed : $account');
                    }),
                  );

                  final unwatch = await wagmi.Core.watchAccount(
                    WagmiContext.main.config,
                    watchAccountParameters,
                  );
                  setState(() {
                    watchAccountUnsubscribe = unwatch;
                  });
                },
                child: const Text('Watch Account'),
              ),
            const SizedBox(
              height: 7,
            ),
            // watch connections
            if (watchConnectionsUnsubscribe != null)
              ElevatedButton(
                onPressed: () async {
                  watchConnectionsUnsubscribe?.call();
                  setState(() {
                    watchConnectionsUnsubscribe = null;
                  });
                },
                child: const Text('Unwatch Connections'),
              )
            else
              ElevatedButton(
                onPressed: () async {
                  final watchConnectionsParameters =
                      wagmi.WatchConnectionsParameters(
                    onChange: (accounts) => setState(() {
                      if (accounts.isNotEmpty) {
                        debugPrint(
                          'accounts111: ${accounts[0].connector.name}',
                        );
                        debugPrint(
                          'accounts222: ${accounts[0].connector.type}',
                        );
                      } else {
                        debugPrint('empty accounts: $accounts');
                      }
                    }),
                  );

                  final unwatch = await wagmi.Core.watchConnections(
                    WagmiContext.main.config,
                    watchConnectionsParameters,
                  );
                  setState(() {
                    watchConnectionsUnsubscribe = unwatch;
                  });
                },
                child: const Text('Watch Connections'),
              ),
          ],
        ),
      ),
    );
  }

  wagmi.Abi bitContractAbi = [
    {
      'inputs': [],
      'name': 'totalSupply',
      'outputs': [
        {'internalType': 'uint256', 'name': '', 'type': 'uint256'},
      ],
      'stateMutability': 'view',
      'type': 'function',
    }
  ];
  wagmi.Abi testA1ContractAbi = [
    {
      'inputs': [
        {'internalType': 'address', 'name': 'account', 'type': 'address'},
      ],
      'name': 'balanceOf',
      'outputs': [
        {'internalType': 'uint256', 'name': '', 'type': 'uint256'},
      ],
      'stateMutability': 'view',
      'type': 'function',
    }
  ];
  final String callContract =
      '[{"inputs":[],"name":"totalSupply","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"}]';

  // abi for test3BitApi
  final String test3BitApi =
      '[{"inputs":[{"internalType":"address","name":"recipient","type":"address"},{"internalType":"uint256","name":"amount","type":"uint256"}],"name":"transfer","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"}]';

  // show get fee history dialog
  void showGetFeeHistoryDialog(
    BuildContext context,
    wagmi.GetFeeHistoryReturnType getFeeHistoryReturnType,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Get Fee History'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('baseFeePerGas: ${getFeeHistoryReturnType.baseFeePerGas}'),
              const SizedBox(height: 8),
              Text('gasUsedRatio: ${getFeeHistoryReturnType.gasUsedRatio}'),
              const SizedBox(height: 8),
              Text('oldestBlock: ${getFeeHistoryReturnType.oldestBlock}'),
              const SizedBox(height: 8),
              Text('reward: ${getFeeHistoryReturnType.reward}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

// switch account dialog
  void showSwitchAccountDialog(
    BuildContext context,
    Map<String, dynamic> value,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Switch Account'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('account: ${value['accounts']}'),
              const SizedBox(height: 8),
              Text('chainId: ${value['chainId']}'),
              const SizedBox(height: 8),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // show wait for transaction receipt dialog
  void showWaitForTransactionReceiptDialog(
    BuildContext context,
    wagmi.WaitForTransactionReceiptReturnType
        waitForTransactionReceiptReturnType,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Wait For Transaction Receipt'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'blockHash: ${waitForTransactionReceiptReturnType.blockHash}',
              ),
              // space
              const SizedBox(height: 8),
              Text(
                'blockNumber: ${waitForTransactionReceiptReturnType.blockNumber}',
              ),
              const SizedBox(height: 8),
              Text(
                'contractAddress: ${waitForTransactionReceiptReturnType.contractAddress}',
              ),
              const SizedBox(height: 8),
              Text(
                'cumulativeGasUsed: ${waitForTransactionReceiptReturnType.cumulativeGasUsed}',
              ),
              const SizedBox(height: 8),
              Text('from: ${waitForTransactionReceiptReturnType.from}'),
              const SizedBox(height: 8),
              Text('gasUsed: ${waitForTransactionReceiptReturnType.gasUsed}'),
              const SizedBox(height: 8),
              // Text('logs: ${waitForTransactionReceiptReturnType.logs}'),
              // Text('logsBloom: ${waitForTransactionReceiptReturnType.logsBloom}'),
              Text('status: ${waitForTransactionReceiptReturnType.status}'),
              const SizedBox(height: 8),
              Text('to: ${waitForTransactionReceiptReturnType.to}'),
              const SizedBox(height: 8),
              Text(
                'transactionHash: ${waitForTransactionReceiptReturnType.transactionHash}',
              ),
              const SizedBox(height: 8),
              Text(
                'transactionIndex: ${waitForTransactionReceiptReturnType.transactionIndex}',
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void showSwitchChainDialog(
    BuildContext context,
    Map<String, dynamic> data,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Switch Chain'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('formatters: ${data['formatters']}'),
              const SizedBox(height: 8),
              Text('fees: ${data['fees']}'),
              const SizedBox(height: 8),
              Text('serializers: ${data['serializers']}'),
              const SizedBox(height: 8),
              Text('rpcUrls: ${data['rpcUrls']}'),
              const SizedBox(height: 8),
              Text('nativeCurrency: ${data['nativeCurrency']}'),
              const SizedBox(height: 8),
              Text('blockExplorer: ${data['blockExplorer']}'),
              const SizedBox(height: 8),
              Text('chainId: ${data['id']}'),
              const SizedBox(height: 8),
              Text('chainName: ${data['name']}'),
              const SizedBox(height: 8),
              Text('contracts: ${data['contracts']}'),
              const SizedBox(height: 8),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // show token info dialog
  void showTokenInfoDialog(
    BuildContext context,
    wagmi.GetTokenReturnType getTokenReturnType,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Token Info'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('address: ${getTokenReturnType.address}'),
              const SizedBox(height: 8),
              Text('decimals: ${getTokenReturnType.decimals}'),
              const SizedBox(height: 8),
              Text('name: ${getTokenReturnType.name}'),
              const SizedBox(height: 8),
              Text('symbol: ${getTokenReturnType.symbol}'),
              const SizedBox(height: 8),
              Text(
                'totalSupply: {formatted : ${getTokenReturnType.totalSupply.formatted}, value:  ${getTokenReturnType.totalSupply.value}}',
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void showAccountDetails(BuildContext context, wagmi.Account? account) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Account Details'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('address: ${account?.address}'),
              const SizedBox(height: 8),
              Text('status: ${account?.status}'),
              const SizedBox(height: 8),
              Text('chain: ${account?.chain?.name}'),
              const SizedBox(height: 8),
              Text('isConnecting: ${account?.isConnecting}'),
              const SizedBox(height: 8),
              Text('isReconnecting: ${account?.isReconnecting}'),
              const SizedBox(height: 8),
              Text('isConnected: ${account?.isConnected}'),
              const SizedBox(height: 8),
              Text('isDisconnected: ${account?.isDisconnected}'),
              const SizedBox(height: 8),
              const Text(
                'Connector',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              if (account?.connector?.icon != null)
                SvgPicture.string(
                  utf8.decode(base64Decode(account?.connector?.icon ?? '')),
                  width: 50,
                  height: 50,
                )
              else
                Container(),
              const SizedBox(height: 8),
              Text('id: ${account?.connector?.id}'),
              const SizedBox(height: 8),
              Text('name: ${account?.connector?.name}'),
              const SizedBox(height: 8),
              Text('type: ${account?.connector?.type}'),
              const SizedBox(height: 8),
              Text('uid: ${account?.connector?.uid}'),
              const SizedBox(height: 8),
              Text(
                'supportsSimulation: ${account?.connector?.supportsSimulation}',
              ),
              const SizedBox(height: 8),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

// show estimate fees per gas dialog
  void showEstimateFeesPerGasDialog(
    BuildContext context,
    wagmi.EstimateFeesPerGasReturnType estimateFeesPerGasReturnType,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Estimate Fees Per Gas'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Gas Price: ${estimateFeesPerGasReturnType.gasPrice}',
              ),
              const SizedBox(height: 8),
              Text(
                'Max Fee Per Gas: ${estimateFeesPerGasReturnType.maxFeePerGas}',
              ),
              const SizedBox(height: 8),
              Text(
                'Max Priority Fee Per Gas: ${estimateFeesPerGasReturnType.maxPriorityFeePerGas}',
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // show byte code dialog
  void showByteCodeDialog(BuildContext context, String byteCode) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Byte Code'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('byteCode: $byteCode'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void showTransactionDetails(
    BuildContext context,
    wagmi.GetTransactionReturnType getTransactionReturnType,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Transaction Details'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('accessList: ${getTransactionReturnType.accessList}'),
                // space
                const SizedBox(height: 8),
                Text('blockHash: ${getTransactionReturnType.blockHash}'),
                const SizedBox(height: 8),
                Text('blockNumber: ${getTransactionReturnType.blockNumber}'),
                const SizedBox(height: 8),
                Text('chainId: ${getTransactionReturnType.chainId}'),
                const SizedBox(height: 8),
                Text('from: ${getTransactionReturnType.from}'),
                const SizedBox(height: 8),
                Text('gas: ${getTransactionReturnType.gas}'),
                const SizedBox(height: 8),
                Text('gasPrice: ${getTransactionReturnType.gasPrice}'),
                const SizedBox(height: 8),
                Text('hash: ${getTransactionReturnType.hash}'),
                const SizedBox(height: 8),
                Text('input: ${getTransactionReturnType.input}'),
                const SizedBox(height: 8),
                Text('maxFeePerGas: ${getTransactionReturnType.maxFeePerGas}'),
                const SizedBox(height: 8),
                Text(
                  'maxPriorityFeePerGas: ${getTransactionReturnType.maxPriorityFeePerGas}',
                ),
                const SizedBox(height: 8),
                Text('nonce: ${getTransactionReturnType.nonce}'),
                const SizedBox(height: 8),
                Text('r: ${getTransactionReturnType.r}'),
                const SizedBox(height: 8),
                Text('s: ${getTransactionReturnType.s}'),
                const SizedBox(height: 8),
                Text('to: ${getTransactionReturnType.to}'),
                const SizedBox(height: 8),
                Text(
                  'transactionIndex: ${getTransactionReturnType.transactionIndex}',
                ),
                const SizedBox(height: 8),
                Text('v: ${getTransactionReturnType.v}'),
                const SizedBox(height: 8),
                Text('value: ${getTransactionReturnType.value}'),
                const SizedBox(height: 8),
                Text('type: ${getTransactionReturnType.type}'),
                const SizedBox(height: 8),
                Text('typeHex: ${getTransactionReturnType.typeHex}'),
                const SizedBox(height: 8),
                Text('yParity: ${getTransactionReturnType.yParity}'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // show block details
  void showBlockDetails(
    BuildContext context,
    wagmi.GetBlockReturnType getBlockReturnType,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Block Details'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('baseFeePerGas: ${getBlockReturnType.baseFeePerGas}'),
                // space
                const SizedBox(height: 8),
                Text('blobGasUsed: ${getBlockReturnType.blobGasUsed}'),
                const SizedBox(height: 8),
                Text('chainId: ${getBlockReturnType.chainId}'),
                const SizedBox(height: 8),
                Text('difficulty: ${getBlockReturnType.difficulty}'),
                const SizedBox(height: 8),
                Text('excessBlobGas: ${getBlockReturnType.excessBlobGas}'),
                const SizedBox(height: 8),
                Text('extraData: ${getBlockReturnType.extraData}'),
                const SizedBox(height: 8),
                Text('gasLimit: ${getBlockReturnType.gasLimit}'),
                const SizedBox(height: 8),
                Text('gasUsed: ${getBlockReturnType.gasUsed}'),
                const SizedBox(height: 8),
                Text('hash: ${getBlockReturnType.hash}'),
                const SizedBox(height: 8),
                Text('logsBloom: ${getBlockReturnType.logsBloom}'),
                const SizedBox(height: 8),
                Text('miner: ${getBlockReturnType.miner}'),
                const SizedBox(height: 8),
                Text('mixHash: ${getBlockReturnType.mixHash}'),
                const SizedBox(height: 8),
                Text('nonce: ${getBlockReturnType.nonce}'),
                const SizedBox(height: 8),
                Text('number: ${getBlockReturnType.number}'),
                const SizedBox(height: 8),
                Text('parentHash: ${getBlockReturnType.parentHash}'),
                const SizedBox(height: 8),
                Text('receiptsRoot: ${getBlockReturnType.receiptsRoot}'),
                const SizedBox(height: 8),
                Text('sha3Uncles: ${getBlockReturnType.sha3Uncles}'),
                const SizedBox(height: 8),
                Text('size: ${getBlockReturnType.size}'),
                const SizedBox(height: 8),
                Text('stateRoot: ${getBlockReturnType.stateRoot}'),
                const SizedBox(height: 8),
                Text('timestamp: ${getBlockReturnType.timestamp}'),
                const SizedBox(height: 8),
                Text('totalDifficulty: ${getBlockReturnType.totalDifficulty}'),
                Text(
                  'transactionsRoot: ${getBlockReturnType.transactionsRoot}',
                ),
                const SizedBox(height: 8),
                Text('uncles: ${getBlockReturnType.uncles}'),
                Text('transactions: ${getBlockReturnType.transactions}'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // dialog to show transaction receipt
  void showTransactionReceiptDialog(
    BuildContext context,
    wagmi.GetTransactionReceiptReturnType transactionReceipt,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Transaction Receipt'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('blockHash: ${transactionReceipt.blockHash}'),
              // space
              const SizedBox(height: 8),
              Text('blockNumber: ${transactionReceipt.blockNumber}'),
              const SizedBox(height: 8),
              Text('contractAddress: ${transactionReceipt.contractAddress}'),
              const SizedBox(height: 8),
              Text(
                'cumulativeGasUsed: ${transactionReceipt.cumulativeGasUsed}',
              ),
              const SizedBox(height: 8),
              Text('from: ${transactionReceipt.from}'),
              const SizedBox(height: 8),
              Text('gasUsed: ${transactionReceipt.gasUsed}'),
              const SizedBox(height: 8),
              // Text('logs: ${transactionReceipt.logs}'),
              // Text('logsBloom: ${transactionReceipt.logsBloom}'),
              Text('status: ${transactionReceipt.status}'),
              const SizedBox(height: 8),
              Text('to: ${transactionReceipt.to}'), const SizedBox(height: 8),
              Text('transactionHash: ${transactionReceipt.transactionHash}'),
              const SizedBox(height: 8),
              Text('transactionIndex: ${transactionReceipt.transactionIndex}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // dialog to show transaction receipt
  void showMultipleContractMethodsResponse(
    BuildContext context,
    // list of multiple contract methods response
    List<Map<String, dynamic>> multipleContractMethodsResponse,
  ) {
    final totalSupply = multipleContractMethodsResponse[0]['result'] as BigInt?;
    final balance = multipleContractMethodsResponse[1]['result'] as BigInt?;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Read Multiple Contracts'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bit0 Contract',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // space
              const SizedBox(height: 4),
              Text(
                'Total Supply: ${totalSupply == null ? 0 : totalSupply / BigInt.from(1000000)}',
              ),
              // space
              const SizedBox(height: 8),
              const Text(
                'TestA1 Contract',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                'Balance of wallet $tempWallet : ${balance == null ? 0 : balance / BigInt.from(1000000)}',
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void showGetChainsMethodsResponse(
    BuildContext context,
    List<wagmi.Chain> getChainsMethodsResponse,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Get Chains'),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: getChainsMethodsResponse.length,
              itemBuilder: (context, index) {
                final chain = getChainsMethodsResponse[index];
                return ExpansionTile(
                  title: Text(chain.name),
                  children: [
                    ListTile(
                      title: const Text('ID'),
                      subtitle: Text(chain.id.toString()),
                    ),
                    ListTile(
                      title: const Text('Native Currency'),
                      subtitle: Text(chain.nativeCurrency?.name ?? 'Unknown'),
                    ),
                  ],
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
