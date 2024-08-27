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

/// @nodoc
mixin _$EstimateGasParameters {
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)
        legacy,
    required TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)
        eip1559,
    required TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)
        eip4844,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        legacy,
    TResult? Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip1559,
    TResult? Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip4844,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        legacy,
    TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip1559,
    TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip4844,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EstimateGasParametersLegacy value) legacy,
    required TResult Function(EstimateGasParametersEIP1559 value) eip1559,
    required TResult Function(EstimateGasParametersEIP4844 value) eip4844,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EstimateGasParametersLegacy value)? legacy,
    TResult? Function(EstimateGasParametersEIP1559 value)? eip1559,
    TResult? Function(EstimateGasParametersEIP4844 value)? eip4844,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EstimateGasParametersLegacy value)? legacy,
    TResult Function(EstimateGasParametersEIP1559 value)? eip1559,
    TResult Function(EstimateGasParametersEIP4844 value)? eip4844,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
      {List<Map<String, dynamic>>? accessList,
      String? account,
      int? chainId,
      String? data,
      BigInt? gas,
      BigInt? nonce,
      String? to,
      BigInt? value});
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
    Object? accessList = freezed,
    Object? account = freezed,
    Object? chainId = freezed,
    Object? data = freezed,
    Object? gas = freezed,
    Object? nonce = freezed,
    Object? to = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
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
}

/// @nodoc
abstract class _$$EstimateGasParametersLegacyImplCopyWith<$Res>
    implements $EstimateGasParametersCopyWith<$Res> {
  factory _$$EstimateGasParametersLegacyImplCopyWith(
          _$EstimateGasParametersLegacyImpl value,
          $Res Function(_$EstimateGasParametersLegacyImpl) then) =
      __$$EstimateGasParametersLegacyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Map<String, dynamic>>? accessList,
      String? account,
      int? chainId,
      String? data,
      BigInt? gas,
      FeeValuesLegacy? feeValues,
      BigInt? nonce,
      String? to,
      BigInt? value});
}

/// @nodoc
class __$$EstimateGasParametersLegacyImplCopyWithImpl<$Res>
    extends _$EstimateGasParametersCopyWithImpl<$Res,
        _$EstimateGasParametersLegacyImpl>
    implements _$$EstimateGasParametersLegacyImplCopyWith<$Res> {
  __$$EstimateGasParametersLegacyImplCopyWithImpl(
      _$EstimateGasParametersLegacyImpl _value,
      $Res Function(_$EstimateGasParametersLegacyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    return _then(_$EstimateGasParametersLegacyImpl(
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
              as FeeValuesLegacy?,
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

class _$EstimateGasParametersLegacyImpl extends EstimateGasParametersLegacy {
  const _$EstimateGasParametersLegacyImpl(
      {final List<Map<String, dynamic>>? accessList,
      this.account,
      this.chainId,
      this.data,
      this.gas,
      this.feeValues,
      this.nonce,
      this.to,
      this.value})
      : _accessList = accessList,
        super._();

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
  final FeeValuesLegacy? feeValues;
  @override
  final BigInt? nonce;
  @override
  final String? to;
  @override
  final BigInt? value;

  @override
  String toString() {
    return 'EstimateGasParameters.legacy(accessList: $accessList, account: $account, chainId: $chainId, data: $data, gas: $gas, feeValues: $feeValues, nonce: $nonce, to: $to, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EstimateGasParametersLegacyImpl &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType,
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
  _$$EstimateGasParametersLegacyImplCopyWith<_$EstimateGasParametersLegacyImpl>
      get copyWith => __$$EstimateGasParametersLegacyImplCopyWithImpl<
          _$EstimateGasParametersLegacyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)
        legacy,
    required TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)
        eip1559,
    required TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)
        eip4844,
  }) {
    return legacy(
        accessList, account, chainId, data, gas, feeValues, nonce, to, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        legacy,
    TResult? Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip1559,
    TResult? Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip4844,
  }) {
    return legacy?.call(
        accessList, account, chainId, data, gas, feeValues, nonce, to, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        legacy,
    TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip1559,
    TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip4844,
    required TResult orElse(),
  }) {
    if (legacy != null) {
      return legacy(
          accessList, account, chainId, data, gas, feeValues, nonce, to, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EstimateGasParametersLegacy value) legacy,
    required TResult Function(EstimateGasParametersEIP1559 value) eip1559,
    required TResult Function(EstimateGasParametersEIP4844 value) eip4844,
  }) {
    return legacy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EstimateGasParametersLegacy value)? legacy,
    TResult? Function(EstimateGasParametersEIP1559 value)? eip1559,
    TResult? Function(EstimateGasParametersEIP4844 value)? eip4844,
  }) {
    return legacy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EstimateGasParametersLegacy value)? legacy,
    TResult Function(EstimateGasParametersEIP1559 value)? eip1559,
    TResult Function(EstimateGasParametersEIP4844 value)? eip4844,
    required TResult orElse(),
  }) {
    if (legacy != null) {
      return legacy(this);
    }
    return orElse();
  }
}

