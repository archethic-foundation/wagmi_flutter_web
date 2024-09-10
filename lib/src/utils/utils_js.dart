import 'dart:js_interop';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js_util' as js_util;

import 'package:decimal/decimal.dart';
import 'package:wagmi_flutter_web/src/js/wagmi.js.dart';

class UtilsJS {
  static Map<String, dynamic> jsObjectToMap(
    JSObject jsObject, {
    bool deep = true,
  }) {
    final map = <String, dynamic>{};

    // Get the keys of the JSObject
    final List<Object?> keys = js_util.callMethod(
      js_util.getProperty(js_util.globalThis, 'Object'),
      'keys',
      [jsObject],
    );

    // Iterate over the keys and assign values to the Dart map
    if (keys.isEmpty) {
      return map;
    }
    for (final key in keys) {
      final keyString = key! as String;
      var value = js_util.getProperty(jsObject, keyString);
      if (deep) {
        if (value is JSObject) {
          value = jsObjectToMap(value);
        }
      }

      map[keyString] = value;
    }
    return map;
  }

  static JSArray<JSObject>? convertArgs(List<dynamic>? args) {
    if (args == null) {
      return null;
    }
    final jsArgs = JSArray<JSObject>();
    for (final arg in args) {
      if (arg is String) {
        jsArgs.push(arg.toJS);
      } else if (arg is int) {
        jsArgs.push(arg.toJS);
      } else if (arg is bool) {
        jsArgs.push(arg.toJS);
      } else if (arg is BigInt) {
        jsArgs.push(arg.toJS);
      }
    }
    return jsArgs;
  }
}

extension JSBigIntArrayToList on JSArray<JSBigInt> {
  List<BigInt> get toDartList => toDart.map((item) => item.toDart).toList();
}

extension JSNumberArrayToList on JSArray<JSNumber> {
  List<Decimal> get toDartDecimalList =>
      toDart.map((item) => Decimal.parse(item.toString())).toList();
}

extension JSObjectArrayToList on JSArray<JSObject> {
  List<Map<String, dynamic>> get toDartObjectList =>
      toDart.map(UtilsJS.jsObjectToMap).toList();
}
