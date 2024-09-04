part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/GetFeeHistory)
@JS()
extension type JSGetFeeHistoryParameters._(JSObject _) implements JSObject {
  external JSGetFeeHistoryParameters({
    JSNumber? chainId,
    JSNumber? blockCount,
    JSArray<JSNumber>? rewardPercentiles,
    JSBigInt? blockNumber,
    JSString? blockTag,
  });
  external JSNumber? chainId;
  external JSBigInt? blockCount;
  external JSArray<JSNumber>? rewardPercentiles;
  external JSBigInt? blockNumber;
  external JSString? blockTag;
}

@JS()
extension type JSGetFeeHistoryReturnType(JSObject _) implements JSObject {
  external JSArray<JSBigInt>? baseFeePerGas;
  external JSArray<JSNumber>? gasUsedRatio;
  external JSBigInt? oldestBlock;
  external JSArray<JSArray<JSBigInt>>? reward;

  GetFeeHistoryReturnType get toDart => GetFeeHistoryReturnType(
        baseFeePerGas: baseFeePerGas?.jsify() as List<dynamic>?,
        gasUsedRatio: gasUsedRatio?.jsify() as List<dynamic>?,
        oldestBlock: oldestBlock?.toDart,
        reward: reward?.jsify() as List<dynamic>?,
      );
}

@JS()
extension type JSGetFeeHistoryErrorType(JSObject _) implements JSObject {}