abstract class EstimateGasParametersLegacy extends EstimateGasParameters {
  const factory EstimateGasParametersLegacy(
      {final List<Map<String, dynamic>>? accessList,
      final String? account,
      final int? chainId,
      final String? data,
      final BigInt? gas,
      final FeeValuesLegacy? feeValues,
      final BigInt? nonce,
      final String? to,
      final BigInt? value}) = _$EstimateGasParametersLegacyImpl;
  const EstimateGasParametersLegacy._() : super._();

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
  FeeValuesLegacy? get feeValues;
  @override
  BigInt? get nonce;
  @override
  String? get to;
  @override
  BigInt? get value;
  @override
  @JsonKey(ignore: true)
  _$$EstimateGasParametersLegacyImplCopyWith<_$EstimateGasParametersLegacyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EstimateGasParametersEIP1559ImplCopyWith<$Res>
    implements $EstimateGasParametersCopyWith<$Res> {
  factory _$$EstimateGasParametersEIP1559ImplCopyWith(
          _$EstimateGasParametersEIP1559Impl value,
          $Res Function(_$EstimateGasParametersEIP1559Impl) then) =
      __$$EstimateGasParametersEIP1559ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Map<String, dynamic>>? accessList,
      String? account,
      int? chainId,
      String? data,
      BigInt? gas,
      FeeValuesEIP1559? feeValues,
      BigInt? nonce,
      String? to,
      BigInt? value});
}

/// @nodoc
class __$$EstimateGasParametersEIP1559ImplCopyWithImpl<$Res>
    extends _$EstimateGasParametersCopyWithImpl<$Res,
        _$EstimateGasParametersEIP1559Impl>
    implements _$$EstimateGasParametersEIP1559ImplCopyWith<$Res> {
  __$$EstimateGasParametersEIP1559ImplCopyWithImpl(
      _$EstimateGasParametersEIP1559Impl _value,
      $Res Function(_$EstimateGasParametersEIP1559Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    return _then(_$EstimateGasParametersEIP1559Impl(
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
              as FeeValuesEIP1559?,
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

class _$EstimateGasParametersEIP1559Impl extends EstimateGasParametersEIP1559 {
  const _$EstimateGasParametersEIP1559Impl(
      {final List<Map<String, dynamic>>? accessList,
      this.account,
      this.chainId,
      this.data,
      this.gas,
      this.feeValues,
      this.nonce,
      this.to,
      this.value})
      : _accessList = accessList,
        super._();

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
  final FeeValuesEIP1559? feeValues;
  @override
  final BigInt? nonce;
  @override
  final String? to;
  @override
  final BigInt? value;

  @override
  String toString() {
    return 'EstimateGasParameters.eip1559(accessList: $accessList, account: $account, chainId: $chainId, data: $data, gas: $gas, feeValues: $feeValues, nonce: $nonce, to: $to, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EstimateGasParametersEIP1559Impl &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType,
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
  _$$EstimateGasParametersEIP1559ImplCopyWith<
          _$EstimateGasParametersEIP1559Impl>
      get copyWith => __$$EstimateGasParametersEIP1559ImplCopyWithImpl<
          _$EstimateGasParametersEIP1559Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)
        legacy,
    required TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)
        eip1559,
    required TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)
        eip4844,
  }) {
    return eip1559(
        accessList, account, chainId, data, gas, feeValues, nonce, to, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        legacy,
    TResult? Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip1559,
    TResult? Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip4844,
  }) {
    return eip1559?.call(
        accessList, account, chainId, data, gas, feeValues, nonce, to, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        legacy,
    TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip1559,
    TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip4844,
    required TResult orElse(),
  }) {
    if (eip1559 != null) {
      return eip1559(
          accessList, account, chainId, data, gas, feeValues, nonce, to, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EstimateGasParametersLegacy value) legacy,
    required TResult Function(EstimateGasParametersEIP1559 value) eip1559,
    required TResult Function(EstimateGasParametersEIP4844 value) eip4844,
  }) {
    return eip1559(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EstimateGasParametersLegacy value)? legacy,
    TResult? Function(EstimateGasParametersEIP1559 value)? eip1559,
    TResult? Function(EstimateGasParametersEIP4844 value)? eip4844,
  }) {
    return eip1559?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EstimateGasParametersLegacy value)? legacy,
    TResult Function(EstimateGasParametersEIP1559 value)? eip1559,
    TResult Function(EstimateGasParametersEIP4844 value)? eip4844,
    required TResult orElse(),
  }) {
    if (eip1559 != null) {
      return eip1559(this);
    }
    return orElse();
  }
}

