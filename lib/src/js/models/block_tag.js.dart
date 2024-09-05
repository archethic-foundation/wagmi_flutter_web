part of '../wagmi.js.dart';

extension BlockTagToJS on BlockTag {
  JSString get toJS => map(
        latest: (_) => 'latest',
        earliest: (_) => 'earliest',
        pending: (_) => 'pending',
        safe: (_) => 'safe',
        finalized: (_) => 'finalized',
      ).toJS;
}
