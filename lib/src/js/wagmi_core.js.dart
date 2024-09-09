part of 'wagmi.js.dart';

@JS()
extension type JSWagmiCore(JSObject _) implements JSObject {
  external JSAccount getAccount(JSBoolean transportOnlyConfig);
  external JSNumber getChainId(JSBoolean transportOnlyConfig);
  external JSArray<JSObject> getChains(JSBoolean transportOnlyConfig);
  external JSPromise<JSBigInt> getBlockNumber(
    JSGetBlockNumberParameters getBlockNumberParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSNumber> getTransactionCount(
    JSGetTransactionCountParameters getTransactionCountParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSGetGasPriceReturnType> getGasPrice(
    JSGetGasPriceParameters getGasPriceParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSGetBalanceReturnType> getBalance(
    JSGetBalanceParameters getBalanceParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSGetTokenReturnType> getToken(
    JSGetTokenParameters getTokenParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSSignMessageReturnType> signMessage(
    JSSignMessageParameters signMessageParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSBigInt> readContract(
    JSReadContractParameters readContractParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSArray<JSObject>> readContracts(
    JSReadContractsParameters readContractsParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSGetTransactionReceiptReturnType> getTransactionReceipt(
    JSGetTransactionReceiptParameters getTransactionReceiptParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSString> writeContract(
    JSObject writeContractParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSString> sendTransaction(
    JSObject sendTransactionParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSWatchChainIdReturnType> watchChainId(
    JSWatchChainIdParameters watchChainIdParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSBigInt> estimateGas(
    JSObject estimateGasParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSBigInt> estimateMaxPriorityFeePerGas(
    JSEstimateMaxPriorityFeePerGasParameters
        estimateMaxPriorityFeePerGasParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSGetTransactionReturnType> getTransaction(
    JSGetTransactionParameters readContractsParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSBigInt> getTransactionConfirmations(
    JSGetTransactionConfirmationsParameters readContractsParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSGetBlockReturnType> getBlock(
    JSGetBlockParameters getBlockParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSNumber> getBlockTransactionCount(
    JSGetBlockTransactionCountParameters getBlockTransactionCountParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSCallReturnType> call(
    JSCallParameters callParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSEstimateFeesPerGasReturnType> estimateFeesPerGas(
    JSEstimateFeesPerGasParameters estimateFeesPerGasParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSString> getBytecode(
    JSGetByteCodeParameters getByteCodeParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise disconnect(
    JSDisconnectParameters disconnectParameters,
    JSBoolean transportOnlyConfig,
  );
  // wait for transaction receipt
  external JSPromise<JSWaitForTransactionReceiptReturnType>
      waitForTransactionReceipt(
    JSWaitForTransactionReceiptParameters waitForTransactionReceipt,
    JSBoolean transportOnlyConfig,
  );
  // get fee history
  external JSPromise<JSGetFeeHistoryReturnType> getFeeHistory(
    JSGetFeeHistoryParameters getFeeHistoryParameters,
    JSBoolean transportOnlyConfig,
  );
  external JSPromise<JSWatchContractEventReturnType> watchContractEvent(
    JSWatchContractEventParameters watchContractEventParameters,
    JSBoolean transportOnlyConfig,
  );
}
