// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_to_sign.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageToSign _$MessageToSignFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'stringMessage':
      return StringMessage.fromJson(json);
    case 'rawMessage':
      return RawMessageContainer.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'MessageToSign',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MessageToSign {
  Object get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) stringMessage,
    required TResult Function(RawMessage message) rawMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? stringMessage,
    TResult? Function(RawMessage message)? rawMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? stringMessage,
    TResult Function(RawMessage message)? rawMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringMessage value) stringMessage,
    required TResult Function(RawMessageContainer value) rawMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringMessage value)? stringMessage,
    TResult? Function(RawMessageContainer value)? rawMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringMessage value)? stringMessage,
    TResult Function(RawMessageContainer value)? rawMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageToSignCopyWith<$Res> {
  factory $MessageToSignCopyWith(
          MessageToSign value, $Res Function(MessageToSign) then) =
      _$MessageToSignCopyWithImpl<$Res, MessageToSign>;
}

/// @nodoc
class _$MessageToSignCopyWithImpl<$Res, $Val extends MessageToSign>
    implements $MessageToSignCopyWith<$Res> {
  _$MessageToSignCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StringMessageImplCopyWith<$Res> {
  factory _$$StringMessageImplCopyWith(
          _$StringMessageImpl value, $Res Function(_$StringMessageImpl) then) =
      __$$StringMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StringMessageImplCopyWithImpl<$Res>
    extends _$MessageToSignCopyWithImpl<$Res, _$StringMessageImpl>
    implements _$$StringMessageImplCopyWith<$Res> {
  __$$StringMessageImplCopyWithImpl(
      _$StringMessageImpl _value, $Res Function(_$StringMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StringMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringMessageImpl
    with DiagnosticableTreeMixin
    implements StringMessage {
  const _$StringMessageImpl({required this.message, final String? $type})
      : $type = $type ?? 'stringMessage';

  factory _$StringMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringMessageImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessageToSign.stringMessage(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessageToSign.stringMessage'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StringMessageImplCopyWith<_$StringMessageImpl> get copyWith =>
      __$$StringMessageImplCopyWithImpl<_$StringMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) stringMessage,
    required TResult Function(RawMessage message) rawMessage,
  }) {
    return stringMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? stringMessage,
    TResult? Function(RawMessage message)? rawMessage,
  }) {
    return stringMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? stringMessage,
    TResult Function(RawMessage message)? rawMessage,
    required TResult orElse(),
  }) {
    if (stringMessage != null) {
      return stringMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringMessage value) stringMessage,
    required TResult Function(RawMessageContainer value) rawMessage,
  }) {
    return stringMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringMessage value)? stringMessage,
    TResult? Function(RawMessageContainer value)? rawMessage,
  }) {
    return stringMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringMessage value)? stringMessage,
    TResult Function(RawMessageContainer value)? rawMessage,
    required TResult orElse(),
  }) {
    if (stringMessage != null) {
      return stringMessage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StringMessageImplToJson(
      this,
    );
  }
}

abstract class StringMessage implements MessageToSign {
  const factory StringMessage({required final String message}) =
      _$StringMessageImpl;

  factory StringMessage.fromJson(Map<String, dynamic> json) =
      _$StringMessageImpl.fromJson;

