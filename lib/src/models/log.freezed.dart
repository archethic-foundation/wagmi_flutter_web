// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Log {
  String get address => throw _privateConstructorUsedError;
  String? get blockHash => throw _privateConstructorUsedError;
  BigInt? get blockNumber => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  int? get logIndex => throw _privateConstructorUsedError;
  String? get transactionHash => throw _privateConstructorUsedError;
  int? get transactionIndex => throw _privateConstructorUsedError;
  bool get removed => throw _privateConstructorUsedError;

  /// Create a copy of Log
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogCopyWith<Log> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogCopyWith<$Res> {
  factory $LogCopyWith(Log value, $Res Function(Log) then) =
      _$LogCopyWithImpl<$Res, Log>;
  @useResult
  $Res call(
      {String address,
      String? blockHash,
      BigInt? blockNumber,
      String data,
      int? logIndex,
      String? transactionHash,
      int? transactionIndex,
      bool removed});
}

/// @nodoc
class _$LogCopyWithImpl<$Res, $Val extends Log> implements $LogCopyWith<$Res> {
  _$LogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Log
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? blockHash = freezed,
    Object? blockNumber = freezed,
    Object? data = null,
    Object? logIndex = freezed,
    Object? transactionHash = freezed,
    Object? transactionIndex = freezed,
    Object? removed = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      blockHash: freezed == blockHash
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      logIndex: freezed == logIndex
          ? _value.logIndex
          : logIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionHash: freezed == transactionHash
          ? _value.transactionHash
          : transactionHash // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionIndex: freezed == transactionIndex
          ? _value.transactionIndex
          : transactionIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      removed: null == removed
          ? _value.removed
          : removed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogImplCopyWith<$Res> implements $LogCopyWith<$Res> {
  factory _$$LogImplCopyWith(_$LogImpl value, $Res Function(_$LogImpl) then) =
      __$$LogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      String? blockHash,
      BigInt? blockNumber,
      String data,
      int? logIndex,
      String? transactionHash,
      int? transactionIndex,
      bool removed});
}

/// @nodoc
class __$$LogImplCopyWithImpl<$Res> extends _$LogCopyWithImpl<$Res, _$LogImpl>
    implements _$$LogImplCopyWith<$Res> {
  __$$LogImplCopyWithImpl(_$LogImpl _value, $Res Function(_$LogImpl) _then)
      : super(_value, _then);

  /// Create a copy of Log
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? blockHash = freezed,
    Object? blockNumber = freezed,
    Object? data = null,
    Object? logIndex = freezed,
    Object? transactionHash = freezed,
    Object? transactionIndex = freezed,
    Object? removed = null,
  }) {
    return _then(_$LogImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      blockHash: freezed == blockHash
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      blockNumber: freezed == blockNumber
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      logIndex: freezed == logIndex
          ? _value.logIndex
          : logIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionHash: freezed == transactionHash
          ? _value.transactionHash
          : transactionHash // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionIndex: freezed == transactionIndex
          ? _value.transactionIndex
          : transactionIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      removed: null == removed
          ? _value.removed
          : removed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LogImpl extends _Log {
  const _$LogImpl(
      {required this.address,
      this.blockHash,
      this.blockNumber,
      required this.data,
      this.logIndex,
      this.transactionHash,
      this.transactionIndex,
      required this.removed})
      : super._();

  @override
  final String address;
  @override
  final String? blockHash;
  @override
  final BigInt? blockNumber;
  @override
  final String data;
  @override
  final int? logIndex;
  @override
  final String? transactionHash;
  @override
  final int? transactionIndex;
  @override
  final bool removed;

  @override
  String toString() {
    return 'Log(address: $address, blockHash: $blockHash, blockNumber: $blockNumber, data: $data, logIndex: $logIndex, transactionHash: $transactionHash, transactionIndex: $transactionIndex, removed: $removed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.blockHash, blockHash) ||
                other.blockHash == blockHash) &&
            (identical(other.blockNumber, blockNumber) ||
                other.blockNumber == blockNumber) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.logIndex, logIndex) ||
                other.logIndex == logIndex) &&
            (identical(other.transactionHash, transactionHash) ||
                other.transactionHash == transactionHash) &&
            (identical(other.transactionIndex, transactionIndex) ||
                other.transactionIndex == transactionIndex) &&
            (identical(other.removed, removed) || other.removed == removed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, blockHash, blockNumber,
      data, logIndex, transactionHash, transactionIndex, removed);

  /// Create a copy of Log
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogImplCopyWith<_$LogImpl> get copyWith =>
      __$$LogImplCopyWithImpl<_$LogImpl>(this, _$identity);
}

abstract class _Log extends Log {
  const factory _Log(
      {required final String address,
      final String? blockHash,
      final BigInt? blockNumber,
      required final String data,
      final int? logIndex,
      final String? transactionHash,
      final int? transactionIndex,
      required final bool removed}) = _$LogImpl;
  const _Log._() : super._();

  @override
  String get address;
  @override
  String? get blockHash;
  @override
  BigInt? get blockNumber;
  @override
  String get data;
  @override
  int? get logIndex;
  @override
  String? get transactionHash;
  @override
  int? get transactionIndex;
  @override
  bool get removed;

  /// Create a copy of Log
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogImplCopyWith<_$LogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
