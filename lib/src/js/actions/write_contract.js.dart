part of '../wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/writeContract)
@JS()
extension type JSWriteContractParametersEIP1559._(JSObject _)
    implements JSObject {
  external JSWriteContractParametersEIP1559({
    required JSAny? abi,
    required JSString address,
    required JSString functionName,
    JSArray<JSObject>? accessList,
    JSString? account,
    JSArray<JSObject>? args,
    JSNumber? chainId,
    JSString? dataSuffix,
    JSBigInt? gas,
    JSBigInt? maxFeePerGas,
    JSBigInt? maxPriorityFeePerGas,
    JSBigInt? nonce,
    JSString? type,
    JSBigInt? value,
  });

  external JSAny? abi;
  external JSString address;
  external JSArray<JSObject>? accessList;
  external JSString? account;
  external JSString functionName;
  external JSArray<JSObject>? args;
  external JSNumber? chainId;
  external JSString? dataSuffix;
  external JSBigInt? gas;
  external JSBigInt? gasPrice;
  external JSBigInt? maxFeePerGas;
  external JSBigInt? maxPriorityFeePerGas;
  external JSBigInt? nonce;
  external JSString? type;
  external JSBigInt? value;
}

@JS()
extension type JSWriteContractParametersEIP4844._(JSObject _)
    implements JSObject {
  external JSWriteContractParametersEIP4844({
    required JSAny? abi,
    required JSString address,
    required JSString functionName,
    JSArray<JSObject>? accessList,
    JSString? account,
    JSArray<JSObject>? args,
    JSNumber? chainId,
    JSString? dataSuffix,
    JSBigInt? gas,
    JSBigInt? maxFeePerGas,
    JSBigInt? maxPriorityFeePerGas,
    JSBigInt? maxFeePerBlobGas,
    JSBigInt? nonce,
    JSString? type,
    JSBigInt? value,
  });

  external JSAny? abi;
  external JSString address;
  external JSArray<JSObject>? accessList;
  external JSString? account;
  external JSString functionName;
  external JSArray<JSObject>? args;
  external JSNumber? chainId;
  external JSString? dataSuffix;
  external JSBigInt? gas;
  external JSBigInt? maxFeePerGas;
  external JSBigInt? maxPriorityFeePerGas;
  external JSBigInt? maxFeePerBlobGas;
  external JSBigInt? nonce;
  external JSString? type;
  external JSBigInt? value;
}

@JS()
extension type JSWriteContractParametersLegacy._(JSObject _)
    implements JSObject {
  external JSWriteContractParametersLegacy({
    required JSAny? abi,
    required JSString address,
    required JSString functionName,
    JSArray<JSObject>? accessList,
    JSString? account,
    JSArray<JSObject>? args,
    JSNumber? chainId,
    JSString? dataSuffix,
    JSBigInt? gas,
    JSBigInt? gasPrice,
    JSBigInt? nonce,
    JSString? type,
    JSBigInt? value,
  });

  external JSAny? abi;
  external JSString address;
  external JSArray<JSObject>? accessList;
  external JSString? account;
  external JSString functionName;
  external JSArray<JSObject>? args;
  external JSNumber? chainId;
  external JSString? dataSuffix;
  external JSBigInt? gas;
  external JSBigInt? gasPrice;
  external JSBigInt? nonce;
  external JSString? type;
  external JSBigInt? value;
}

@JS()
extension type JSWriteContractReturnType(JSObject _) implements JSObject {
  external JSString hash;

  WriteContractReturnType get toDart => WriteContractReturnType(
        hash: hash.toDart,
      );
}
@JS()
extension type JSWriteContractErrorType(JSObject _) implements JSObject {}

extension WriteContractParametersToJS on WriteContractParameters {
  JSObject get toJS => map(
        legacy: (legacy) => JSWriteContractParametersLegacy(
          abi: abi.jsify(),
          address: address.toJS,
          functionName: functionName.toJS,
          accessList: accessList?.jsify() as JSArray<JSObject>?,
          account: account?.toJS,
          chainId: chainId?.toJS,
          dataSuffix: dataSuffix?.toJS,
          nonce: nonce?.toJS,
          args: UtilsJS.convertArgs(args),
          gas: gas?.toJS ?? BigInt.zero.toJS,
          gasPrice: legacy.feeValues?.gasPrice.toJS,
          type: 'legacy'.toJS,
          value: value?.toJS,
        ),
        eip1559: (eip1559) => JSWriteContractParametersEIP1559(
          abi: abi.jsify(),
          address: address.toJS,
          functionName: functionName.toJS,
          accessList: accessList?.jsify() as JSArray<JSObject>?,
          account: account?.toJS,
          chainId: chainId?.toJS,
          dataSuffix: dataSuffix?.toJS,
          nonce: nonce?.toJS,
          args: UtilsJS.convertArgs(args),
          gas: gas?.toJS ?? BigInt.zero.toJS,
          maxFeePerGas: eip1559.feeValues?.maxFeePerGas.toJS,
          maxPriorityFeePerGas: eip1559.feeValues?.maxPriorityFeePerGas.toJS,
          type: 'eip1559'.toJS,
          value: value?.toJS,
        ),
        eip4844: (eip4844) => JSWriteContractParametersEIP4844(
          abi: abi.jsify(),
          address: address.toJS,
          functionName: functionName.toJS,
          accessList: accessList?.jsify() as JSArray<JSObject>?,
          account: account?.toJS,
          chainId: chainId?.toJS,
          dataSuffix: dataSuffix?.toJS,
          nonce: nonce?.toJS,
          args: UtilsJS.convertArgs(args),
          gas: gas?.toJS ?? BigInt.zero.toJS,
          maxFeePerGas: eip4844.feeValues?.maxFeePerGas.toJS,
          maxPriorityFeePerGas: eip4844.feeValues?.maxPriorityFeePerGas.toJS,
          type: 'eip4844'.toJS,
          value: value?.toJS,
        ),
      );
}
