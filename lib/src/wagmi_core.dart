import 'dart:convert';
import 'dart:js_interop';
import 'package:wagmi_flutter_web/src/actions/get_balance.dart';
import 'package:wagmi_flutter_web/src/actions/get_block_number.dart';
import 'package:wagmi_flutter_web/src/actions/get_gas_price.dart';
import 'package:wagmi_flutter_web/src/actions/get_token.dart';
import 'package:wagmi_flutter_web/src/actions/get_transaction_count.dart';
import 'package:wagmi_flutter_web/src/actions/get_transaction_receipt.dart';
import 'package:wagmi_flutter_web/src/actions/send_transaction.dart';
import 'package:wagmi_flutter_web/src/actions/read_contract.dart';
import 'package:wagmi_flutter_web/src/actions/estimate_gas.dart';
import 'package:wagmi_flutter_web/src/actions/read_contracts.dart';
import 'package:wagmi_flutter_web/src/actions/sign_message.dart';
import 'package:wagmi_flutter_web/src/actions/watch_chain_id.dart';
import 'package:wagmi_flutter_web/src/actions/write_contract.dart';
import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/src/models/account.dart';
import 'package:wagmi_flutter_web/src/models/chain.dart';
import 'package:wagmi_flutter_web/utility/utils.dart';

class Core {
  static Account getAccount() {
    return window.wagmiCore.getAccount().toDart;
  }

  static int getChainId() {
    return window.wagmiCore.getChainId().toDartInt;
  }

  static List<Chain> getChains() {
    final result = window.wagmiCore.getChains();
    final list = <Chain>[];
    for (var i = 0; i < result.toDart.length; i++) {
      final chainMap = Utils.jsObjectToMap(result.toDart[i]);
      list.add(Chain.fromMap(chainMap));
    }
    return list;
  }

  static Future<GetBlockNumberReturnType> getBlockNumber(
    GetBlockNumberParameters getBlockNumberParameters,
  ) async {
    final result = await window.wagmiCore
        .getBlockNumber(
          getBlockNumberParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<GetGasPriceReturnType> getGasPrice(
    GetGasPriceParameters getGasPriceParameters,
  ) async {
    final result = await window.wagmiCore
        .getGasPrice(
          getGasPriceParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<GetBalanceReturnType> getBalance(
    GetBalanceParameters getBalanceParameters,
  ) async {
    final result = await window.wagmiCore
        .getBalance(
          getBalanceParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<int> getTransactionCount(
    GetTransactionCountParameters getTransactionCountParameters,
  ) async {
    final result = await window.wagmiCore
        .getTransactionCount(
          getTransactionCountParameters.toJS,
        )
        .toDart;
    return result.toDartInt;
  }

  static Future<GetTokenReturnType> getToken(
    GetTokenParameters getTokenParameters,
  ) async {
    final result = await window.wagmiCore
        .getToken(
          getTokenParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<String> signMessage(
    SignMessageParameters signMessageParameters,
  ) async {
    final result = await window.wagmiCore
        .signMessage(
          signMessageParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // read contract
  static Future<BigInt> readContract(
    ReadContractParameters readContractParameters,
  ) async {
    final result = await window.wagmiCore
        .readContract(
          readContractParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<List<Map<String, dynamic>>> readContracts(
    ReadContractsParameters readContractsParameters,
  ) async {
    final result = await window.wagmiCore
        .readContracts(
          readContractsParameters.toJS,
        )
        .toDart;
    // call jsObjectToMap to convert JSObject to Dart Map
    final list = <Map<String, dynamic>>[];
    for (var i = 0; i < result.toDart.length; i++) {
      list.add(Utils.jsObjectToMap(result.toDart[i]));
    }
    return list;
  }

  // get transaction receipt
  static Future<GetTransactionReceiptReturnType> getTransactionReceipt(
    GetTransactionReceiptParameters getTransactionReceiptParameters,
  ) async {
    final result = await window.wagmiCore
        .getTransactionReceipt(
          getTransactionReceiptParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<void Function()> watchChainId(
    WatchChainIdParameters watchChainIdParameters,
  ) async {
    final result = await window.wagmiCore
        .watchChainId(
          watchChainIdParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<String> sendTransaction(
    SendTransactionParameters sendTransactionParameters,
  ) async {
    final result = await window.wagmiCore
        .sendTransaction(
          sendTransactionParameters.toJS!,
        )
        .toDart;
    return result.toDart;
  }

  static Future<WriteContractReturnType> writeContract(
    WriteContractParameters writeContractParameters,
  ) async {
    final result = await window.wagmiCore
        .writeContract(
          writeContractParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<BigInt> estimateGas(
    EstimateGasParameters estimateGasParameters,
  ) async {
    final result = await window.wagmiCore
        .estimateGas(
          estimateGasParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }
}
