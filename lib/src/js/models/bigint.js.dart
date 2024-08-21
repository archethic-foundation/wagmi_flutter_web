part of '../wagmi.js.dart';

@JS()
external JSBigInt bigInt;

@JS('BigInt')
external JSBigInt createBigInt(String value);

extension on JSBigInt {
  @JS('toString')
  external String toStringExternal();
}

extension JSBigIntToDartConversion on JSBigInt {
  BigInt get toDart => BigInt.parse(toStringExternal());
}

extension BigIntToJSConversion on BigInt {
  JSBigInt get toJS => createBigInt(toString());
}
