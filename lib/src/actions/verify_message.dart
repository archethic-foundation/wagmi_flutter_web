import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/src/models/block_tag.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/verifyMessage)
class VerifyMessageParameters {
  VerifyMessageParameters({
    required this.address,
    required this.message,
    required this.signature,
    this.chainId,
    this.blockNumber,
    this.blockTag,
  });
  final String address;
  final dynamic message;
  final String signature;
  final int? chainId;
  final BigInt? blockNumber;
  final BlockTag? blockTag;

  JSVerifyMessageParameters get toJS => JSVerifyMessageParameters(
        address: address.toJS,
        message: message,
        signature: signature.toJS,
        chainId: chainId?.toJS,
        blockNumber: blockNumber?.toJS,
        blockTag: blockTag?.toJS,
      );
}