  @override
  String get message;
  @JsonKey(ignore: true)
  _$$StringMessageImplCopyWith<_$StringMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RawMessageContainerImplCopyWith<$Res> {
  factory _$$RawMessageContainerImplCopyWith(_$RawMessageContainerImpl value,
          $Res Function(_$RawMessageContainerImpl) then) =
      __$$RawMessageContainerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RawMessage message});

  $RawMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$RawMessageContainerImplCopyWithImpl<$Res>
    extends _$MessageToSignCopyWithImpl<$Res, _$RawMessageContainerImpl>
    implements _$$RawMessageContainerImplCopyWith<$Res> {
  __$$RawMessageContainerImplCopyWithImpl(_$RawMessageContainerImpl _value,
      $Res Function(_$RawMessageContainerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RawMessageContainerImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as RawMessage,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RawMessageCopyWith<$Res> get message {
    return $RawMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$RawMessageContainerImpl
    with DiagnosticableTreeMixin
    implements RawMessageContainer {
  const _$RawMessageContainerImpl({required this.message, final String? $type})
      : $type = $type ?? 'rawMessage';

  factory _$RawMessageContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawMessageContainerImplFromJson(json);

  @override
  final RawMessage message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessageToSign.rawMessage(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessageToSign.rawMessage'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawMessageContainerImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RawMessageContainerImplCopyWith<_$RawMessageContainerImpl> get copyWith =>
      __$$RawMessageContainerImplCopyWithImpl<_$RawMessageContainerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) stringMessage,
    required TResult Function(RawMessage message) rawMessage,
  }) {
    return rawMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? stringMessage,
    TResult? Function(RawMessage message)? rawMessage,
  }) {
    return rawMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? stringMessage,
    TResult Function(RawMessage message)? rawMessage,
    required TResult orElse(),
  }) {
    if (rawMessage != null) {
      return rawMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringMessage value) stringMessage,
    required TResult Function(RawMessageContainer value) rawMessage,
  }) {
    return rawMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringMessage value)? stringMessage,
    TResult? Function(RawMessageContainer value)? rawMessage,
  }) {
    return rawMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringMessage value)? stringMessage,
    TResult Function(RawMessageContainer value)? rawMessage,
    required TResult orElse(),
  }) {
    if (rawMessage != null) {
      return rawMessage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RawMessageContainerImplToJson(
      this,
    );
  }
}

abstract class RawMessageContainer implements MessageToSign {
  const factory RawMessageContainer({required final RawMessage message}) =
      _$RawMessageContainerImpl;

  factory RawMessageContainer.fromJson(Map<String, dynamic> json) =
      _$RawMessageContainerImpl.fromJson;

  @override
  RawMessage get message;
  @JsonKey(ignore: true)
  _$$RawMessageContainerImplCopyWith<_$RawMessageContainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RawMessage _$RawMessageFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'hex':
      return RawHex.fromJson(json);
    case 'byteArray':
      return RawByteArray.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RawMessage',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RawMessage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String raw) hex,
    required TResult Function(List<int> byteArray) byteArray,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String raw)? hex,
    TResult? Function(List<int> byteArray)? byteArray,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String raw)? hex,
    TResult Function(List<int> byteArray)? byteArray,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RawHex value) hex,
    required TResult Function(RawByteArray value) byteArray,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RawHex value)? hex,
    TResult? Function(RawByteArray value)? byteArray,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RawHex value)? hex,
    TResult Function(RawByteArray value)? byteArray,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawMessageCopyWith<$Res> {
  factory $RawMessageCopyWith(
          RawMessage value, $Res Function(RawMessage) then) =
      _$RawMessageCopyWithImpl<$Res, RawMessage>;
}

/// @nodoc
class _$RawMessageCopyWithImpl<$Res, $Val extends RawMessage>
    implements $RawMessageCopyWith<$Res> {
  _$RawMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RawHexImplCopyWith<$Res> {
  factory _$$RawHexImplCopyWith(
          _$RawHexImpl value, $Res Function(_$RawHexImpl) then) =
      __$$RawHexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String raw});
}

