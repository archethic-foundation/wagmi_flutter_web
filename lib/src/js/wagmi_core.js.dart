part of 'wagmi.js.dart';

@JS()
extension type JSWagmiCore(JSObject _) implements JSObject {
  external JSAccount getAccount();
  external JSNumber getChainId();
  external JSArray<JSObject> getChains();
  external JSPromise<JSBigInt> getBlockNumber(
    JSGetBlockNumberParameters getBlockNumberParameters,
  );
  external JSPromise<JSNumber> getTransactionCount(
    JSGetTransactionCountParameters getTransactionCountParameters,
  );
  external JSPromise<JSGetGasPriceReturnType> getGasPrice(
    JSGetGasPriceParameters getGasPriceParameters,
  );
  external JSPromise<JSGetBalanceReturnType> getBalance(
    JSGetBalanceParameters getBalanceParameters,
  );
  external JSPromise<JSGetTokenReturnType> getToken(
    JSGetTokenParameters getTokenParameters,
  );
  external JSPromise<JSSignMessageReturnType> signMessage(
    JSSignMessageParameters signMessageParameters,
  );
  external JSPromise<JSAny> readContract(
    JSReadContractParameters readContractParameters,
  );
  external JSPromise<JSArray<JSObject>> readContracts(
    JSReadContractsParameters readContractsParameters,
  );
  external JSPromise<JSGetTransactionReceiptReturnType> getTransactionReceipt(
    JSGetTransactionReceiptParameters getTransactionReceiptParameters,
  );
  external JSPromise<JSString> writeContract(
    JSObject writeContractParameters,
  );
  external JSPromise<JSString> sendTransaction(
    JSObject sendTransactionParameters,
  );
  external JSPromise<JSWatchChainIdReturnType> watchChainId(
    JSWatchChainIdParameters watchChainIdParameters,
  );
  external JSPromise<JSBigInt> estimateGas(
    JSObject estimateGasParameters,
  );
  external JSPromise<JSBigInt> estimateMaxPriorityFeePerGas(
    JSEstimateMaxPriorityFeePerGasParameters
        estimateMaxPriorityFeePerGasParameters,
  );
  external JSPromise<JSGetTransactionReturnType> getTransaction(
    JSGetTransactionParameters readContractsParameters,
  );
  external JSPromise<JSBigInt> getTransactionConfirmations(
    JSGetTransactionConfirmationsParameters readContractsParameters,
  );
  external JSPromise<JSGetBlockReturnType> getBlock(
    JSGetBlockParameters getBlockParameters,
  );
  external JSPromise<JSNumber> getBlockTransactionCount(
    JSGetBlockTransactionCountParameters getBlockTransactionCountParameters,
  );
  external JSPromise<JSCallReturnType> call(
    JSCallParameters callParameters,
  );
  external JSPromise<JSEstimateFeesPerGasReturnType> estimateFeesPerGas(
    JSEstimateFeesPerGasParameters estimateFeesPerGasParameters,
  );
  external JSPromise<JSString> getBytecode(
    JSGetByteCodeParameters getByteCodeParameters,
  );
  external JSPromise disconnect(
    JSDisconnectParameters disconnectParameters,
  );
  // wait for transaction receipt
  external JSPromise<JSWaitForTransactionReceiptReturnType>
      waitForTransactionReceipt(
    JSWaitForTransactionReceiptParameters waitForTransactionReceipt,
  );
  // get fee history
  external JSPromise<JSGetFeeHistoryReturnType> getFeeHistory(
    JSGetFeeHistoryParameters getFeeHistoryParameters,
  );
  external JSPromise<JSWatchContractEventReturnType> watchContractEvent(
    JSWatchContractEventParameters watchContractEventParameters,
  );
  external JSPromise<JSObject> switchChain(
    JSSwitchChainParameters switchChainParameters,
    JSBoolean transportOnlyConfig,
  );
  // switch account
  external JSPromise<JSObject> switchAccount(
    JSSwitchAccountParameters switchAccountParameters,
    JSBoolean transportOnlyConfig,
  );
  // verify message
  external JSPromise<JSBoolean> verifyMessage(
    JSVerifyMessageParameters verifyMessageParameters,
    JSBoolean transportOnlyConfig,
  );

  // watch account
  external JSPromise<JSWatchAccountReturnType> watchAccount(
    JSWatchAccountParameters watchChainIdParameters,
    JSBoolean transportOnlyConfig,
  );

  // watch connections
  external JSPromise<JSWatchConnectionsReturnType> watchConnections(
    JSWatchConnectionsParameters watchConnectionsParameters,
    JSBoolean transportOnlyConfig,
  );
}
