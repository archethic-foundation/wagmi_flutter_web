import 'dart:js_interop';

import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';
import 'package:wagmi_flutter_web/wagmi_flutter_web.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/deployContract)
class DeployContractParameters {
  DeployContractParameters({
    required this.abi,
    required this.bytecode,
    this.account,
    this.args,
    this.connector,
  });
  Abi abi;
  String? account;
  List<dynamic>? args;
  String bytecode;
  dynamic connector;

  JSDeployContractParameters get toJS => JSDeployContractParameters(
        connector: connector,
        account: account?.toJS,
        abi: abi.jsify()!,
        args: args?.toNonNullableJSArray,
        bytecode: bytecode.toJS,
      );
}

class DeployContractReturnType {
  DeployContractReturnType({
    required this.value,
  });

  final dynamic value;
}
