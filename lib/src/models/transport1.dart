import 'package:freezed_annotation/freezed_annotation.dart';
part 'transport1.freezed.dart';

@freezed
class Transport1 with _$Transport1 {
  const Transport1._();
  const factory Transport1.url({
    String? http,
    String? ws,
  }) = _Url;
}
