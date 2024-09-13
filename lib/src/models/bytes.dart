extension StringByte on String {
  String get strip0x {
    if (startsWith('0x')) {
      return substring(2);
    }
    return this;
  }

  String get toBytes {
    final without0x = strip0x;
    assert(_isHex(without0x));
    return '0x$without0x';
  }

  /// Determines if a string is an hexadecimal
  /// @param {String} inputString Potential hexadecimal string
  bool _isHex(String inputString) {
    final hexadecimal = RegExp(r'^([0-9A-Fa-f])*$');
    if (!hexadecimal.hasMatch(inputString)) {
      return false;
    }
    return true;
  }
}
