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

/// @nodoc
mixin _$SendTransactionParameters {
  String get to => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get accessList =>
      throw _privateConstructorUsedError;
  String get account => throw _privateConstructorUsedError;
  int? get chainId => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;
  BigInt? get gas => throw _privateConstructorUsedError;
  FeeValues? get feeValues => throw _privateConstructorUsedError;
  BigInt? get nonce => throw _privateConstructorUsedError;
  BigInt? get value => throw _privateConstructorUsedError;
  dynamic get connector => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)
        legacy,
    required TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)
        eip1559,
    required TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)
        eip4844,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        legacy,
    TResult? Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip1559,
    TResult? Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip4844,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        legacy,
    TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip1559,
    TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip4844,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTransactionParametersLegacy value) legacy,
    required TResult Function(SendTransactionParametersEIP1559 value) eip1559,
    required TResult Function(SendTransactionParametersEIP4844 value) eip4844,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendTransactionParametersLegacy value)? legacy,
    TResult? Function(SendTransactionParametersEIP1559 value)? eip1559,
    TResult? Function(SendTransactionParametersEIP4844 value)? eip4844,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTransactionParametersLegacy value)? legacy,
    TResult Function(SendTransactionParametersEIP1559 value)? eip1559,
    TResult Function(SendTransactionParametersEIP4844 value)? eip4844,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
      {String to,
      List<Map<String, dynamic>>? accessList,
      String account,
      int? chainId,
      String? data,
      BigInt? gas,
      BigInt? nonce,
      BigInt? value,
      dynamic connector});
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
    Object? to = null,
    Object? accessList = freezed,
    Object? account = null,
    Object? chainId = freezed,
    Object? data = freezed,
    Object? gas = freezed,
    Object? nonce = freezed,
    Object? value = freezed,
    Object? connector = freezed,
  }) {
    return _then(_value.copyWith(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      accessList: freezed == accessList
          ? _value.accessList
          : accessList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
abstract class _$$SendTransactionParametersLegacyImplCopyWith<$Res>
    implements $SendTransactionParametersCopyWith<$Res> {
  factory _$$SendTransactionParametersLegacyImplCopyWith(
          _$SendTransactionParametersLegacyImpl value,
          $Res Function(_$SendTransactionParametersLegacyImpl) then) =
      __$$SendTransactionParametersLegacyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String to,
      List<Map<String, dynamic>>? accessList,
      String account,
      int? chainId,
      String? data,
      BigInt? gas,
      FeeValuesLegacy? feeValues,
      BigInt? nonce,
      BigInt? value,
      dynamic connector});
}

/// @nodoc
class __$$SendTransactionParametersLegacyImplCopyWithImpl<$Res>
    extends _$SendTransactionParametersCopyWithImpl<$Res,
        _$SendTransactionParametersLegacyImpl>
    implements _$$SendTransactionParametersLegacyImplCopyWith<$Res> {
  __$$SendTransactionParametersLegacyImplCopyWithImpl(
      _$SendTransactionParametersLegacyImpl _value,
      $Res Function(_$SendTransactionParametersLegacyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? accessList = freezed,
    Object? account = null,
    Object? chainId = freezed,
    Object? data = freezed,
    Object? gas = freezed,
    Object? feeValues = freezed,
    Object? nonce = freezed,
    Object? value = freezed,
    Object? connector = freezed,
  }) {
    return _then(_$SendTransactionParametersLegacyImpl(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      accessList: freezed == accessList
          ? _value._accessList
          : accessList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$SendTransactionParametersLegacyImpl
    extends SendTransactionParametersLegacy {
  const _$SendTransactionParametersLegacyImpl(
      {required this.to,
      final List<Map<String, dynamic>>? accessList,
      required this.account,
      this.chainId,
      this.data,
      this.gas,
      this.feeValues,
      this.nonce,
      this.value,
      this.connector})
      : _accessList = accessList,
        super._();

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
  final String account;
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
  final BigInt? value;
  @override
  final dynamic connector;

  @override
  String toString() {
    return 'SendTransactionParameters.legacy(to: $to, accessList: $accessList, account: $account, chainId: $chainId, data: $data, gas: $gas, feeValues: $feeValues, nonce: $nonce, value: $value, connector: $connector)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTransactionParametersLegacyImpl &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType,
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
  _$$SendTransactionParametersLegacyImplCopyWith<
          _$SendTransactionParametersLegacyImpl>
      get copyWith => __$$SendTransactionParametersLegacyImplCopyWithImpl<
          _$SendTransactionParametersLegacyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)
        legacy,
    required TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)
        eip1559,
    required TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)
        eip4844,
  }) {
    return legacy(to, accessList, account, chainId, data, gas, feeValues, nonce,
        value, connector);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        legacy,
    TResult? Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip1559,
    TResult? Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip4844,
  }) {
    return legacy?.call(to, accessList, account, chainId, data, gas, feeValues,
        nonce, value, connector);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        legacy,
    TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip1559,
    TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip4844,
    required TResult orElse(),
  }) {
    if (legacy != null) {
      return legacy(to, accessList, account, chainId, data, gas, feeValues,
          nonce, value, connector);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTransactionParametersLegacy value) legacy,
    required TResult Function(SendTransactionParametersEIP1559 value) eip1559,
    required TResult Function(SendTransactionParametersEIP4844 value) eip4844,
  }) {
    return legacy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendTransactionParametersLegacy value)? legacy,
    TResult? Function(SendTransactionParametersEIP1559 value)? eip1559,
    TResult? Function(SendTransactionParametersEIP4844 value)? eip4844,
  }) {
    return legacy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTransactionParametersLegacy value)? legacy,
    TResult Function(SendTransactionParametersEIP1559 value)? eip1559,
    TResult Function(SendTransactionParametersEIP4844 value)? eip4844,
    required TResult orElse(),
  }) {
    if (legacy != null) {
      return legacy(this);
    }
    return orElse();
  }
}

