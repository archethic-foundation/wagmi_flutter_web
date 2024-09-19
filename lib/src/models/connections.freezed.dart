// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connections.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Connections {
  List<String> get accounts => throw _privateConstructorUsedError;
  int get chainId => throw _privateConstructorUsedError;
  Connector get connector => throw _privateConstructorUsedError;

  /// Create a copy of Connections
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConnectionsCopyWith<Connections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionsCopyWith<$Res> {
  factory $ConnectionsCopyWith(
          Connections value, $Res Function(Connections) then) =
      _$ConnectionsCopyWithImpl<$Res, Connections>;
  @useResult
  $Res call({List<String> accounts, int chainId, Connector connector});
}

/// @nodoc
class _$ConnectionsCopyWithImpl<$Res, $Val extends Connections>
    implements $ConnectionsCopyWith<$Res> {
  _$ConnectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Connections
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? chainId = null,
    Object? connector = null,
  }) {
    return _then(_value.copyWith(
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as int,
      connector: null == connector
          ? _value.connector
          : connector // ignore: cast_nullable_to_non_nullable
              as Connector,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionsImplCopyWith<$Res>
    implements $ConnectionsCopyWith<$Res> {
  factory _$$ConnectionsImplCopyWith(
          _$ConnectionsImpl value, $Res Function(_$ConnectionsImpl) then) =
      __$$ConnectionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> accounts, int chainId, Connector connector});
}

/// @nodoc
class __$$ConnectionsImplCopyWithImpl<$Res>
    extends _$ConnectionsCopyWithImpl<$Res, _$ConnectionsImpl>
    implements _$$ConnectionsImplCopyWith<$Res> {
  __$$ConnectionsImplCopyWithImpl(
      _$ConnectionsImpl _value, $Res Function(_$ConnectionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Connections
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? chainId = null,
    Object? connector = null,
  }) {
    return _then(_$ConnectionsImpl(
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as int,
      connector: null == connector
          ? _value.connector
          : connector // ignore: cast_nullable_to_non_nullable
              as Connector,
    ));
  }
}

/// @nodoc

class _$ConnectionsImpl extends _Connections {
  const _$ConnectionsImpl(
      {required final List<String> accounts,
      required this.chainId,
      required this.connector})
      : _accounts = accounts,
        super._();

  final List<String> _accounts;
  @override
  List<String> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  final int chainId;
  @override
  final Connector connector;

  @override
  String toString() {
    return 'Connections(accounts: $accounts, chainId: $chainId, connector: $connector)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionsImpl &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            (identical(other.chainId, chainId) || other.chainId == chainId) &&
            (identical(other.connector, connector) ||
                other.connector == connector));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_accounts), chainId, connector);

  /// Create a copy of Connections
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionsImplCopyWith<_$ConnectionsImpl> get copyWith =>
      __$$ConnectionsImplCopyWithImpl<_$ConnectionsImpl>(this, _$identity);
}

abstract class _Connections extends Connections {
  const factory _Connections(
      {required final List<String> accounts,
      required final int chainId,
      required final Connector connector}) = _$ConnectionsImpl;
  const _Connections._() : super._();

  @override
  List<String> get accounts;
  @override
  int get chainId;
  @override
  Connector get connector;

  /// Create a copy of Connections
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionsImplCopyWith<_$ConnectionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
