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
  static Account getAccount({
    bool useSecondConfig = false,
  }) {
    return window.wagmiCore
        .getAccount(
          useSecondConfig.toJS,
        )
        .toDart;
  }

  static int getChainId({
    bool useSecondConfig = false,
  }) {
    return window.wagmiCore
        .getChainId(
          useSecondConfig.toJS,
        )
        .toDartInt;
  }

  static List<Chain> getChains({
    bool useSecondConfig = false,
  }) {
    final result = window.wagmiCore.getChains(
      useSecondConfig.toJS,
    );
    final list = <Chain>[];
    for (var i = 0; i < result.toDart.length; i++) {
      final chainMap = UtilsJS.jsObjectToMap(result.toDart[i]);
      list.add(Chain.fromMap(chainMap));
    }
    return list;
  }

  static Future<BigInt> getBlockNumber(
    GetBlockNumberParameters getBlockNumberParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .getBlockNumber(
          getBlockNumberParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<BigInt> getGasPrice(
    GetGasPriceParameters getGasPriceParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .getGasPrice(
          getGasPriceParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<GetBalanceReturnType> getBalance(
    GetBalanceParameters getBalanceParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .getBalance(
          getBalanceParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<int> getTransactionCount(
    GetTransactionCountParameters getTransactionCountParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .getTransactionCount(
          getTransactionCountParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDartInt;
  }

  static Future<GetTokenReturnType> getToken(
    GetTokenParameters getTokenParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .getToken(
          getTokenParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;

    return result.toDart;
  }

  static Future<String> signMessage(
    SignMessageParameters signMessageParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .signMessage(
          signMessageParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // read contract
  static Future<BigInt> readContract(
    ReadContractParameters readContractParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .readContract(
          readContractParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<List<Map<String, dynamic>>> readContracts(
    ReadContractsParameters readContractsParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .readContracts(
          readContractsParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    // call jsObjectToMap to convert JSObject to Dart Map
    final list = <Map<String, dynamic>>[];
    for (var i = 0; i < result.toDart.length; i++) {
      list.add(UtilsJS.jsObjectToMap(result.toDart[i]));
    }
    return list;
  }

  // get transaction receipt
  static Future<GetTransactionReceiptReturnType> getTransactionReceipt(
    GetTransactionReceiptParameters getTransactionReceiptParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .getTransactionReceipt(
          getTransactionReceiptParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<void Function()> watchChainId(
    WatchChainIdParameters watchChainIdParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .watchChainId(
          watchChainIdParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<String> sendTransaction(
    SendTransactionParameters sendTransactionParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .sendTransaction(
          sendTransactionParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<String> writeContract(
    WriteContractParameters writeContractParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .writeContract(
          writeContractParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<BigInt> estimateGas(
    EstimateGasParameters estimateGasParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .estimateGas(
          estimateGasParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<GetTransactionReturnType> getTransaction(
    GetTransactionParameters getTransactionParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .getTransaction(
          getTransactionParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<WatchContractEventReturnType> watchContractEvent(
    WatchContractEventParameters watchContractEventParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .watchContractEvent(
          watchContractEventParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<BigInt> getTransactionConfirmations(
    GetTransactionConfirmationsParameters
        getTransactionConfirmationsParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .getTransactionConfirmations(
          getTransactionConfirmationsParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<GetBlockReturnType> getBlock(
    GetBlockParameters getBlockParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .getBlock(
          getBlockParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  static Future<int> getBlockTransactionCount(
    GetBlockTransactionCountParameters getBlockTransactionCountParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .getBlockTransactionCount(
          getBlockTransactionCountParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDartInt;
  }

  // call function
  static Future<CallReturnType> call(
    CallParameters callParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .call(
          callParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // estimate fees per gas
  static Future<EstimateFeesPerGasReturnType> estimateFeesPerGas(
    EstimateFeesPerGasParameters estimateFeesPerGasParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .estimateFeesPerGas(
          estimateFeesPerGasParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // estimate max priority fee per gas
  static Future<BigInt> estimateMaxPriorityFeePerGas(
    EstimateMaxPriorityFeePerGasParameters
        estimateMaxPriorityFeePerGasParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .estimateMaxPriorityFeePerGas(
          estimateMaxPriorityFeePerGasParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // get byte code
  static Future<String> getBytecode(
    GetByteCodeParameters getByteCodeParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .getBytecode(
          getByteCodeParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // disconnect
  static Future<void> disconnect(
    DisconnectParameters disconnectParameters, {
    bool useSecondConfig = false,
  }) async {
    await window.wagmiCore
        .disconnect(
          disconnectParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
  }

  static Future<WaitForTransactionReceiptReturnType> waitForTransactionReceipt(
    WaitForTransactionReceiptParameters waitForTransactionReceiptParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .waitForTransactionReceipt(
          waitForTransactionReceiptParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }

  // get fee history
  static Future<GetFeeHistoryReturnType> getFeeHistory(
    GetFeeHistoryParameters getFeeHistoryParameters, {
    bool useSecondConfig = false,
  }) async {
    final result = await window.wagmiCore
        .getFeeHistory(
          getFeeHistoryParameters.toJS,
          useSecondConfig.toJS,
        )
        .toDart;
    return result.toDart;
  }
}
