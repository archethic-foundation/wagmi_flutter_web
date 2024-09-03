import 'dart:js_interop';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getByteCode)
class GetByteCodeParameters {
  GetByteCodeParameters({
    required this.address,
    this.blockNumber,
    this.blockTag,
    this.chainId,
  });

  final String address;
  final BigInt? blockNumber;
  final String? blockTag;
  final int? chainId;

  JSGetByteCodeParameters get toJS {
    final jsBlockParams = JSGetByteCodeParameters(
      address: address.toJS,
    );
    if (chainId != null) {
      jsBlockParams.chainId = chainId?.toJS;
    }
    if (blockNumber != null) {
      jsBlockParams.blockNumber = blockNumber?.toJS;
    }
    if (blockTag != null) {
      jsBlockParams.blockTag = blockTag?.toJS;
    }
    return jsBlockParams;
  }
}

class GetByteCodeReturnType {
  GetByteCodeReturnType({
    required this.hexByteCode,
  });

  final String hexByteCode;
}