abstract class EstimateGasParametersEIP1559 extends EstimateGasParameters {
  const factory EstimateGasParametersEIP1559(
      {final List<Map<String, dynamic>>? accessList,
      final String? account,
      final int? chainId,
      final String? data,
      final BigInt? gas,
      final FeeValuesEIP1559? feeValues,
      final BigInt? nonce,
      final String? to,
      final BigInt? value}) = _$EstimateGasParametersEIP1559Impl;
  const EstimateGasParametersEIP1559._() : super._();

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
  FeeValuesEIP1559? get feeValues;
  @override
  BigInt? get nonce;
  @override
  String? get to;
  @override
  BigInt? get value;
  @override
  @JsonKey(ignore: true)
  _$$EstimateGasParametersEIP1559ImplCopyWith<
          _$EstimateGasParametersEIP1559Impl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EstimateGasParametersEIP4844ImplCopyWith<$Res>
    implements $EstimateGasParametersCopyWith<$Res> {
  factory _$$EstimateGasParametersEIP4844ImplCopyWith(
          _$EstimateGasParametersEIP4844Impl value,
          $Res Function(_$EstimateGasParametersEIP4844Impl) then) =
      __$$EstimateGasParametersEIP4844ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Map<String, dynamic>>? accessList,
      String? account,
      int? chainId,
      String? data,
      BigInt? gas,
      FeeValuesEIP4844? feeValues,
      BigInt? nonce,
      String? to,
      BigInt? value});
}

/// @nodoc
class __$$EstimateGasParametersEIP4844ImplCopyWithImpl<$Res>
    extends _$EstimateGasParametersCopyWithImpl<$Res,
        _$EstimateGasParametersEIP4844Impl>
    implements _$$EstimateGasParametersEIP4844ImplCopyWith<$Res> {
  __$$EstimateGasParametersEIP4844ImplCopyWithImpl(
      _$EstimateGasParametersEIP4844Impl _value,
      $Res Function(_$EstimateGasParametersEIP4844Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    return _then(_$EstimateGasParametersEIP4844Impl(
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
              as FeeValuesEIP4844?,
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

class _$EstimateGasParametersEIP4844Impl extends EstimateGasParametersEIP4844 {
  const _$EstimateGasParametersEIP4844Impl(
      {final List<Map<String, dynamic>>? accessList,
      this.account,
      this.chainId,
      this.data,
      this.gas,
      this.feeValues,
      this.nonce,
      this.to,
      this.value})
      : _accessList = accessList,
        super._();

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
  final FeeValuesEIP4844? feeValues;
  @override
  final BigInt? nonce;
  @override
  final String? to;
  @override
  final BigInt? value;

  @override
  String toString() {
    return 'EstimateGasParameters.eip4844(accessList: $accessList, account: $account, chainId: $chainId, data: $data, gas: $gas, feeValues: $feeValues, nonce: $nonce, to: $to, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EstimateGasParametersEIP4844Impl &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType,
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
  _$$EstimateGasParametersEIP4844ImplCopyWith<
          _$EstimateGasParametersEIP4844Impl>
      get copyWith => __$$EstimateGasParametersEIP4844ImplCopyWithImpl<
          _$EstimateGasParametersEIP4844Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)
        legacy,
    required TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)
        eip1559,
    required TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)
        eip4844,
  }) {
    return eip4844(
        accessList, account, chainId, data, gas, feeValues, nonce, to, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        legacy,
    TResult? Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip1559,
    TResult? Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip4844,
  }) {
    return eip4844?.call(
        accessList, account, chainId, data, gas, feeValues, nonce, to, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        legacy,
    TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip1559,
    TResult Function(
            List<Map<String, dynamic>>? accessList,
            String? account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            String? to,
            BigInt? value)?
        eip4844,
    required TResult orElse(),
  }) {
    if (eip4844 != null) {
      return eip4844(
          accessList, account, chainId, data, gas, feeValues, nonce, to, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EstimateGasParametersLegacy value) legacy,
    required TResult Function(EstimateGasParametersEIP1559 value) eip1559,
    required TResult Function(EstimateGasParametersEIP4844 value) eip4844,
  }) {
    return eip4844(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EstimateGasParametersLegacy value)? legacy,
    TResult? Function(EstimateGasParametersEIP1559 value)? eip1559,
    TResult? Function(EstimateGasParametersEIP4844 value)? eip4844,
  }) {
    return eip4844?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EstimateGasParametersLegacy value)? legacy,
    TResult Function(EstimateGasParametersEIP1559 value)? eip1559,
    TResult Function(EstimateGasParametersEIP4844 value)? eip4844,
    required TResult orElse(),
  }) {
    if (eip4844 != null) {
      return eip4844(this);
    }
    return orElse();
  }
}

abstract class EstimateGasParametersEIP4844 extends EstimateGasParameters {
  const factory EstimateGasParametersEIP4844(
      {final List<Map<String, dynamic>>? accessList,
      final String? account,
      final int? chainId,
      final String? data,
      final BigInt? gas,
      final FeeValuesEIP4844? feeValues,
      final BigInt? nonce,
      final String? to,
      final BigInt? value}) = _$EstimateGasParametersEIP4844Impl;
  const EstimateGasParametersEIP4844._() : super._();

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
  FeeValuesEIP4844? get feeValues;
  @override
  BigInt? get nonce;
  @override
  String? get to;
  @override
  BigInt? get value;
  @override
  @JsonKey(ignore: true)
  _$$EstimateGasParametersEIP4844ImplCopyWith<
          _$EstimateGasParametersEIP4844Impl>
      get copyWith => throw _privateConstructorUsedError;
}
