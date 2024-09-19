part of 'wagmi.js.dart';

@JS()
extension type JSWagmiCore(JSObject _) implements JSObject {
  external JSAccount getAccount(JSConfig config);
  external JSNumber getChainId(JSConfig config);
  external JSArray<JSObject> getChains(JSConfig config);
  external JSPromise<JSBigInt> getBlockNumber(
    JSConfig config,
    JSGetBlockNumberParameters getBlockNumberParameters,
  );
  external JSPromise<JSNumber> getTransactionCount(
    JSConfig config,
    JSGetTransactionCountParameters getTransactionCountParameters,
  );
  external JSPromise<JSGetGasPriceReturnType> getGasPrice(
    JSConfig config,
    JSGetGasPriceParameters getGasPriceParameters,
  );
  external JSPromise<JSGetBalanceReturnType> getBalance(
    JSConfig config,
    JSGetBalanceParameters getBalanceParameters,
  );
  external JSPromise<JSGetTokenReturnType> getToken(
    JSConfig config,
    JSGetTokenParameters getTokenParameters,
  );
  external JSPromise<JSSignMessageReturnType> signMessage(
    JSConfig config,
    JSSignMessageParameters signMessageParameters,
  );
  external JSPromise<JSAny> readContract(
    JSConfig config,
    JSReadContractParameters readContractParameters,
  );
  external JSPromise<JSArray<JSObject>> readContracts(
    JSConfig config,
    JSReadContractsParameters readContractsParameters,
  );
  external JSPromise<JSGetTransactionReceiptReturnType> getTransactionReceipt(
    JSConfig config,
    JSGetTransactionReceiptParameters getTransactionReceiptParameters,
  );
  external JSPromise<JSString> writeContract(
    JSConfig config,
    JSObject writeContractParameters,
  );
  external JSPromise<JSString> sendTransaction(
    JSConfig config,
    JSObject sendTransactionParameters,
  );
  external JSPromise<JSWatchChainIdReturnType> watchChainId(
    JSConfig config,
    JSWatchChainIdParameters watchChainIdParameters,
  );
  external JSPromise<JSBigInt> estimateGas(
    JSConfig config,
    JSObject estimateGasParameters,
  );
  external JSPromise<JSBigInt> estimateMaxPriorityFeePerGas(
    JSConfig config,
    JSEstimateMaxPriorityFeePerGasParameters
        estimateMaxPriorityFeePerGasParameters,
  );
  external JSPromise<JSGetTransactionReturnType> getTransaction(
    JSConfig config,
    JSGetTransactionParameters readContractsParameters,
  );
  external JSPromise<JSBigInt> getTransactionConfirmations(
    JSConfig config,
    JSGetTransactionConfirmationsParameters readContractsParameters,
  );
  external JSPromise<JSGetBlockReturnType> getBlock(
    JSConfig config,
    JSGetBlockParameters getBlockParameters,
  );
  external JSPromise<JSNumber> getBlockTransactionCount(
    JSConfig config,
    JSGetBlockTransactionCountParameters getBlockTransactionCountParameters,
  );
  external JSPromise<JSCallReturnType> call(
    JSConfig config,
    JSCallParameters callParameters,
  );
  external JSPromise<JSEstimateFeesPerGasReturnType> estimateFeesPerGas(
    JSConfig config,
    JSEstimateFeesPerGasParameters estimateFeesPerGasParameters,
  );
  external JSPromise<JSString> getBytecode(
    JSConfig config,
    JSGetByteCodeParameters getByteCodeParameters,
  );
  external JSPromise disconnect(
    JSConfig config,
    JSDisconnectParameters disconnectParameters,
  );
  // wait for transaction receipt
  external JSPromise<JSWaitForTransactionReceiptReturnType>
      waitForTransactionReceipt(
    JSConfig config,
    JSWaitForTransactionReceiptParameters waitForTransactionReceipt,
  );
  // get fee history
  external JSPromise<JSGetFeeHistoryReturnType> getFeeHistory(
    JSConfig config,
    JSGetFeeHistoryParameters getFeeHistoryParameters,
  );
  external JSPromise<JSWatchContractEventReturnType> watchContractEvent(
    JSConfig config,
    JSWatchContractEventParameters watchContractEventParameters,
  );

  external JSPromise<JSObject> switchChain(
    JSConfig config,
    JSSwitchChainParameters switchChainParameters,
  );
  // switch account
  external JSPromise<JSObject> switchAccount(
    JSConfig config,
    JSSwitchAccountParameters switchAccountParameters,
  );
  // verify message
  external JSPromise<JSBoolean> verifyMessage(
    JSConfig config,
    JSVerifyMessageParameters verifyMessageParameters,
  );

  // watch account
  external JSPromise<JSWatchAccountReturnType> watchAccount(
    JSConfig config,
    JSWatchAccountParameters watchChainIdParameters,
  );

  // watch connections
  external JSPromise<JSWatchConnectionsReturnType> watchConnections(
    JSConfig config,
    JSWatchConnectionsParameters watchConnectionsParameters,
  );
}
