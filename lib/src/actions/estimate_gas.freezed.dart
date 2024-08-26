// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estimate_gas.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EstimateGasParameters _$EstimateGasParametersFromJson(
    Map<String, dynamic> json) {
  return _EstimateGasParameters.fromJson(json);
}

/// @nodoc
mixin _$EstimateGasParameters {
  String get type => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get accessList =>
      throw _privateConstructorUsedError;
  String? get account => throw _privateConstructorUsedError;
  int? get chainId => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;
  BigInt? get gas => throw _privateConstructorUsedError;
  FeeValues? get feeValues => throw _privateConstructorUsedError;
  BigInt? get nonce => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  BigInt? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstimateGasParametersCopyWith<EstimateGasParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstimateGasParametersCopyWith<$Res> {
  factory $EstimateGasParametersCopyWith(EstimateGasParameters value,
          $Res Function(EstimateGasParameters) then) =
      _$EstimateGasParametersCopyWithImpl<$Res, EstimateGasParameters>;
  @useResult
  $Res call(
      {String type,
      List<Map<String, dynamic>>? accessList,
      String? account,
      int? chainId,
      String? data,
      BigInt? gas,
      FeeValues? feeValues,
      BigInt? nonce,
      String? to,
      BigInt? value});

  $FeeValuesCopyWith<$Res>? get feeValues;
}

/// @nodoc
class _$EstimateGasParametersCopyWithImpl<$Res,
        $Val extends EstimateGasParameters>
    implements $EstimateGasParametersCopyWith<$Res> {
  _$EstimateGasParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? accessList = freezed,
    Object? account = freezed,
    Object? chainId = freezed,
    Object? data = freezed,
    Object? gas = freezed,
    Object? feeValues = freezed,
    Object? nonce = freezed,
    Object? to = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt?,
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
abstract class _$$EstimateGasParametersImplCopyWith<$Res>
    implements $EstimateGasParametersCopyWith<$Res> {
  factory _$$EstimateGasParametersImplCopyWith(
          _$EstimateGasParametersImpl value,
          $Res Function(_$EstimateGasParametersImpl) then) =
      __$$EstimateGasParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      List<Map<String, dynamic>>? accessList,
      String? account,
      int? chainId,
      String? data,
      BigInt? gas,
      FeeValues? feeValues,
      BigInt? nonce,
      String? to,
      BigInt? value});

  @override
  $FeeValuesCopyWith<$Res>? get feeValues;
}

/// @nodoc
class __$$EstimateGasParametersImplCopyWithImpl<$Res>
    extends _$EstimateGasParametersCopyWithImpl<$Res,
        _$EstimateGasParametersImpl>
    implements _$$EstimateGasParametersImplCopyWith<$Res> {
  __$$EstimateGasParametersImplCopyWithImpl(_$EstimateGasParametersImpl _value,
      $Res Function(_$EstimateGasParametersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? accessList = freezed,
    Object? account = freezed,
    Object? chainId = freezed,
    Object? data = freezed,
    Object? gas = freezed,
    Object? feeValues = freezed,
    Object? nonce = freezed,
    Object? to = freezed,
    Object? value = freezed,
  }) {
    return _then(_$EstimateGasParametersImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EstimateGasParametersImpl implements _EstimateGasParameters {
  const _$EstimateGasParametersImpl(
      {required this.type,
      final List<Map<String, dynamic>>? accessList,
      this.account,
      this.chainId,
      this.data,
      this.gas,
      this.feeValues,
      this.nonce,
      this.to,
      this.value})
      : _accessList = accessList;

  factory _$EstimateGasParametersImpl.fromJson(Map<String, dynamic> json) =>
      _$$EstimateGasParametersImplFromJson(json);

  @override
  final String type;
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
  final String? to;
  @override
  final BigInt? value;

  @override
  String toString() {
    return 'EstimateGasParameters(type: $type, accessList: $accessList, account: $account, chainId: $chainId, data: $data, gas: $gas, feeValues: $feeValues, nonce: $nonce, to: $to, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EstimateGasParametersImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._accessList, _accessList) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.chainId, chainId) || other.chainId == chainId) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.gas, gas) || other.gas == gas) &&
            (identical(other.feeValues, feeValues) ||
                other.feeValues == feeValues) &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(_accessList),
      account,
      chainId,
      data,
      gas,
      feeValues,
      nonce,
      to,
      value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EstimateGasParametersImplCopyWith<_$EstimateGasParametersImpl>
      get copyWith => __$$EstimateGasParametersImplCopyWithImpl<
          _$EstimateGasParametersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EstimateGasParametersImplToJson(
      this,
    );
  }
}

abstract class _EstimateGasParameters implements EstimateGasParameters {
  const factory _EstimateGasParameters(
      {required final String type,
      final List<Map<String, dynamic>>? accessList,
      final String? account,
      final int? chainId,
      final String? data,
      final BigInt? gas,
      final FeeValues? feeValues,
      final BigInt? nonce,
      final String? to,
      final BigInt? value}) = _$EstimateGasParametersImpl;

  factory _EstimateGasParameters.fromJson(Map<String, dynamic> json) =
      _$EstimateGasParametersImpl.fromJson;

  @override
  String get type;
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
  String? get to;
  @override
  BigInt? get value;
  @override
  @JsonKey(ignore: true)
  _$$EstimateGasParametersImplCopyWith<_$EstimateGasParametersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