/// @nodoc
class __$$RawHexImplCopyWithImpl<$Res>
    extends _$RawMessageCopyWithImpl<$Res, _$RawHexImpl>
    implements _$$RawHexImplCopyWith<$Res> {
  __$$RawHexImplCopyWithImpl(
      _$RawHexImpl _value, $Res Function(_$RawHexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
  }) {
    return _then(_$RawHexImpl(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RawHexImpl with DiagnosticableTreeMixin implements RawHex {
  const _$RawHexImpl({required this.raw, final String? $type})
      : $type = $type ?? 'hex';

  factory _$RawHexImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawHexImplFromJson(json);

  @override
  final String raw;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RawMessage.hex(raw: $raw)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RawMessage.hex'))
      ..add(DiagnosticsProperty('raw', raw));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawHexImpl &&
            (identical(other.raw, raw) || other.raw == raw));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, raw);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RawHexImplCopyWith<_$RawHexImpl> get copyWith =>
      __$$RawHexImplCopyWithImpl<_$RawHexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String raw) hex,
    required TResult Function(List<int> byteArray) byteArray,
  }) {
    return hex(raw);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String raw)? hex,
    TResult? Function(List<int> byteArray)? byteArray,
  }) {
    return hex?.call(raw);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String raw)? hex,
    TResult Function(List<int> byteArray)? byteArray,
    required TResult orElse(),
  }) {
    if (hex != null) {
      return hex(raw);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RawHex value) hex,
    required TResult Function(RawByteArray value) byteArray,
  }) {
    return hex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RawHex value)? hex,
    TResult? Function(RawByteArray value)? byteArray,
  }) {
    return hex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RawHex value)? hex,
    TResult Function(RawByteArray value)? byteArray,
    required TResult orElse(),
  }) {
    if (hex != null) {
      return hex(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RawHexImplToJson(
      this,
    );
  }
}

abstract class RawHex implements RawMessage {
  const factory RawHex({required final String raw}) = _$RawHexImpl;

  factory RawHex.fromJson(Map<String, dynamic> json) = _$RawHexImpl.fromJson;

  String get raw;
  @JsonKey(ignore: true)
  _$$RawHexImplCopyWith<_$RawHexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RawByteArrayImplCopyWith<$Res> {
  factory _$$RawByteArrayImplCopyWith(
          _$RawByteArrayImpl value, $Res Function(_$RawByteArrayImpl) then) =
      __$$RawByteArrayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> byteArray});
}

/// @nodoc
class __$$RawByteArrayImplCopyWithImpl<$Res>
    extends _$RawMessageCopyWithImpl<$Res, _$RawByteArrayImpl>
    implements _$$RawByteArrayImplCopyWith<$Res> {
  __$$RawByteArrayImplCopyWithImpl(
      _$RawByteArrayImpl _value, $Res Function(_$RawByteArrayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? byteArray = null,
  }) {
    return _then(_$RawByteArrayImpl(
      byteArray: null == byteArray
          ? _value._byteArray
          : byteArray // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RawByteArrayImpl with DiagnosticableTreeMixin implements RawByteArray {
  const _$RawByteArrayImpl(
      {required final List<int> byteArray, final String? $type})
      : _byteArray = byteArray,
        $type = $type ?? 'byteArray';

  factory _$RawByteArrayImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawByteArrayImplFromJson(json);

  final List<int> _byteArray;
  @override
  List<int> get byteArray {
    if (_byteArray is EqualUnmodifiableListView) return _byteArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_byteArray);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RawMessage.byteArray(byteArray: $byteArray)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RawMessage.byteArray'))
      ..add(DiagnosticsProperty('byteArray', byteArray));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawByteArrayImpl &&
            const DeepCollectionEquality()
                .equals(other._byteArray, _byteArray));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_byteArray));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RawByteArrayImplCopyWith<_$RawByteArrayImpl> get copyWith =>
      __$$RawByteArrayImplCopyWithImpl<_$RawByteArrayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String raw) hex,
    required TResult Function(List<int> byteArray) byteArray,
  }) {
    return byteArray(this.byteArray);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String raw)? hex,
    TResult? Function(List<int> byteArray)? byteArray,
  }) {
    return byteArray?.call(this.byteArray);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String raw)? hex,
    TResult Function(List<int> byteArray)? byteArray,
    required TResult orElse(),
  }) {
    if (byteArray != null) {
      return byteArray(this.byteArray);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RawHex value) hex,
    required TResult Function(RawByteArray value) byteArray,
  }) {
    return byteArray(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RawHex value)? hex,
    TResult? Function(RawByteArray value)? byteArray,
  }) {
    return byteArray?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RawHex value)? hex,
    TResult Function(RawByteArray value)? byteArray,
    required TResult orElse(),
  }) {
    if (byteArray != null) {
      return byteArray(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RawByteArrayImplToJson(
      this,
    );
  }
}

abstract class RawByteArray implements RawMessage {
  const factory RawByteArray({required final List<int> byteArray}) =
      _$RawByteArrayImpl;

  factory RawByteArray.fromJson(Map<String, dynamic> json) =
      _$RawByteArrayImpl.fromJson;

  List<int> get byteArray;
  @JsonKey(ignore: true)
  _$$RawByteArrayImplCopyWith<_$RawByteArrayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
