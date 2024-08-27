// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fees_values.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeeValues _$FeeValuesFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'legacy':
      return FeeValuesLegacy.fromJson(json);
    case 'eip1559':
      return FeeValuesEIP1559.fromJson(json);
    case 'eip4844':
      return FeeValuesEIP4844.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'FeeValues',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FeeValues {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt gasPrice) legacy,
    required TResult Function(BigInt maxFeePerGas, BigInt maxPriorityFeePerGas)
        eip1559,
    required TResult Function(BigInt maxFeePerBlobGas, BigInt maxFeePerGas,
            BigInt maxPriorityFeePerGas)
        eip4844,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt gasPrice)? legacy,
    TResult? Function(BigInt maxFeePerGas, BigInt maxPriorityFeePerGas)?
        eip1559,
    TResult? Function(BigInt maxFeePerBlobGas, BigInt maxFeePerGas,
            BigInt maxPriorityFeePerGas)?
        eip4844,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt gasPrice)? legacy,
    TResult Function(BigInt maxFeePerGas, BigInt maxPriorityFeePerGas)? eip1559,
    TResult Function(BigInt maxFeePerBlobGas, BigInt maxFeePerGas,
            BigInt maxPriorityFeePerGas)?
        eip4844,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeeValuesLegacy value) legacy,
    required TResult Function(FeeValuesEIP1559 value) eip1559,
    required TResult Function(FeeValuesEIP4844 value) eip4844,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeeValuesLegacy value)? legacy,
    TResult? Function(FeeValuesEIP1559 value)? eip1559,
    TResult? Function(FeeValuesEIP4844 value)? eip4844,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeeValuesLegacy value)? legacy,
    TResult Function(FeeValuesEIP1559 value)? eip1559,
    TResult Function(FeeValuesEIP4844 value)? eip4844,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeValuesCopyWith<$Res> {
  factory $FeeValuesCopyWith(FeeValues value, $Res Function(FeeValues) then) =
      _$FeeValuesCopyWithImpl<$Res, FeeValues>;
}

/// @nodoc
class _$FeeValuesCopyWithImpl<$Res, $Val extends FeeValues>
    implements $FeeValuesCopyWith<$Res> {
  _$FeeValuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FeeValuesLegacyImplCopyWith<$Res> {
  factory _$$FeeValuesLegacyImplCopyWith(_$FeeValuesLegacyImpl value,
          $Res Function(_$FeeValuesLegacyImpl) then) =
      __$$FeeValuesLegacyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BigInt gasPrice});
}

