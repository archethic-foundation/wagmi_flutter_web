// create Utils class
import 'dart:js_interop';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js_util' as js_util;

class Utils {
  static Map<String, dynamic> jsObjectToMap(JSObject jsObject) {
    final map = <String, dynamic>{};

    // Get the keys of the JSObject
    final List<Object?> keys = js_util.callMethod(
        js_util.getProperty(js_util.globalThis, 'Object'), 'keys', [jsObject]);

    // Iterate over the keys and assign values to the Dart map
    for (final key in keys) {
      final keyString = key! as String;
      var value = js_util.getProperty(jsObject, keyString);

      if (value is JSObject) {
        value = jsObjectToMap(value);
      }

      map[keyString] = value;
    }
    return map;
  }
}
