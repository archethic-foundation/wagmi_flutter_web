part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getBalance)

extension UnitToJS on Unit {
  JSAny get toJS => when(
        ether: () => 'ether'.toJS,
        gwei: () => 'gwei'.toJS,
        wei: () => 'wei'.toJS,
        id: (id) => id.toJS,
      );
}

@JS()
extension type JSGetBalanceParameters._(JSObject _) implements JSObject {
  external JSGetBalanceParameters({
    required JSString address,
    JSBigInt? blockNumber,
    JSString? blockTag,
    JSNumber? chainId,
    JSString? token,
    JSAny? unit,
  });
  external JSString address;
  external JSBigInt? blockNumber;
  external JSString? blockTag;
  external JSNumber? chainId;
  external JSString? token;
  external JSString? unit;
}

@JS()
extension type JSGetBalanceReturnType(JSObject _) implements JSObject {
  external JSNumber decimals;
  external JSString formatted;
  external JSString symbol;
  external JSBigInt value;

  GetBalanceReturnType get toDart => GetBalanceReturnType(
        decimals: decimals.toDartInt,
        formatted: formatted.toDart,
        symbol: symbol.toDart,
        value: value.toDart,
      );
}

@JS()
extension type JSGetBalanceErrorType(JSObject _) implements JSObject {}