/// @nodoc
class __$$FeeValuesLegacyImplCopyWithImpl<$Res>
    extends _$FeeValuesCopyWithImpl<$Res, _$FeeValuesLegacyImpl>
    implements _$$FeeValuesLegacyImplCopyWith<$Res> {
  __$$FeeValuesLegacyImplCopyWithImpl(
      _$FeeValuesLegacyImpl _value, $Res Function(_$FeeValuesLegacyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gasPrice = null,
  }) {
    return _then(_$FeeValuesLegacyImpl(
      gasPrice: null == gasPrice
          ? _value.gasPrice
          : gasPrice // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeeValuesLegacyImpl implements FeeValuesLegacy {
  const _$FeeValuesLegacyImpl({required this.gasPrice, final String? $type})
      : $type = $type ?? 'legacy';

  factory _$FeeValuesLegacyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeeValuesLegacyImplFromJson(json);

  @override
  final BigInt gasPrice;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FeeValues.legacy(gasPrice: $gasPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeValuesLegacyImpl &&
            (identical(other.gasPrice, gasPrice) ||
                other.gasPrice == gasPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gasPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeValuesLegacyImplCopyWith<_$FeeValuesLegacyImpl> get copyWith =>
      __$$FeeValuesLegacyImplCopyWithImpl<_$FeeValuesLegacyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt gasPrice) legacy,
    required TResult Function(BigInt maxFeePerGas, BigInt maxPriorityFeePerGas)
        eip1559,
    required TResult Function(BigInt maxFeePerBlobGas, BigInt maxFeePerGas,
            BigInt maxPriorityFeePerGas)
        eip4844,
  }) {
    return legacy(gasPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt gasPrice)? legacy,
    TResult? Function(BigInt maxFeePerGas, BigInt maxPriorityFeePerGas)?
        eip1559,
    TResult? Function(BigInt maxFeePerBlobGas, BigInt maxFeePerGas,
            BigInt maxPriorityFeePerGas)?
        eip4844,
  }) {
    return legacy?.call(gasPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt gasPrice)? legacy,
    TResult Function(BigInt maxFeePerGas, BigInt maxPriorityFeePerGas)? eip1559,
    TResult Function(BigInt maxFeePerBlobGas, BigInt maxFeePerGas,
            BigInt maxPriorityFeePerGas)?
        eip4844,
    required TResult orElse(),
  }) {
    if (legacy != null) {
      return legacy(gasPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeeValuesLegacy value) legacy,
    required TResult Function(FeeValuesEIP1559 value) eip1559,
    required TResult Function(FeeValuesEIP4844 value) eip4844,
  }) {
    return legacy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeeValuesLegacy value)? legacy,
    TResult? Function(FeeValuesEIP1559 value)? eip1559,
    TResult? Function(FeeValuesEIP4844 value)? eip4844,
  }) {
    return legacy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeeValuesLegacy value)? legacy,
    TResult Function(FeeValuesEIP1559 value)? eip1559,
    TResult Function(FeeValuesEIP4844 value)? eip4844,
    required TResult orElse(),
  }) {
    if (legacy != null) {
      return legacy(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FeeValuesLegacyImplToJson(
      this,
    );
  }
}

abstract class FeeValuesLegacy implements FeeValues {
  const factory FeeValuesLegacy({required final BigInt gasPrice}) =
      _$FeeValuesLegacyImpl;

  factory FeeValuesLegacy.fromJson(Map<String, dynamic> json) =
      _$FeeValuesLegacyImpl.fromJson;

  BigInt get gasPrice;
  @JsonKey(ignore: true)
  _$$FeeValuesLegacyImplCopyWith<_$FeeValuesLegacyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeeValuesEIP1559ImplCopyWith<$Res> {
  factory _$$FeeValuesEIP1559ImplCopyWith(_$FeeValuesEIP1559Impl value,
          $Res Function(_$FeeValuesEIP1559Impl) then) =
      __$$FeeValuesEIP1559ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BigInt maxFeePerGas, BigInt maxPriorityFeePerGas});
}

