import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/src/models/block_tag.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getBytecode)
class GetByteCodeParameters {
  GetByteCodeParameters({
    required this.address,
    this.blockNumber,
    this.blockTag,
    this.chainId,
  });

  final String address;
  final BigInt? blockNumber;
  final BlockTag? blockTag;
  final int? chainId;

  JSGetByteCodeParameters get toJS => JSGetByteCodeParameters(
        address: address.toJS,
        chainId: chainId?.toJS,
        blockNumber: blockNumber?.toJS,
        blockTag: blockTag?.toJS,
      );
}

class GetByteCodeReturnType {
  GetByteCodeReturnType({
    required this.hexByteCode,
  });

  final String hexByteCode;
}
