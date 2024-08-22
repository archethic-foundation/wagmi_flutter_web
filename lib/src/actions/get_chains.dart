import 'package:wagmi_flutter_web/src/models/chain.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/getChains)

class GetChainsReturnType {
  GetChainsReturnType({
    required this.chains,
  });

  List<Chain> chains;
}