/// @nodoc
class __$$FeeValuesEIP1559ImplCopyWithImpl<$Res>
    extends _$FeeValuesCopyWithImpl<$Res, _$FeeValuesEIP1559Impl>
    implements _$$FeeValuesEIP1559ImplCopyWith<$Res> {
  __$$FeeValuesEIP1559ImplCopyWithImpl(_$FeeValuesEIP1559Impl _value,
      $Res Function(_$FeeValuesEIP1559Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxFeePerGas = null,
    Object? maxPriorityFeePerGas = null,
  }) {
    return _then(_$FeeValuesEIP1559Impl(
      maxFeePerGas: null == maxFeePerGas
          ? _value.maxFeePerGas
          : maxFeePerGas // ignore: cast_nullable_to_non_nullable
              as BigInt,
      maxPriorityFeePerGas: null == maxPriorityFeePerGas
          ? _value.maxPriorityFeePerGas
          : maxPriorityFeePerGas // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeeValuesEIP1559Impl implements FeeValuesEIP1559 {
  const _$FeeValuesEIP1559Impl(
      {required this.maxFeePerGas,
      required this.maxPriorityFeePerGas,
      final String? $type})
      : $type = $type ?? 'eip1559';

  factory _$FeeValuesEIP1559Impl.fromJson(Map<String, dynamic> json) =>
      _$$FeeValuesEIP1559ImplFromJson(json);

  @override
  final BigInt maxFeePerGas;
  @override
  final BigInt maxPriorityFeePerGas;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FeeValues.eip1559(maxFeePerGas: $maxFeePerGas, maxPriorityFeePerGas: $maxPriorityFeePerGas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeValuesEIP1559Impl &&
            (identical(other.maxFeePerGas, maxFeePerGas) ||
                other.maxFeePerGas == maxFeePerGas) &&
            (identical(other.maxPriorityFeePerGas, maxPriorityFeePerGas) ||
                other.maxPriorityFeePerGas == maxPriorityFeePerGas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, maxFeePerGas, maxPriorityFeePerGas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeValuesEIP1559ImplCopyWith<_$FeeValuesEIP1559Impl> get copyWith =>
      __$$FeeValuesEIP1559ImplCopyWithImpl<_$FeeValuesEIP1559Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt gasPrice) legacy,
    required TResult Function(BigInt maxFeePerGas, BigInt maxPriorityFeePerGas)
        eip1559,
    required TResult Function(BigInt maxFeePerBlobGas, BigInt maxFeePerGas,
            BigInt maxPriorityFeePerGas)
        eip4844,
  }) {
    return eip1559(maxFeePerGas, maxPriorityFeePerGas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt gasPrice)? legacy,
    TResult? Function(BigInt maxFeePerGas, BigInt maxPriorityFeePerGas)?
        eip1559,
    TResult? Function(BigInt maxFeePerBlobGas, BigInt maxFeePerGas,
            BigInt maxPriorityFeePerGas)?
        eip4844,
  }) {
    return eip1559?.call(maxFeePerGas, maxPriorityFeePerGas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt gasPrice)? legacy,
    TResult Function(BigInt maxFeePerGas, BigInt maxPriorityFeePerGas)? eip1559,
    TResult Function(BigInt maxFeePerBlobGas, BigInt maxFeePerGas,
            BigInt maxPriorityFeePerGas)?
        eip4844,
    required TResult orElse(),
  }) {
    if (eip1559 != null) {
      return eip1559(maxFeePerGas, maxPriorityFeePerGas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeeValuesLegacy value) legacy,
    required TResult Function(FeeValuesEIP1559 value) eip1559,
    required TResult Function(FeeValuesEIP4844 value) eip4844,
  }) {
    return eip1559(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeeValuesLegacy value)? legacy,
    TResult? Function(FeeValuesEIP1559 value)? eip1559,
    TResult? Function(FeeValuesEIP4844 value)? eip4844,
  }) {
    return eip1559?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeeValuesLegacy value)? legacy,
    TResult Function(FeeValuesEIP1559 value)? eip1559,
    TResult Function(FeeValuesEIP4844 value)? eip4844,
    required TResult orElse(),
  }) {
    if (eip1559 != null) {
      return eip1559(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FeeValuesEIP1559ImplToJson(
      this,
    );
  }
}

abstract class FeeValuesEIP1559 implements FeeValues {
  const factory FeeValuesEIP1559(
      {required final BigInt maxFeePerGas,
      required final BigInt maxPriorityFeePerGas}) = _$FeeValuesEIP1559Impl;

  factory FeeValuesEIP1559.fromJson(Map<String, dynamic> json) =
      _$FeeValuesEIP1559Impl.fromJson;

  BigInt get maxFeePerGas;
  BigInt get maxPriorityFeePerGas;
  @JsonKey(ignore: true)
  _$$FeeValuesEIP1559ImplCopyWith<_$FeeValuesEIP1559Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeeValuesEIP4844ImplCopyWith<$Res> {
  factory _$$FeeValuesEIP4844ImplCopyWith(_$FeeValuesEIP4844Impl value,
          $Res Function(_$FeeValuesEIP4844Impl) then) =
      __$$FeeValuesEIP4844ImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BigInt maxFeePerBlobGas,
      BigInt maxFeePerGas,
      BigInt maxPriorityFeePerGas});
}

