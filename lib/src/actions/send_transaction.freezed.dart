// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendTransactionParameters _$SendTransactionParametersFromJson(
    Map<String, dynamic> json) {
  return _SendTransactionParameters.fromJson(json);
}

/// @nodoc
mixin _$SendTransactionParameters {
  String get type => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get accessList =>
      throw _privateConstructorUsedError;
  String? get account => throw _privateConstructorUsedError;
  int? get chainId => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;
  BigInt? get gas => throw _privateConstructorUsedError;
  FeeValues? get feeValues => throw _privateConstructorUsedError;
  BigInt? get nonce => throw _privateConstructorUsedError;
  BigInt? get value => throw _privateConstructorUsedError;
  dynamic get connector => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendTransactionParametersCopyWith<SendTransactionParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTransactionParametersCopyWith<$Res> {
  factory $SendTransactionParametersCopyWith(SendTransactionParameters value,
          $Res Function(SendTransactionParameters) then) =
      _$SendTransactionParametersCopyWithImpl<$Res, SendTransactionParameters>;
  @useResult
  $Res call(
      {String type,
      String to,
      List<Map<String, dynamic>>? accessList,
      String? account,
      int? chainId,
      String? data,
      BigInt? gas,
      FeeValues? feeValues,
      BigInt? nonce,
      BigInt? value,
      dynamic connector});

  $FeeValuesCopyWith<$Res>? get feeValues;
}

/// @nodoc
class _$SendTransactionParametersCopyWithImpl<$Res,
        $Val extends SendTransactionParameters>
    implements $SendTransactionParametersCopyWith<$Res> {
  _$SendTransactionParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? to = null,
    Object? accessList = freezed,
    Object? account = freezed,
    Object? chainId = freezed,
    Object? data = freezed,
    Object? gas = freezed,
    Object? feeValues = freezed,
    Object? nonce = freezed,
    Object? value = freezed,
    Object? connector = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      accessList: freezed == accessList
          ? _value.accessList
          : accessList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String?,
      chainId: freezed == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      gas: freezed == gas
          ? _value.gas
          : gas // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      feeValues: freezed == feeValues
          ? _value.feeValues
          : feeValues // ignore: cast_nullable_to_non_nullable
              as FeeValues?,
      nonce: freezed == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      connector: freezed == connector
          ? _value.connector
          : connector // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeeValuesCopyWith<$Res>? get feeValues {
    if (_value.feeValues == null) {
      return null;
    }

    return $FeeValuesCopyWith<$Res>(_value.feeValues!, (value) {
      return _then(_value.copyWith(feeValues: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SendTransactionParametersImplCopyWith<$Res>
    implements $SendTransactionParametersCopyWith<$Res> {
  factory _$$SendTransactionParametersImplCopyWith(
          _$SendTransactionParametersImpl value,
          $Res Function(_$SendTransactionParametersImpl) then) =
      __$$SendTransactionParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String to,
      List<Map<String, dynamic>>? accessList,
      String? account,
      int? chainId,
      String? data,
      BigInt? gas,
      FeeValues? feeValues,
      BigInt? nonce,
      BigInt? value,
      dynamic connector});

  @override
  $FeeValuesCopyWith<$Res>? get feeValues;
}

/// @nodoc
class __$$SendTransactionParametersImplCopyWithImpl<$Res>
    extends _$SendTransactionParametersCopyWithImpl<$Res,
        _$SendTransactionParametersImpl>
    implements _$$SendTransactionParametersImplCopyWith<$Res> {
  __$$SendTransactionParametersImplCopyWithImpl(
      _$SendTransactionParametersImpl _value,
      $Res Function(_$SendTransactionParametersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? to = null,
    Object? accessList = freezed,
    Object? account = freezed,
    Object? chainId = freezed,
    Object? data = freezed,
    Object? gas = freezed,
    Object? feeValues = freezed,
    Object? nonce = freezed,
    Object? value = freezed,
    Object? connector = freezed,
  }) {
    return _then(_$SendTransactionParametersImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      accessList: freezed == accessList
          ? _value._accessList
          : accessList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String?,
      chainId: freezed == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      gas: freezed == gas
          ? _value.gas
          : gas // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      feeValues: freezed == feeValues
          ? _value.feeValues
          : feeValues // ignore: cast_nullable_to_non_nullable
              as FeeValues?,
      nonce: freezed == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      connector: freezed == connector
          ? _value.connector
          : connector // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendTransactionParametersImpl implements _SendTransactionParameters {
  const _$SendTransactionParametersImpl(
      {required this.type,
      required this.to,
      final List<Map<String, dynamic>>? accessList,
      this.account,
      this.chainId,
      this.data,
      this.gas,
      this.feeValues,
      this.nonce,
      this.value,
      this.connector})
      : _accessList = accessList;

  factory _$SendTransactionParametersImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendTransactionParametersImplFromJson(json);

  @override
  final String type;
  @override
  final String to;
  final List<Map<String, dynamic>>? _accessList;
  @override
  List<Map<String, dynamic>>? get accessList {
    final value = _accessList;
    if (value == null) return null;
    if (_accessList is EqualUnmodifiableListView) return _accessList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? account;
  @override
  final int? chainId;
  @override
  final String? data;
  @override
  final BigInt? gas;
  @override
  final FeeValues? feeValues;
  @override
  final BigInt? nonce;
  @override
  final BigInt? value;
  @override
  final dynamic connector;

  @override
  String toString() {
    return 'SendTransactionParameters(type: $type, to: $to, accessList: $accessList, account: $account, chainId: $chainId, data: $data, gas: $gas, feeValues: $feeValues, nonce: $nonce, value: $value, connector: $connector)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTransactionParametersImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.to, to) || other.to == to) &&
            const DeepCollectionEquality()
                .equals(other._accessList, _accessList) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.chainId, chainId) || other.chainId == chainId) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.gas, gas) || other.gas == gas) &&
            (identical(other.feeValues, feeValues) ||
                other.feeValues == feeValues) &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(other.connector, connector));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      to,
      const DeepCollectionEquality().hash(_accessList),
      account,
      chainId,
      data,
      gas,
      feeValues,
      nonce,
      value,
      const DeepCollectionEquality().hash(connector));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTransactionParametersImplCopyWith<_$SendTransactionParametersImpl>
      get copyWith => __$$SendTransactionParametersImplCopyWithImpl<
          _$SendTransactionParametersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendTransactionParametersImplToJson(
      this,
    );
  }
}

abstract class _SendTransactionParameters implements SendTransactionParameters {
  const factory _SendTransactionParameters(
      {required final String type,
      required final String to,
      final List<Map<String, dynamic>>? accessList,
      final String? account,
      final int? chainId,
      final String? data,
      final BigInt? gas,
      final FeeValues? feeValues,
      final BigInt? nonce,
      final BigInt? value,
      final dynamic connector}) = _$SendTransactionParametersImpl;

  factory _SendTransactionParameters.fromJson(Map<String, dynamic> json) =
      _$SendTransactionParametersImpl.fromJson;

  @override
  String get type;
  @override
  String get to;
  @override
  List<Map<String, dynamic>>? get accessList;
  @override
  String? get account;
  @override
  int? get chainId;
  @override
  String? get data;
  @override
  BigInt? get gas;
  @override
  FeeValues? get feeValues;
  @override
  BigInt? get nonce;
  @override
  BigInt? get value;
  @override
  dynamic get connector;
  @override
  @JsonKey(ignore: true)
  _$$SendTransactionParametersImplCopyWith<_$SendTransactionParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
