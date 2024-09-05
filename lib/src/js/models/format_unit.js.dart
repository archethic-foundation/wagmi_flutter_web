part of '../wagmi.js.dart';

extension JSFormatUnitConverstion on FormatUnit {
  JSAny get toJS => map(
        decimals: (value) => value.decimals.toJS,
        ether: (_) => 'ether'.toJS,
        gwei: (_) => 'gwei'.toJS,
        wei: (_) => 'wei'.toJS,
      );
}