/// @nodoc
class __$$FeeValuesEIP4844ImplCopyWithImpl<$Res>
    extends _$FeeValuesCopyWithImpl<$Res, _$FeeValuesEIP4844Impl>
    implements _$$FeeValuesEIP4844ImplCopyWith<$Res> {
  __$$FeeValuesEIP4844ImplCopyWithImpl(_$FeeValuesEIP4844Impl _value,
      $Res Function(_$FeeValuesEIP4844Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxFeePerBlobGas = null,
    Object? maxFeePerGas = null,
    Object? maxPriorityFeePerGas = null,
  }) {
    return _then(_$FeeValuesEIP4844Impl(
      maxFeePerBlobGas: null == maxFeePerBlobGas
          ? _value.maxFeePerBlobGas
          : maxFeePerBlobGas // ignore: cast_nullable_to_non_nullable
              as BigInt,
      maxFeePerGas: null == maxFeePerGas
          ? _value.maxFeePerGas
          : maxFeePerGas // ignore: cast_nullable_to_non_nullable
              as BigInt,
      maxPriorityFeePerGas: null == maxPriorityFeePerGas
          ? _value.maxPriorityFeePerGas
          : maxPriorityFeePerGas // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeeValuesEIP4844Impl implements FeeValuesEIP4844 {
  const _$FeeValuesEIP4844Impl(
      {required this.maxFeePerBlobGas,
      required this.maxFeePerGas,
      required this.maxPriorityFeePerGas,
      final String? $type})
      : $type = $type ?? 'eip4844';

  factory _$FeeValuesEIP4844Impl.fromJson(Map<String, dynamic> json) =>
      _$$FeeValuesEIP4844ImplFromJson(json);

  @override
  final BigInt maxFeePerBlobGas;
  @override
  final BigInt maxFeePerGas;
  @override
  final BigInt maxPriorityFeePerGas;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FeeValues.eip4844(maxFeePerBlobGas: $maxFeePerBlobGas, maxFeePerGas: $maxFeePerGas, maxPriorityFeePerGas: $maxPriorityFeePerGas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeValuesEIP4844Impl &&
            (identical(other.maxFeePerBlobGas, maxFeePerBlobGas) ||
                other.maxFeePerBlobGas == maxFeePerBlobGas) &&
            (identical(other.maxFeePerGas, maxFeePerGas) ||
                other.maxFeePerGas == maxFeePerGas) &&
            (identical(other.maxPriorityFeePerGas, maxPriorityFeePerGas) ||
                other.maxPriorityFeePerGas == maxPriorityFeePerGas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, maxFeePerBlobGas, maxFeePerGas, maxPriorityFeePerGas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeValuesEIP4844ImplCopyWith<_$FeeValuesEIP4844Impl> get copyWith =>
      __$$FeeValuesEIP4844ImplCopyWithImpl<_$FeeValuesEIP4844Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BigInt gasPrice) legacy,
    required TResult Function(BigInt maxFeePerGas, BigInt maxPriorityFeePerGas)
        eip1559,
    required TResult Function(BigInt maxFeePerBlobGas, BigInt maxFeePerGas,
            BigInt maxPriorityFeePerGas)
        eip4844,
  }) {
    return eip4844(maxFeePerBlobGas, maxFeePerGas, maxPriorityFeePerGas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BigInt gasPrice)? legacy,
    TResult? Function(BigInt maxFeePerGas, BigInt maxPriorityFeePerGas)?
        eip1559,
    TResult? Function(BigInt maxFeePerBlobGas, BigInt maxFeePerGas,
            BigInt maxPriorityFeePerGas)?
        eip4844,
  }) {
    return eip4844?.call(maxFeePerBlobGas, maxFeePerGas, maxPriorityFeePerGas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BigInt gasPrice)? legacy,
    TResult Function(BigInt maxFeePerGas, BigInt maxPriorityFeePerGas)? eip1559,
    TResult Function(BigInt maxFeePerBlobGas, BigInt maxFeePerGas,
            BigInt maxPriorityFeePerGas)?
        eip4844,
    required TResult orElse(),
  }) {
    if (eip4844 != null) {
      return eip4844(maxFeePerBlobGas, maxFeePerGas, maxPriorityFeePerGas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeeValuesLegacy value) legacy,
    required TResult Function(FeeValuesEIP1559 value) eip1559,
    required TResult Function(FeeValuesEIP4844 value) eip4844,
  }) {
    return eip4844(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeeValuesLegacy value)? legacy,
    TResult? Function(FeeValuesEIP1559 value)? eip1559,
    TResult? Function(FeeValuesEIP4844 value)? eip4844,
  }) {
    return eip4844?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeeValuesLegacy value)? legacy,
    TResult Function(FeeValuesEIP1559 value)? eip1559,
    TResult Function(FeeValuesEIP4844 value)? eip4844,
    required TResult orElse(),
  }) {
    if (eip4844 != null) {
      return eip4844(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FeeValuesEIP4844ImplToJson(
      this,
    );
  }
}

abstract class FeeValuesEIP4844 implements FeeValues {
  const factory FeeValuesEIP4844(
      {required final BigInt maxFeePerBlobGas,
      required final BigInt maxFeePerGas,
      required final BigInt maxPriorityFeePerGas}) = _$FeeValuesEIP4844Impl;

  factory FeeValuesEIP4844.fromJson(Map<String, dynamic> json) =
      _$FeeValuesEIP4844Impl.fromJson;

  BigInt get maxFeePerBlobGas;
  BigInt get maxFeePerGas;
  BigInt get maxPriorityFeePerGas;
  @JsonKey(ignore: true)
  _$$FeeValuesEIP4844ImplCopyWith<_$FeeValuesEIP4844Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
