import 'package:freezed_annotation/freezed_annotation.dart';

part 'format_unit.freezed.dart';

@freezed
class FormatUnit with _$FormatUnit {
  const FormatUnit._();

  const factory FormatUnit.ether() = _FormatUnitEther;
  const factory FormatUnit.gwei() = _FormatUnitGwei;
  const factory FormatUnit.wei() = _FormatUnitWei;
  const factory FormatUnit.decimals(int decimals) = _FormatUnitValue;
}
