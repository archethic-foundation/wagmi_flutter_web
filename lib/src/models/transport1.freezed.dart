// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transport1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Transport1 {
  String? get http => throw _privateConstructorUsedError;
  String? get ws => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? http, String? ws) url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? http, String? ws)? url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? http, String? ws)? url,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Url value) url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Url value)? url,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Url value)? url,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Transport1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Transport1CopyWith<Transport1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Transport1CopyWith<$Res> {
  factory $Transport1CopyWith(
          Transport1 value, $Res Function(Transport1) then) =
      _$Transport1CopyWithImpl<$Res, Transport1>;
  @useResult
  $Res call({String? http, String? ws});
}

/// @nodoc
class _$Transport1CopyWithImpl<$Res, $Val extends Transport1>
    implements $Transport1CopyWith<$Res> {
  _$Transport1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transport1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? http = freezed,
    Object? ws = freezed,
  }) {
    return _then(_value.copyWith(
      http: freezed == http
          ? _value.http
          : http // ignore: cast_nullable_to_non_nullable
              as String?,
      ws: freezed == ws
          ? _value.ws
          : ws // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UrlImplCopyWith<$Res> implements $Transport1CopyWith<$Res> {
  factory _$$UrlImplCopyWith(_$UrlImpl value, $Res Function(_$UrlImpl) then) =
      __$$UrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? http, String? ws});
}

/// @nodoc
class __$$UrlImplCopyWithImpl<$Res>
    extends _$Transport1CopyWithImpl<$Res, _$UrlImpl>
    implements _$$UrlImplCopyWith<$Res> {
  __$$UrlImplCopyWithImpl(_$UrlImpl _value, $Res Function(_$UrlImpl) _then)
      : super(_value, _then);

  /// Create a copy of Transport1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? http = freezed,
    Object? ws = freezed,
  }) {
    return _then(_$UrlImpl(
      http: freezed == http
          ? _value.http
          : http // ignore: cast_nullable_to_non_nullable
              as String?,
      ws: freezed == ws
          ? _value.ws
          : ws // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UrlImpl extends _Url {
  const _$UrlImpl({this.http, this.ws}) : super._();

  @override
  final String? http;
  @override
  final String? ws;

  @override
  String toString() {
    return 'Transport1.url(http: $http, ws: $ws)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlImpl &&
            (identical(other.http, http) || other.http == http) &&
            (identical(other.ws, ws) || other.ws == ws));
  }

  @override
  int get hashCode => Object.hash(runtimeType, http, ws);

  /// Create a copy of Transport1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlImplCopyWith<_$UrlImpl> get copyWith =>
      __$$UrlImplCopyWithImpl<_$UrlImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? http, String? ws) url,
  }) {
    return url(http, ws);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? http, String? ws)? url,
  }) {
    return url?.call(http, ws);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? http, String? ws)? url,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(http, ws);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Url value) url,
  }) {
    return url(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Url value)? url,
  }) {
    return url?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Url value)? url,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(this);
    }
    return orElse();
  }
}

abstract class _Url extends Transport1 {
  const factory _Url({final String? http, final String? ws}) = _$UrlImpl;
  const _Url._() : super._();

  @override
  String? get http;
  @override
  String? get ws;

  /// Create a copy of Transport1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrlImplCopyWith<_$UrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
