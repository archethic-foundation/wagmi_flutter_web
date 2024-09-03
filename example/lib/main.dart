import 'dart:convert';
import 'dart:math';

import 'package:example/actions/gas_price.dart';
import 'package:example/actions/write_contract.dart';
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
  String? token;
  wagmi.WatchChainIdReturnType? watchChainIdUnsubscribe;
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

  final tabs = [
    const Tab(text: 'Main'),
    const Tab(text: 'Write Contracts'),
    const Tab(text: 'Gas Price'),
  ];

  @override
  void initState() {
    Future(
      () async {
        await wagmi.init();

        wagmi.Web3Modal.init(
          'f642e3f39ba3e375f8f714f18354faa4',
          [
            wagmi.Chain.mainnet.name,
            wagmi.Chain.sepolia.name,
            wagmi.Chain.polygonAmoy.name,
            wagmi.Chain.polygon.name,
          ],
          true,
          true,
          wagmi.Web3ModalMetadata(
            name: 'Web3Modal',
            description: 'Web3Modal Example',
            // url must match your domain & subdomain
            url: 'https://web3modal.com',
            icons: ['https://avatars.githubusercontent.com/u/37784886'],
          ),
          false, // email
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
            const WriteContractsExample(),
            const GasPriceExample(),
          ],
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
            const ElevatedButton(
              onPressed: wagmi.Web3Modal.open,
              child: Text('Connect Wallet'),
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
                await wagmi.Core.disconnect(getTokenParameters);
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
                  account = wagmi.Core.getAccount();
                  chainId = wagmi.Core.getChainId();
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
                chains = wagmi.Core.getChains();

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
                  getBlockNumberParameters,
                );
                setState(() {
                  blockNumber = getBlockNumberReturnType.blockNumber;
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
                  address: tokenAddressToSearch,
                  chainId: account!.chain!.id,
                );
                final getTokenReturnType =
                    await wagmi.Core.getToken(getTokenParameters);
                setState(() {
                  token =
                      '${getTokenReturnType.name} ${getTokenReturnType.symbol}';
                });
              },
              child: Text(
                'Get Token info ($tokenAddressToSearch / ${account?.chain!.id})',
              ),
            ),
            if (token != null) Text('token: $token'),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                final transactionCountResult =
                    await wagmi.Core.getTransactionCount(
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
                // read contract
                final getTokenParameters = wagmi.ReadContractParameters(
                  abi: bitContractAbi,
                  address: bitTokenAddress,
                  functionName: 'totalSupply',
                );
                final readContractReturnType =
                    await wagmi.Core.readContract(getTokenParameters);
                setState(() {
                  tokenSupply =
                      int.parse(readContractReturnType.toString()) / 1000000;
                });
              },
              child: const Text('Get Token Supply From Contract'),
            ),
            const SizedBox(
              height: 7,
            ),
            if (tokenSupply != null)
              Text(
                'Total token supply :  $tokenSupply',
              )
            else
              Container(),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                final signMessageParameters = wagmi.SignMessageParameters(
                  account: account!.address!,
                  message: messageToSign,
                );
                final signMessageReturnType =
                    await wagmi.Core.signMessage(signMessageParameters);
                setState(() {
                  signedMessage = signMessageReturnType;
                });
              },
              child: Text('Personal sign ($messageToSign)'),
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
                final result =
                    await wagmi.Core.estimateGas(estimateGasParameters);
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
                  type: 'legacy',
                  value: BigInt.parse('10000000000000000'),
                );
                final result =
                    await wagmi.Core.sendTransaction(sendTransactionParameters);
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
                // print('data: $data');

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
                // print('result: ${result}');
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
                    await wagmi.Core.getTransaction(getTransactionParameters);
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
                final res = await wagmi.Core.call(callParameters);
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
                );
                final result = await wagmi.Core.getBytecode(
                  getByteCodeParameters,
                );
                showByteCodeDialog(context, result);
              },
              child: const Text('Get Byte Code'),
            ),
            const SizedBox(
              height: 7,
            ),
          ],
        ),
      ),
    );
  }

  List<Map> bitContractAbi = [
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
  List<Map> testA1ContractAbi = [
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
              const Text('Connector',
                  style: TextStyle(fontWeight: FontWeight.bold)),
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
                  'supportsSimulation: ${account?.connector?.supportsSimulation}'),
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
                'Total Supply: ${BigInt.parse(multipleContractMethodsResponse[0]['result'].toString()) / BigInt.from(1000000)}',
              ),
              // space
              const SizedBox(height: 8),
              const Text(
                'TestA1 Contract',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                'Balance of wallet $tempWallet : ${BigInt.parse(multipleContractMethodsResponse[1]['result'].toString()) / BigInt.from(1000000)}',
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
