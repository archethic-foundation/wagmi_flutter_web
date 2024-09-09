part of 'wagmi.js.dart';

@JS()
extension type JSWagmiCore(JSObject _) implements JSObject {
  external JSAccount getAccount(JSBoolean useSecondConfig);
  external JSNumber getChainId(JSBoolean useSecondConfig);
  external JSArray<JSObject> getChains(JSBoolean useSecondConfig);
  external JSPromise<JSBigInt> getBlockNumber(
    JSGetBlockNumberParameters getBlockNumberParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSNumber> getTransactionCount(
    JSGetTransactionCountParameters getTransactionCountParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSGetGasPriceReturnType> getGasPrice(
    JSGetGasPriceParameters getGasPriceParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSGetBalanceReturnType> getBalance(
    JSGetBalanceParameters getBalanceParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSGetTokenReturnType> getToken(
    JSGetTokenParameters getTokenParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSSignMessageReturnType> signMessage(
    JSSignMessageParameters signMessageParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSBigInt> readContract(
    JSReadContractParameters readContractParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSArray<JSObject>> readContracts(
    JSReadContractsParameters readContractsParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSGetTransactionReceiptReturnType> getTransactionReceipt(
    JSGetTransactionReceiptParameters getTransactionReceiptParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSString> writeContract(
    JSObject writeContractParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSString> sendTransaction(
    JSObject sendTransactionParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSWatchChainIdReturnType> watchChainId(
    JSWatchChainIdParameters watchChainIdParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSBigInt> estimateGas(
    JSObject estimateGasParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSBigInt> estimateMaxPriorityFeePerGas(
    JSEstimateMaxPriorityFeePerGasParameters
        estimateMaxPriorityFeePerGasParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSGetTransactionReturnType> getTransaction(
    JSGetTransactionParameters readContractsParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSBigInt> getTransactionConfirmations(
    JSGetTransactionConfirmationsParameters readContractsParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSGetBlockReturnType> getBlock(
    JSGetBlockParameters getBlockParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSNumber> getBlockTransactionCount(
    JSGetBlockTransactionCountParameters getBlockTransactionCountParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSCallReturnType> call(
    JSCallParameters callParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSEstimateFeesPerGasReturnType> estimateFeesPerGas(
    JSEstimateFeesPerGasParameters estimateFeesPerGasParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSString> getBytecode(
    JSGetByteCodeParameters getByteCodeParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise disconnect(
    JSDisconnectParameters disconnectParameters,
    JSBoolean useSecondConfig,
  );
  // wait for transaction receipt
  external JSPromise<JSWaitForTransactionReceiptReturnType>
      waitForTransactionReceipt(
    JSWaitForTransactionReceiptParameters waitForTransactionReceipt,
    JSBoolean useSecondConfig,
  );
  // get fee history
  external JSPromise<JSGetFeeHistoryReturnType> getFeeHistory(
    JSGetFeeHistoryParameters getFeeHistoryParameters,
    JSBoolean useSecondConfig,
  );
  external JSPromise<JSWatchContractEventReturnType> watchContractEvent(
    JSWatchContractEventParameters watchContractEventParameters,
    JSBoolean useSecondConfig,
  );
}
