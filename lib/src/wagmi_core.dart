import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/actions/call.dart';
import 'package:wagmi_flutter_web/src/actions/disconnect.dart';
import 'package:wagmi_flutter_web/src/actions/estimate_fees_per_gas.dart';
import 'package:wagmi_flutter_web/src/actions/estimate_gas.dart';
import 'package:wagmi_flutter_web/src/actions/estimate_max_priority_fee_per_gas.dart';
import 'package:wagmi_flutter_web/src/actions/get_balance.dart';
import 'package:wagmi_flutter_web/src/actions/get_block.dart';
import 'package:wagmi_flutter_web/src/actions/get_block_number.dart';
import 'package:wagmi_flutter_web/src/actions/get_block_transaction_count.dart';
import 'package:wagmi_flutter_web/src/actions/get_byte_code.dart';
import 'package:wagmi_flutter_web/src/actions/get_fee_history.dart';
import 'package:wagmi_flutter_web/src/actions/get_gas_price.dart';
import 'package:wagmi_flutter_web/src/actions/get_token.dart';
import 'package:wagmi_flutter_web/src/actions/get_transaction.dart';
import 'package:wagmi_flutter_web/src/actions/get_transaction_confirmations.dart';
import 'package:wagmi_flutter_web/src/actions/get_transaction_count.dart';
import 'package:wagmi_flutter_web/src/actions/get_transaction_receipt.dart';
import 'package:wagmi_flutter_web/src/actions/read_contract.dart';
import 'package:wagmi_flutter_web/src/actions/read_contracts.dart';
import 'package:wagmi_flutter_web/src/actions/send_transaction.dart';
import 'package:wagmi_flutter_web/src/actions/sign_message.dart';
import 'package:wagmi_flutter_web/src/actions/wait_for_transaction_receipt.dart';
import 'package:wagmi_flutter_web/src/actions/watch_chain_id.dart';
import 'package:wagmi_flutter_web/src/actions/watch_contract_event.dart';
import 'package:wagmi_flutter_web/src/actions/write_contract.dart';
import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/src/models/account.dart';
import 'package:wagmi_flutter_web/src/models/chain.dart';
import 'package:wagmi_flutter_web/src/utils/utils_js.dart';

class Core {
  static Account getAccount() {
    return window.wagmiCore.getAccount().toDart;
  }

  static int getChainId() {
    return window.wagmiCore.getChainId().toDartInt;
  }

  static List<Chain> getChains() {
    final result = window.wagmiCore.getChains();

    return result.toDart
        .map(
          (item) => Chain.fromMap(item.toMap),
        )
        .toList();
  }

  static Future<BigInt> getBlockNumber(
    GetBlockNumberParameters getBlockNumberParameters,
  ) async {
    final result = await window.wagmiCore
        .getBlockNumber(
          getBlockNumberParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<BigInt> getGasPrice(
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
  static Future<dynamic> readContract(
    ReadContractParameters readContractParameters,
  ) async {
    final result = await window.wagmiCore
        .readContract(
          readContractParameters.toJS,
        )
        .toDart;
    return UtilsJS.dartify(result);
  }

  static Future<List<Map<String, dynamic>>> readContracts(
    ReadContractsParameters readContractsParameters,
  ) async {
    final result = await window.wagmiCore
        .readContracts(
          readContractsParameters.toJS,
        )
        .toDart;
    return result.toDartDynamicList.cast<Map<String, dynamic>>();
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
          sendTransactionParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<String> writeContract(
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

  static Future<GetTransactionReturnType> getTransaction(
    GetTransactionParameters getTransactionParameters,
  ) async {
    final result = await window.wagmiCore
        .getTransaction(
          getTransactionParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<WatchContractEventReturnType> watchContractEvent(
    WatchContractEventParameters watchContractEventParameters,
  ) async {
    final result = await window.wagmiCore
        .watchContractEvent(
          watchContractEventParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<BigInt> getTransactionConfirmations(
    GetTransactionConfirmationsParameters getTransactionConfirmationsParameters,
  ) async {
    final result = await window.wagmiCore
        .getTransactionConfirmations(
          getTransactionConfirmationsParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<GetBlockReturnType> getBlock(
    GetBlockParameters getBlockParameters,
  ) async {
    final result = await window.wagmiCore
        .getBlock(
          getBlockParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<int> getBlockTransactionCount(
    GetBlockTransactionCountParameters getBlockTransactionCountParameters,
  ) async {
    final result = await window.wagmiCore
        .getBlockTransactionCount(
          getBlockTransactionCountParameters.toJS,
        )
        .toDart;
    return result.toDartInt;
  }

  // call function
  static Future<CallReturnType> call(
    CallParameters callParameters,
  ) async {
    final result = await window.wagmiCore
        .call(
          callParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // estimate fees per gas
  static Future<EstimateFeesPerGasReturnType> estimateFeesPerGas(
    EstimateFeesPerGasParameters estimateFeesPerGasParameters,
  ) async {
    final result = await window.wagmiCore
        .estimateFeesPerGas(
          estimateFeesPerGasParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // estimate max priority fee per gas
  static Future<BigInt> estimateMaxPriorityFeePerGas(
    EstimateMaxPriorityFeePerGasParameters
        estimateMaxPriorityFeePerGasParameters,
  ) async {
    final result = await window.wagmiCore
        .estimateMaxPriorityFeePerGas(
          estimateMaxPriorityFeePerGasParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // get byte code
  static Future<String> getBytecode(
    GetByteCodeParameters getByteCodeParameters,
  ) async {
    final result = await window.wagmiCore
        .getBytecode(
          getByteCodeParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // disconnect
  static Future<void> disconnect(
    DisconnectParameters disconnectParameters,
  ) async {
    await window.wagmiCore
        .disconnect(
          disconnectParameters.toJS,
        )
        .toDart;
  }

  static Future<WaitForTransactionReceiptReturnType> waitForTransactionReceipt(
    WaitForTransactionReceiptParameters waitForTransactionReceiptParameters,
  ) async {
    final result = await window.wagmiCore
        .waitForTransactionReceipt(
          waitForTransactionReceiptParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // get fee history
  static Future<GetFeeHistoryReturnType> getFeeHistory(
    GetFeeHistoryParameters getFeeHistoryParameters,
  ) async {
    final result = await window.wagmiCore
        .getFeeHistory(
          getFeeHistoryParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }
}