abstract class SendTransactionParametersLegacy
    extends SendTransactionParameters {
  const factory SendTransactionParametersLegacy(
      {required final String to,
      final List<Map<String, dynamic>>? accessList,
      required final String account,
      final int? chainId,
      final String? data,
      final BigInt? gas,
      final FeeValuesLegacy? feeValues,
      final BigInt? nonce,
      final BigInt? value,
      final dynamic connector}) = _$SendTransactionParametersLegacyImpl;
  const SendTransactionParametersLegacy._() : super._();

  @override
  String get to;
  @override
  List<Map<String, dynamic>>? get accessList;
  @override
  String get account;
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
  BigInt? get value;
  @override
  dynamic get connector;
  @override
  @JsonKey(ignore: true)
  _$$SendTransactionParametersLegacyImplCopyWith<
          _$SendTransactionParametersLegacyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendTransactionParametersEIP1559ImplCopyWith<$Res>
    implements $SendTransactionParametersCopyWith<$Res> {
  factory _$$SendTransactionParametersEIP1559ImplCopyWith(
          _$SendTransactionParametersEIP1559Impl value,
          $Res Function(_$SendTransactionParametersEIP1559Impl) then) =
      __$$SendTransactionParametersEIP1559ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String to,
      List<Map<String, dynamic>>? accessList,
      String account,
      int? chainId,
      String? data,
      BigInt? gas,
      FeeValuesEIP1559? feeValues,
      BigInt? nonce,
      BigInt? value,
      dynamic connector});
}

