import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/src/models/block_tag.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getTransactionCount)
class GetTransactionCountParameters {
  GetTransactionCountParameters({
    required this.address,
    this.blockNumber,
    this.blockTag,
    this.chainId,
  });

  final String address;
  final BigInt? blockNumber;
  final BlockTag? blockTag;
  final int? chainId;

  JSGetTransactionCountParameters get toJS => JSGetTransactionCountParameters(
        address: address.toJS,
        blockNumber: blockNumber?.toJS,
        blockTag: blockTag?.toJS,
        chainId: chainId?.toJS,
      );
}
