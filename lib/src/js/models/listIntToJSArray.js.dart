part of '../wagmi.js.dart';

extension ListIntToJSArray on List<int> {
  JSArray toJSArray() {
    final jsArray = JSArray();
    forEach((element) {
      jsArray.push(element.toJS as JSAny);
    });
    return jsArray;
  }
}