/// @nodoc
class __$$SendTransactionParametersEIP1559ImplCopyWithImpl<$Res>
    extends _$SendTransactionParametersCopyWithImpl<$Res,
        _$SendTransactionParametersEIP1559Impl>
    implements _$$SendTransactionParametersEIP1559ImplCopyWith<$Res> {
  __$$SendTransactionParametersEIP1559ImplCopyWithImpl(
      _$SendTransactionParametersEIP1559Impl _value,
      $Res Function(_$SendTransactionParametersEIP1559Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? accessList = freezed,
    Object? account = null,
    Object? chainId = freezed,
    Object? data = freezed,
    Object? gas = freezed,
    Object? feeValues = freezed,
    Object? nonce = freezed,
    Object? value = freezed,
    Object? connector = freezed,
  }) {
    return _then(_$SendTransactionParametersEIP1559Impl(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      accessList: freezed == accessList
          ? _value._accessList
          : accessList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$SendTransactionParametersEIP1559Impl
    extends SendTransactionParametersEIP1559 {
  const _$SendTransactionParametersEIP1559Impl(
      {required this.to,
      final List<Map<String, dynamic>>? accessList,
      required this.account,
      this.chainId,
      this.data,
      this.gas,
      this.feeValues,
      this.nonce,
      this.value,
      this.connector})
      : _accessList = accessList,
        super._();

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
  final String account;
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
  final BigInt? value;
  @override
  final dynamic connector;

  @override
  String toString() {
    return 'SendTransactionParameters.eip1559(to: $to, accessList: $accessList, account: $account, chainId: $chainId, data: $data, gas: $gas, feeValues: $feeValues, nonce: $nonce, value: $value, connector: $connector)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTransactionParametersEIP1559Impl &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType,
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
  _$$SendTransactionParametersEIP1559ImplCopyWith<
          _$SendTransactionParametersEIP1559Impl>
      get copyWith => __$$SendTransactionParametersEIP1559ImplCopyWithImpl<
          _$SendTransactionParametersEIP1559Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)
        legacy,
    required TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)
        eip1559,
    required TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)
        eip4844,
  }) {
    return eip1559(to, accessList, account, chainId, data, gas, feeValues,
        nonce, value, connector);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        legacy,
    TResult? Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip1559,
    TResult? Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip4844,
  }) {
    return eip1559?.call(to, accessList, account, chainId, data, gas, feeValues,
        nonce, value, connector);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        legacy,
    TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip1559,
    TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip4844,
    required TResult orElse(),
  }) {
    if (eip1559 != null) {
      return eip1559(to, accessList, account, chainId, data, gas, feeValues,
          nonce, value, connector);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTransactionParametersLegacy value) legacy,
    required TResult Function(SendTransactionParametersEIP1559 value) eip1559,
    required TResult Function(SendTransactionParametersEIP4844 value) eip4844,
  }) {
    return eip1559(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendTransactionParametersLegacy value)? legacy,
    TResult? Function(SendTransactionParametersEIP1559 value)? eip1559,
    TResult? Function(SendTransactionParametersEIP4844 value)? eip4844,
  }) {
    return eip1559?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTransactionParametersLegacy value)? legacy,
    TResult Function(SendTransactionParametersEIP1559 value)? eip1559,
    TResult Function(SendTransactionParametersEIP4844 value)? eip4844,
    required TResult orElse(),
  }) {
    if (eip1559 != null) {
      return eip1559(this);
    }
    return orElse();
  }
}

abstract class SendTransactionParametersEIP1559
    extends SendTransactionParameters {
  const factory SendTransactionParametersEIP1559(
      {required final String to,
      final List<Map<String, dynamic>>? accessList,
      required final String account,
      final int? chainId,
      final String? data,
      final BigInt? gas,
      final FeeValuesEIP1559? feeValues,
      final BigInt? nonce,
      final BigInt? value,
      final dynamic connector}) = _$SendTransactionParametersEIP1559Impl;
  const SendTransactionParametersEIP1559._() : super._();

  @override
  String get to;
  @override
  List<Map<String, dynamic>>? get accessList;
  @override
  String get account;
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
  BigInt? get value;
  @override
  dynamic get connector;
  @override
  @JsonKey(ignore: true)
  _$$SendTransactionParametersEIP1559ImplCopyWith<
          _$SendTransactionParametersEIP1559Impl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendTransactionParametersEIP4844ImplCopyWith<$Res>
    implements $SendTransactionParametersCopyWith<$Res> {
  factory _$$SendTransactionParametersEIP4844ImplCopyWith(
          _$SendTransactionParametersEIP4844Impl value,
          $Res Function(_$SendTransactionParametersEIP4844Impl) then) =
      __$$SendTransactionParametersEIP4844ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String to,
      List<Map<String, dynamic>>? accessList,
      String account,
      int? chainId,
      String? data,
      BigInt? gas,
      FeeValuesEIP4844? feeValues,
      BigInt? nonce,
      BigInt? value,
      dynamic connector});
}

