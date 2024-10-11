import 'package:wagmi_flutter_web/src/models/account.dart';

/// [Documentation API](https://wagmi.sh/core/api/actions/watchAccount)

typedef OnChangeCallbackWatchAccount = void Function(
  Account account,
  Account prevAccount,
);

class WatchAccountParameters {
  WatchAccountParameters({required this.onChange});
  final OnChangeCallbackWatchAccount onChange;
}

typedef WatchAccountReturnType = void Function();
