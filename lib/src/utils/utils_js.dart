import 'dart:js_interop';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js_util' as js_util;
import 'dart:typed_data';

import 'package:decimal/decimal.dart';
import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

class UtilsJS {
  static Object? dartify(JSAny? jsObject, {bool deep = true}) {
    if (jsObject == null) return null;
    if (jsObject is JSBigInt) return jsObject.toDart;
    if (jsObject is JSArray) return jsObject.toDartDynamicList;
    if (jsObject is JSObject) return deep ? jsObject.toMap() : jsObject;

    return jsObject.dartify();
  }

  static JSAny? jsify(dynamic dartObject) {
    // We do exhaustive types check here
    // because `dartObject.jsify()` throws a "NoSuchMethodError: 'jsify'"
    // whthout explicit cast.
    if (dartObject == null) return null;
    if (dartObject is BigInt) return dartObject.toJS;
    if (dartObject is Iterable) return dartObject.toJSArray;
    if (dartObject is String) return dartObject.toJS;
    if (dartObject is int) return dartObject.toJS;
    if (dartObject is bool) return dartObject.toJS;
    if (dartObject is double) return dartObject.toJS;
    if (dartObject is num) return dartObject.toJS;
    if (dartObject is Int8List) return dartObject.toJS;
    if (dartObject is Uint8List) return dartObject.toJS;
    if (dartObject is Int16List) return dartObject.toJS;
    if (dartObject is Uint16List) return dartObject.toJS;
    if (dartObject is Uint16List) return dartObject.toJS;
    if (dartObject is Int32List) return dartObject.toJS;
    if (dartObject is Uint32List) return dartObject.toJS;
    if (dartObject is Float32List) return dartObject.toJS;
    if (dartObject is Float64List) return dartObject.toJS;
    if (dartObject is List) return dartObject.toJSArray;
    if (dartObject is Map) return js_util.jsify(dartObject);
    return dartObject.jsify();
  }
}

extension DartListToJS on Iterable {
  JSArray<JSAny?> get toJSArray {
    final jsArgs = JSArray<JSAny?>();
    for (final arg in this) {
      final jsValue = UtilsJS.jsify(arg as Object?);
      jsArgs.push(jsValue);
    }
    return jsArgs;
  }

  JSArray<JSAny> get toNonNullableJSArray {
    final jsArgs = JSArray<JSAny>();
    for (final arg in this) {
      final jsValue = UtilsJS.jsify(arg as Object?);
      jsArgs.push(jsValue!);
    }
    return jsArgs;
  }
}

extension JSBigIntArrayToList on JSArray<JSBigInt> {
  List<BigInt> get toDartBigIntList =>
      toDart.map((item) => item.toDart).toList();
}

extension JSNumberArrayToList on JSArray<JSNumber> {
  List<Decimal> get toDartDecimalList =>
      toDart.map((item) => Decimal.parse(item.toString())).toList();
}

extension JSAnyArrayToList on JSArray {
  List<Object?> get toDartDynamicList => toDart.map(UtilsJS.dartify).toList();
}

extension JSObjectToMap on JSObject {
  Map<String, dynamic> toMap({bool deep = true}) {
    final map = <String, dynamic>{};

    // Get the keys of the JSObject
    final List<Object?> keys = js_util.callMethod(
      js_util.getProperty(js_util.globalThis, 'Object'),
      'keys',
      [this],
    );

    // Iterate over the keys and assign values to the Dart map
    if (keys.isEmpty) {
      return map;
    }
    for (final key in keys) {
      final keyString = key! as String;
      final value = js_util.getProperty(this, keyString);
      map[keyString] = UtilsJS.dartify(value, deep: deep);
    }
    return map;
  }
}
