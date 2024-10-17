part of 'wagmi.js.dart';

@JS()
extension type JSWagmiCore(JSObject _) implements JSObject {
  external JSAccount getAccount();
  external JSNumber getChainId();
  external JSArray<JSConnection> getConnections();
  external JSArray<JSObject> getChains();
  external JSPromise<JSBigInt> getBlockNumber(
    JSString configKey,
    JSGetBlockNumberParameters getBlockNumberParameters,
  );
  external JSPromise<JSNumber> getTransactionCount(
    JSString configKey,
    JSGetTransactionCountParameters getTransactionCountParameters,
  );
  external JSPromise<JSGetGasPriceReturnType> getGasPrice(
    JSString configKey,
    JSGetGasPriceParameters getGasPriceParameters,
  );
  external JSPromise<JSGetBalanceReturnType> getBalance(
    JSString configKey,
    JSGetBalanceParameters getBalanceParameters,
  );
  external JSPromise<JSGetTokenReturnType> getToken(
    JSString configKey,
    JSGetTokenParameters getTokenParameters,
  );
  external JSPromise<JSSignMessageReturnType> signMessage(
    JSString configKey,
    JSSignMessageParameters signMessageParameters,
  );
  external JSPromise<JSAny> readContract(
    JSString configKey,
    JSReadContractParameters readContractParameters,
  );
  external JSPromise<JSArray<JSObject>> readContracts(
    JSString configKey,
    JSReadContractsParameters readContractsParameters,
  );
  external JSPromise<JSGetTransactionReceiptReturnType> getTransactionReceipt(
    JSString configKey,
    JSGetTransactionReceiptParameters getTransactionReceiptParameters,
  );
  external JSPromise<JSString> writeContract(
    JSString configKey,
    JSObject writeContractParameters,
  );
  external JSPromise<JSString> sendTransaction(
    JSString configKey,
    JSObject sendTransactionParameters,
  );
  external JSPromise<JSWatchChainIdReturnType> watchChainId(
    JSString configKey,
    JSWatchChainIdParameters watchChainIdParameters,
  );
  external JSPromise<JSBigInt> estimateGas(
    JSString configKey,
    JSObject estimateGasParameters,
  );
  external JSPromise<JSBigInt> estimateMaxPriorityFeePerGas(
    JSString configKey,
    JSEstimateMaxPriorityFeePerGasParameters
        estimateMaxPriorityFeePerGasParameters,
  );
  external JSPromise<JSGetTransactionReturnType> getTransaction(
    JSString configKey,
    JSGetTransactionParameters readContractsParameters,
  );
  external JSPromise<JSBigInt> getTransactionConfirmations(
    JSString configKey,
    JSGetTransactionConfirmationsParameters readContractsParameters,
  );
  external JSPromise<JSGetBlockReturnType> getBlock(
    JSString configKey,
    JSGetBlockParameters getBlockParameters,
  );
  external JSPromise<JSNumber> getBlockTransactionCount(
    JSString configKey,
    JSGetBlockTransactionCountParameters getBlockTransactionCountParameters,
  );
  external JSPromise<JSCallReturnType> call(
    JSString configKey,
    JSCallParameters callParameters,
  );
  external JSPromise<JSEstimateFeesPerGasReturnType> estimateFeesPerGas(
    JSString configKey,
    JSEstimateFeesPerGasParameters estimateFeesPerGasParameters,
  );
  external JSPromise<JSString> getBytecode(
    JSString configKey,
    JSGetByteCodeParameters getByteCodeParameters,
  );
  external JSPromise disconnect(
    JSString configKey,
    JSDisconnectParameters disconnectParameters,
  );
  // wait for transaction receipt
  external JSPromise<JSWaitForTransactionReceiptReturnType>
      waitForTransactionReceipt(
    JSString configKey,
    JSWaitForTransactionReceiptParameters waitForTransactionReceipt,
  );
  // get fee history
  external JSPromise<JSGetFeeHistoryReturnType> getFeeHistory(
    JSString configKey,
    JSGetFeeHistoryParameters getFeeHistoryParameters,
  );
  external JSPromise<JSWatchContractEventReturnType> watchContractEvent(
    JSString configKey,
    JSWatchContractEventParameters watchContractEventParameters,
  );

  external JSPromise<JSObject> switchChain(
    JSString configKey,
    JSSwitchChainParameters switchChainParameters,
  );
  // switch account
  external JSPromise<JSObject> switchAccount(
    JSString configKey,
    JSSwitchAccountParameters switchAccountParameters,
  );
  // verify message
  external JSPromise<JSBoolean> verifyMessage(
    JSString configKey,
    JSVerifyMessageParameters verifyMessageParameters,
  );

  // watch account
  external JSPromise<JSWatchAccountReturnType> watchAccount(
    JSString configKey,
    JSWatchAccountParameters watchAccountParameters,
  );

  // watch connections
  external JSPromise<JSWatchConnectionsReturnType> watchConnections(
    JSString configKey,
    JSWatchConnectionsParameters watchConnectionsParameters,
  );
  // getWalletClient
  external JSPromise<JSGetWalletClientReturnType> getWalletClient(
    JSString configKey,
    JSGetWalletClientParameters getWalletClientParameters,
  );

  // deployContract
  external JSPromise<JSString> deployContract(
    JSString configKey,
    JSDeployContractParameters deployContractParameters,
  );
  // watchAsset
  external JSPromise<JSBoolean> watchAsset(
    JSString configKey,
    JSWatchAssetParameters watchAssetParameters,
  );
  // reconnect
  external JSPromise<JSReconnectReturnType> reconnect(
    JSString configKey,
    JSReconnectParameters reconnectParameters,
  );
}
