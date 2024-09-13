part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getFeeHistory)
@JS()
extension type JSGetFeeHistoryParameters._(JSObject _) implements JSObject {
  external JSGetFeeHistoryParameters({
    JSNumber? chainId,
    required JSNumber blockCount,
    required JSArray<JSNumber> rewardPercentiles,
    JSBigInt? blockNumber,
    JSString? blockTag,
  });
  external JSNumber? chainId;
  external JSBigInt blockCount;
  external JSArray<JSNumber> rewardPercentiles;
  external JSBigInt? blockNumber;
  external JSString? blockTag;
}

@JS()
extension type JSGetFeeHistoryReturnType(JSObject _) implements JSObject {
  external JSArray<JSBigInt> baseFeePerGas;
  external JSArray<JSNumber> gasUsedRatio;
  external JSBigInt oldestBlock;
  external JSArray<JSArray<JSBigInt>>? reward;

  GetFeeHistoryReturnType get toDart => GetFeeHistoryReturnType(
        baseFeePerGas: baseFeePerGas.toDartBigIntList,
        gasUsedRatio: gasUsedRatio.toDartDecimalList,
        oldestBlock: oldestBlock.toDart,
        reward:
            reward?.toDart.map((jsList) => jsList.toDartBigIntList).toList(),
      );
}

@JS()
extension type JSGetFeeHistoryErrorType(JSObject _) implements JSObject {}
