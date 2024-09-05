import 'package:freezed_annotation/freezed_annotation.dart';

part 'block_tag.freezed.dart';

@freezed
class BlockTag with _$BlockTag {
  const BlockTag._();
  const factory BlockTag.latest() = _BlockTagLatest;
  const factory BlockTag.earliest() = _BlockTagEarliest;
  const factory BlockTag.pending() = _BlockTagPending;
  const factory BlockTag.safe() = _BlockTagSafe;
  const factory BlockTag.finalized() = _BlockTagFinalized;
}
