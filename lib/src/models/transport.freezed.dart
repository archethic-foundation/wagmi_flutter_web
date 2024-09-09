// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Transport {
  String get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) websocket,
    required TResult Function(String url) http,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? websocket,
    TResult? Function(String url)? http,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? websocket,
    TResult Function(String url)? http,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebsocketTransport value) websocket,
    required TResult Function(_HttpTransport value) http,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebsocketTransport value)? websocket,
    TResult? Function(_HttpTransport value)? http,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebsocketTransport value)? websocket,
    TResult Function(_HttpTransport value)? http,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Transport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransportCopyWith<Transport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportCopyWith<$Res> {
  factory $TransportCopyWith(Transport value, $Res Function(Transport) then) =
      _$TransportCopyWithImpl<$Res, Transport>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$TransportCopyWithImpl<$Res, $Val extends Transport>
    implements $TransportCopyWith<$Res> {
  _$TransportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebsocketTransportImplCopyWith<$Res>
    implements $TransportCopyWith<$Res> {
  factory _$$WebsocketTransportImplCopyWith(_$WebsocketTransportImpl value,
          $Res Function(_$WebsocketTransportImpl) then) =
      __$$WebsocketTransportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$WebsocketTransportImplCopyWithImpl<$Res>
    extends _$TransportCopyWithImpl<$Res, _$WebsocketTransportImpl>
    implements _$$WebsocketTransportImplCopyWith<$Res> {
  __$$WebsocketTransportImplCopyWithImpl(_$WebsocketTransportImpl _value,
      $Res Function(_$WebsocketTransportImpl) _then)
      : super(_value, _then);

  /// Create a copy of Transport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$WebsocketTransportImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WebsocketTransportImpl extends _WebsocketTransport {
  const _$WebsocketTransportImpl({required this.url}) : super._();

  @override
  final String url;

  @override
  String toString() {
    return 'Transport.websocket(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebsocketTransportImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of Transport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebsocketTransportImplCopyWith<_$WebsocketTransportImpl> get copyWith =>
      __$$WebsocketTransportImplCopyWithImpl<_$WebsocketTransportImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) websocket,
    required TResult Function(String url) http,
  }) {
    return websocket(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? websocket,
    TResult? Function(String url)? http,
  }) {
    return websocket?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? websocket,
    TResult Function(String url)? http,
    required TResult orElse(),
  }) {
    if (websocket != null) {
      return websocket(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebsocketTransport value) websocket,
    required TResult Function(_HttpTransport value) http,
  }) {
    return websocket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebsocketTransport value)? websocket,
    TResult? Function(_HttpTransport value)? http,
  }) {
    return websocket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebsocketTransport value)? websocket,
    TResult Function(_HttpTransport value)? http,
    required TResult orElse(),
  }) {
    if (websocket != null) {
      return websocket(this);
    }
    return orElse();
  }
}

abstract class _WebsocketTransport extends Transport {
  const factory _WebsocketTransport({required final String url}) =
      _$WebsocketTransportImpl;
  const _WebsocketTransport._() : super._();

  @override
  String get url;

  /// Create a copy of Transport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebsocketTransportImplCopyWith<_$WebsocketTransportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HttpTransportImplCopyWith<$Res>
    implements $TransportCopyWith<$Res> {
  factory _$$HttpTransportImplCopyWith(
          _$HttpTransportImpl value, $Res Function(_$HttpTransportImpl) then) =
      __$$HttpTransportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$HttpTransportImplCopyWithImpl<$Res>
    extends _$TransportCopyWithImpl<$Res, _$HttpTransportImpl>
    implements _$$HttpTransportImplCopyWith<$Res> {
  __$$HttpTransportImplCopyWithImpl(
      _$HttpTransportImpl _value, $Res Function(_$HttpTransportImpl) _then)
      : super(_value, _then);

  /// Create a copy of Transport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$HttpTransportImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HttpTransportImpl extends _HttpTransport {
  const _$HttpTransportImpl({required this.url}) : super._();

  @override
  final String url;

  @override
  String toString() {
    return 'Transport.http(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpTransportImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of Transport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpTransportImplCopyWith<_$HttpTransportImpl> get copyWith =>
      __$$HttpTransportImplCopyWithImpl<_$HttpTransportImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) websocket,
    required TResult Function(String url) http,
  }) {
    return http(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? websocket,
    TResult? Function(String url)? http,
  }) {
    return http?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? websocket,
    TResult Function(String url)? http,
    required TResult orElse(),
  }) {
    if (http != null) {
      return http(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebsocketTransport value) websocket,
    required TResult Function(_HttpTransport value) http,
  }) {
    return http(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WebsocketTransport value)? websocket,
    TResult? Function(_HttpTransport value)? http,
  }) {
    return http?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebsocketTransport value)? websocket,
    TResult Function(_HttpTransport value)? http,
    required TResult orElse(),
  }) {
    if (http != null) {
      return http(this);
    }
    return orElse();
  }
}

abstract class _HttpTransport extends Transport {
  const factory _HttpTransport({required final String url}) =
      _$HttpTransportImpl;
  const _HttpTransport._() : super._();

  @override
  String get url;

  /// Create a copy of Transport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HttpTransportImplCopyWith<_$HttpTransportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
