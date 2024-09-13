import 'dart:js_interop';
import 'dart:js_interop_unsafe';
import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:wagmi_flutter_web/src/utils/utils_js.dart';

@JS('BigInt')
external JSBigInt createBigInt(String value);

void main() {
  test(
    'Should convert args to JS correctly',
    () async {
      final args = [
        '1234567890987654321',
        12345,
        true,
        BigInt.parse('1234567890987654321'),
        Uint8List.fromList([0, 1, 2, 3, 4]),
      ];

      final actual = args.toJSArray;

      expect(actual, isNotNull, reason: 'Should not be null');
      expect(
        actual.getProperty(0.toJS),
        '1234567890987654321'.toJS,
        reason: 'String should be correctly converted',
      );
      expect(
        actual.getProperty(1.toJS),
        12345.toJS,
        reason: 'int should be correctly converted',
      );
      expect(
        actual.getProperty(2.toJS),
        true.toJS,
        reason: 'bool should be correctly converted',
      );
      expect(
        actual.getProperty(3.toJS),
        createBigInt('1234567890987654321'),
        reason: 'BigInt should be correctly converted',
      );
      expect(
        actual.getProperty(4.toJS),
        Uint8List.fromList([0, 1, 2, 3, 4]).toJS,
        reason: 'BigInt should be correctly converted',
      );
    },
  );

  test(
    'Should sanitize args to JS correctly',
    () async {
      final args = [
        '1234567890987654321',
        12345,
        true,
        BigInt.parse('1234567890987654321'),
        Uint8List.fromList([0, 1, 2, 3, 4]),
      ];

      final actual = args.toJSArray;

      expect(actual, isNotNull, reason: 'Should not be null');
      expect(
        actual.getProperty(0.toJS),
        '1234567890987654321'.toJS,
        reason: 'String should be correctly converted',
      );
      expect(
        actual.getProperty(1.toJS),
        12345.toJS,
        reason: 'int should be correctly converted',
      );
      expect(
        actual.getProperty(2.toJS),
        true.toJS,
        reason: 'bool should be correctly converted',
      );
      expect(
        actual.getProperty(3.toJS),
        createBigInt('1234567890987654321'),
        reason: 'BigInt should be correctly converted',
      );
      expect(
        actual.getProperty(4.toJS),
        Uint8List.fromList([0, 1, 2, 3, 4]).toJS,
        reason: 'BigInt should be correctly converted',
      );
    },
  );
}