/// @nodoc
class __$$SendTransactionParametersEIP4844ImplCopyWithImpl<$Res>
    extends _$SendTransactionParametersCopyWithImpl<$Res,
        _$SendTransactionParametersEIP4844Impl>
    implements _$$SendTransactionParametersEIP4844ImplCopyWith<$Res> {
  __$$SendTransactionParametersEIP4844ImplCopyWithImpl(
      _$SendTransactionParametersEIP4844Impl _value,
      $Res Function(_$SendTransactionParametersEIP4844Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? accessList = freezed,
    Object? account = null,
    Object? chainId = freezed,
    Object? data = freezed,
    Object? gas = freezed,
    Object? feeValues = freezed,
    Object? nonce = freezed,
    Object? value = freezed,
    Object? connector = freezed,
  }) {
    return _then(_$SendTransactionParametersEIP4844Impl(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      accessList: freezed == accessList
          ? _value._accessList
          : accessList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$SendTransactionParametersEIP4844Impl
    extends SendTransactionParametersEIP4844 {
  const _$SendTransactionParametersEIP4844Impl(
      {required this.to,
      final List<Map<String, dynamic>>? accessList,
      required this.account,
      this.chainId,
      this.data,
      this.gas,
      this.feeValues,
      this.nonce,
      this.value,
      this.connector})
      : _accessList = accessList,
        super._();

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
  final String account;
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
  final BigInt? value;
  @override
  final dynamic connector;

  @override
  String toString() {
    return 'SendTransactionParameters.eip4844(to: $to, accessList: $accessList, account: $account, chainId: $chainId, data: $data, gas: $gas, feeValues: $feeValues, nonce: $nonce, value: $value, connector: $connector)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTransactionParametersEIP4844Impl &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType,
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
  _$$SendTransactionParametersEIP4844ImplCopyWith<
          _$SendTransactionParametersEIP4844Impl>
      get copyWith => __$$SendTransactionParametersEIP4844ImplCopyWithImpl<
          _$SendTransactionParametersEIP4844Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)
        legacy,
    required TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)
        eip1559,
    required TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)
        eip4844,
  }) {
    return eip4844(to, accessList, account, chainId, data, gas, feeValues,
        nonce, value, connector);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        legacy,
    TResult? Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip1559,
    TResult? Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip4844,
  }) {
    return eip4844?.call(to, accessList, account, chainId, data, gas, feeValues,
        nonce, value, connector);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesLegacy? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        legacy,
    TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP1559? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip1559,
    TResult Function(
            String to,
            List<Map<String, dynamic>>? accessList,
            String account,
            int? chainId,
            String? data,
            BigInt? gas,
            FeeValuesEIP4844? feeValues,
            BigInt? nonce,
            BigInt? value,
            dynamic connector)?
        eip4844,
    required TResult orElse(),
  }) {
    if (eip4844 != null) {
      return eip4844(to, accessList, account, chainId, data, gas, feeValues,
          nonce, value, connector);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTransactionParametersLegacy value) legacy,
    required TResult Function(SendTransactionParametersEIP1559 value) eip1559,
    required TResult Function(SendTransactionParametersEIP4844 value) eip4844,
  }) {
    return eip4844(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendTransactionParametersLegacy value)? legacy,
    TResult? Function(SendTransactionParametersEIP1559 value)? eip1559,
    TResult? Function(SendTransactionParametersEIP4844 value)? eip4844,
  }) {
    return eip4844?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTransactionParametersLegacy value)? legacy,
    TResult Function(SendTransactionParametersEIP1559 value)? eip1559,
    TResult Function(SendTransactionParametersEIP4844 value)? eip4844,
    required TResult orElse(),
  }) {
    if (eip4844 != null) {
      return eip4844(this);
    }
    return orElse();
  }
}

abstract class SendTransactionParametersEIP4844
    extends SendTransactionParameters {
  const factory SendTransactionParametersEIP4844(
      {required final String to,
      final List<Map<String, dynamic>>? accessList,
      required final String account,
      final int? chainId,
      final String? data,
      final BigInt? gas,
      final FeeValuesEIP4844? feeValues,
      final BigInt? nonce,
      final BigInt? value,
      final dynamic connector}) = _$SendTransactionParametersEIP4844Impl;
  const SendTransactionParametersEIP4844._() : super._();

  @override
  String get to;
  @override
  List<Map<String, dynamic>>? get accessList;
  @override
  String get account;
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
  BigInt? get value;
  @override
  dynamic get connector;
  @override
  @JsonKey(ignore: true)
  _$$SendTransactionParametersEIP4844ImplCopyWith<
          _$SendTransactionParametersEIP4844Impl>
      get copyWith => throw _privateConstructorUsedError;
}
