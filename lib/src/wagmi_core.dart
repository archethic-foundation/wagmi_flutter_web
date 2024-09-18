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
import 'package:wagmi_flutter_web/src/models/config.dart';
import 'package:wagmi_flutter_web/src/utils/utils_js.dart';

class Core {
  static Account getAccount(Config config) {
    return window.wagmiCore.getAccount(config).toDart;
  }

  static int getChainId(Config config) {
    return window.wagmiCore.getChainId(config).toDartInt;
  }

  static List<Chain> getChains(Config config) {
    final result = window.wagmiCore.getChains(config);

    return result.toDart
        .map(
          (item) => Chain.fromMap(item.toMap),
        )
        .toList();
  }

  static Future<BigInt> getBlockNumber(
    Config config,
    GetBlockNumberParameters getBlockNumberParameters,
  ) async {
    final result = await window.wagmiCore
        .getBlockNumber(
          config,
          getBlockNumberParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<BigInt> getGasPrice(
    Config config,
    GetGasPriceParameters getGasPriceParameters,
  ) async {
    final result = await window.wagmiCore
        .getGasPrice(
          config,
          getGasPriceParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<GetBalanceReturnType> getBalance(
    Config config,
    GetBalanceParameters getBalanceParameters,
  ) async {
    final result = await window.wagmiCore
        .getBalance(
          config,
          getBalanceParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<int> getTransactionCount(
    Config config,
    GetTransactionCountParameters getTransactionCountParameters,
  ) async {
    final result = await window.wagmiCore
        .getTransactionCount(
          config,
          getTransactionCountParameters.toJS,
        )
        .toDart;
    return result.toDartInt;
  }

  static Future<GetTokenReturnType> getToken(
    Config config,
    GetTokenParameters getTokenParameters,
  ) async {
    final result = await window.wagmiCore
        .getToken(
          config,
          getTokenParameters.toJS,
        )
        .toDart;

    return result.toDart;
  }

  static Future<String> signMessage(
    Config config,
    SignMessageParameters signMessageParameters,
  ) async {
    final result = await window.wagmiCore
        .signMessage(
          config,
          signMessageParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // read contract
  static Future<dynamic> readContract(
    Config config,
    ReadContractParameters readContractParameters,
  ) async {
    final result = await window.wagmiCore
        .readContract(
          config,
          readContractParameters.toJS,
        )
        .toDart;
    return UtilsJS.dartify(result);
  }

  static Future<List<Map<String, dynamic>>> readContracts(
    Config config,
    ReadContractsParameters readContractsParameters,
  ) async {
    final result = await window.wagmiCore
        .readContracts(
          config,
          readContractsParameters.toJS,
        )
        .toDart;
    return result.toDartDynamicList.cast<Map<String, dynamic>>();
  }

  // get transaction receipt
  static Future<GetTransactionReceiptReturnType> getTransactionReceipt(
    Config config,
    GetTransactionReceiptParameters getTransactionReceiptParameters,
  ) async {
    final result = await window.wagmiCore
        .getTransactionReceipt(
          config,
          getTransactionReceiptParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<void Function()> watchChainId(
    Config config,
    WatchChainIdParameters watchChainIdParameters,
  ) async {
    final result = await window.wagmiCore
        .watchChainId(
          config,
          watchChainIdParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<String> sendTransaction(
    Config config,
    SendTransactionParameters sendTransactionParameters,
  ) async {
    final result = await window.wagmiCore
        .sendTransaction(
          config,
          sendTransactionParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<String> writeContract(
    Config config,
    WriteContractParameters writeContractParameters,
  ) async {
    final result = await window.wagmiCore
        .writeContract(
          config,
          writeContractParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<BigInt> estimateGas(
    Config config,
    EstimateGasParameters estimateGasParameters,
  ) async {
    final result = await window.wagmiCore
        .estimateGas(
          config,
          estimateGasParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<GetTransactionReturnType> getTransaction(
    Config config,
    GetTransactionParameters getTransactionParameters,
  ) async {
    final result = await window.wagmiCore
        .getTransaction(
          config,
          getTransactionParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<WatchContractEventReturnType> watchContractEvent(
    Config config,
    WatchContractEventParameters watchContractEventParameters,
  ) async {
    final result = await window.wagmiCore
        .watchContractEvent(
          config,
          watchContractEventParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<BigInt> getTransactionConfirmations(
    Config config,
    GetTransactionConfirmationsParameters getTransactionConfirmationsParameters,
  ) async {
    final result = await window.wagmiCore
        .getTransactionConfirmations(
          config,
          getTransactionConfirmationsParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<GetBlockReturnType> getBlock(
    Config config,
    GetBlockParameters getBlockParameters,
  ) async {
    final result = await window.wagmiCore
        .getBlock(
          config,
          getBlockParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<int> getBlockTransactionCount(
    Config config,
    GetBlockTransactionCountParameters getBlockTransactionCountParameters,
  ) async {
    final result = await window.wagmiCore
        .getBlockTransactionCount(
          config,
          getBlockTransactionCountParameters.toJS,
        )
        .toDart;
    return result.toDartInt;
  }

  // call function
  static Future<CallReturnType> call(
    Config config,
    CallParameters callParameters,
  ) async {
    final result = await window.wagmiCore
        .call(
          config,
          callParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // estimate fees per gas
  static Future<EstimateFeesPerGasReturnType> estimateFeesPerGas(
    Config config,
    EstimateFeesPerGasParameters estimateFeesPerGasParameters,
  ) async {
    final result = await window.wagmiCore
        .estimateFeesPerGas(
          config,
          estimateFeesPerGasParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // estimate max priority fee per gas
  static Future<BigInt> estimateMaxPriorityFeePerGas(
    Config config,
    EstimateMaxPriorityFeePerGasParameters
        estimateMaxPriorityFeePerGasParameters,
  ) async {
    final result = await window.wagmiCore
        .estimateMaxPriorityFeePerGas(
          config,
          estimateMaxPriorityFeePerGasParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // get byte code
  static Future<String> getBytecode(
    Config config,
    GetByteCodeParameters getByteCodeParameters,
  ) async {
    final result = await window.wagmiCore
        .getBytecode(
          config,
          getByteCodeParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // disconnect
  static Future<void> disconnect(
    Config config,
    DisconnectParameters disconnectParameters,
  ) async {
    await window.wagmiCore
        .disconnect(
          config,
          disconnectParameters.toJS,
        )
        .toDart;
  }

  static Future<WaitForTransactionReceiptReturnType> waitForTransactionReceipt(
    Config config,
    WaitForTransactionReceiptParameters waitForTransactionReceiptParameters,
  ) async {
    final result = await window.wagmiCore
        .waitForTransactionReceipt(
          config,
          waitForTransactionReceiptParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // get fee history
  static Future<GetFeeHistoryReturnType> getFeeHistory(
    Config config,
    GetFeeHistoryParameters getFeeHistoryParameters,
  ) async {
    final result = await window.wagmiCore
        .getFeeHistory(
          config,
          getFeeHistoryParameters.toJS,
        )
        .toDart;
    return result.toDart;
  }
}
