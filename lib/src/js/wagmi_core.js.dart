part of 'wagmi.js.dart';

@JS()
extension type JSWagmiCore(JSObject _) implements JSObject {
  external JSAccount getAccount();
  // external GetConnectorsReturnType getConnectors();
  external JSNumber getChainId();
  external JSArray<JSObject> getChains();
  external JSPromise<JSGetBlockNumberReturnType> getBlockNumber(
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
  external JSPromise<JSBigInt> readContract(
    JSReadContractParameters readContractParameters,
  );
  external JSPromise<JSArray<JSObject>> readContracts(
    JSReadContractsParameters readContractsParameters,
  );
  external JSPromise<JSGetTransactionReceiptReturnType> getTransactionReceipt(
    JSGetTransactionReceiptParameters getTransactionReceiptParameters,
  );
  external JSPromise<JSWriteContractReturnType> writeContract(
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
  external JSPromise<JSGetByteCodeReturnType> getBytecode(
    JSGetByteCodeParameters getByteCodeParameters,
  );
}
