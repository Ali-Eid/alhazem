// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currencies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrenciesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrencies,
    required TResult Function() getOrderTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrencies,
    TResult? Function()? getOrderTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrencies,
    TResult Function()? getOrderTypes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrencies value) getCurrencies,
    required TResult Function(_GetOrderTypes value) getOrderTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrencies value)? getCurrencies,
    TResult? Function(_GetOrderTypes value)? getOrderTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrencies value)? getCurrencies,
    TResult Function(_GetOrderTypes value)? getOrderTypes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesEventCopyWith<$Res> {
  factory $CurrenciesEventCopyWith(
          CurrenciesEvent value, $Res Function(CurrenciesEvent) then) =
      _$CurrenciesEventCopyWithImpl<$Res, CurrenciesEvent>;
}

/// @nodoc
class _$CurrenciesEventCopyWithImpl<$Res, $Val extends CurrenciesEvent>
    implements $CurrenciesEventCopyWith<$Res> {
  _$CurrenciesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCurrenciesImplCopyWith<$Res> {
  factory _$$GetCurrenciesImplCopyWith(
          _$GetCurrenciesImpl value, $Res Function(_$GetCurrenciesImpl) then) =
      __$$GetCurrenciesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrenciesImplCopyWithImpl<$Res>
    extends _$CurrenciesEventCopyWithImpl<$Res, _$GetCurrenciesImpl>
    implements _$$GetCurrenciesImplCopyWith<$Res> {
  __$$GetCurrenciesImplCopyWithImpl(
      _$GetCurrenciesImpl _value, $Res Function(_$GetCurrenciesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrenciesImpl implements _GetCurrencies {
  const _$GetCurrenciesImpl();

  @override
  String toString() {
    return 'CurrenciesEvent.getCurrencies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrenciesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrencies,
    required TResult Function() getOrderTypes,
  }) {
    return getCurrencies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrencies,
    TResult? Function()? getOrderTypes,
  }) {
    return getCurrencies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrencies,
    TResult Function()? getOrderTypes,
    required TResult orElse(),
  }) {
    if (getCurrencies != null) {
      return getCurrencies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrencies value) getCurrencies,
    required TResult Function(_GetOrderTypes value) getOrderTypes,
  }) {
    return getCurrencies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrencies value)? getCurrencies,
    TResult? Function(_GetOrderTypes value)? getOrderTypes,
  }) {
    return getCurrencies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrencies value)? getCurrencies,
    TResult Function(_GetOrderTypes value)? getOrderTypes,
    required TResult orElse(),
  }) {
    if (getCurrencies != null) {
      return getCurrencies(this);
    }
    return orElse();
  }
}

abstract class _GetCurrencies implements CurrenciesEvent {
  const factory _GetCurrencies() = _$GetCurrenciesImpl;
}

/// @nodoc
abstract class _$$GetOrderTypesImplCopyWith<$Res> {
  factory _$$GetOrderTypesImplCopyWith(
          _$GetOrderTypesImpl value, $Res Function(_$GetOrderTypesImpl) then) =
      __$$GetOrderTypesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrderTypesImplCopyWithImpl<$Res>
    extends _$CurrenciesEventCopyWithImpl<$Res, _$GetOrderTypesImpl>
    implements _$$GetOrderTypesImplCopyWith<$Res> {
  __$$GetOrderTypesImplCopyWithImpl(
      _$GetOrderTypesImpl _value, $Res Function(_$GetOrderTypesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetOrderTypesImpl implements _GetOrderTypes {
  const _$GetOrderTypesImpl();

  @override
  String toString() {
    return 'CurrenciesEvent.getOrderTypes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrderTypesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrencies,
    required TResult Function() getOrderTypes,
  }) {
    return getOrderTypes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrencies,
    TResult? Function()? getOrderTypes,
  }) {
    return getOrderTypes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrencies,
    TResult Function()? getOrderTypes,
    required TResult orElse(),
  }) {
    if (getOrderTypes != null) {
      return getOrderTypes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrencies value) getCurrencies,
    required TResult Function(_GetOrderTypes value) getOrderTypes,
  }) {
    return getOrderTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrencies value)? getCurrencies,
    TResult? Function(_GetOrderTypes value)? getOrderTypes,
  }) {
    return getOrderTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrencies value)? getCurrencies,
    TResult Function(_GetOrderTypes value)? getOrderTypes,
    required TResult orElse(),
  }) {
    if (getOrderTypes != null) {
      return getOrderTypes(this);
    }
    return orElse();
  }
}

abstract class _GetOrderTypes implements CurrenciesEvent {
  const factory _GetOrderTypes() = _$GetOrderTypesImpl;
}

/// @nodoc
mixin _$CurrenciesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ResponseModel<List<StaticModel>> currencies)
        loadedCurrencies,
    required TResult Function(ResponseModel<List<OrderTypeModel>> types)
        loadedOrderTypes,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ResponseModel<List<StaticModel>> currencies)?
        loadedCurrencies,
    TResult? Function(ResponseModel<List<OrderTypeModel>> types)?
        loadedOrderTypes,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ResponseModel<List<StaticModel>> currencies)?
        loadedCurrencies,
    TResult Function(ResponseModel<List<OrderTypeModel>> types)?
        loadedOrderTypes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedCurrencies value) loadedCurrencies,
    required TResult Function(_LoadedOrderTypes value) loadedOrderTypes,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedCurrencies value)? loadedCurrencies,
    TResult? Function(_LoadedOrderTypes value)? loadedOrderTypes,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedCurrencies value)? loadedCurrencies,
    TResult Function(_LoadedOrderTypes value)? loadedOrderTypes,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesStateCopyWith<$Res> {
  factory $CurrenciesStateCopyWith(
          CurrenciesState value, $Res Function(CurrenciesState) then) =
      _$CurrenciesStateCopyWithImpl<$Res, CurrenciesState>;
}

/// @nodoc
class _$CurrenciesStateCopyWithImpl<$Res, $Val extends CurrenciesState>
    implements $CurrenciesStateCopyWith<$Res> {
  _$CurrenciesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CurrenciesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CurrenciesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ResponseModel<List<StaticModel>> currencies)
        loadedCurrencies,
    required TResult Function(ResponseModel<List<OrderTypeModel>> types)
        loadedOrderTypes,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ResponseModel<List<StaticModel>> currencies)?
        loadedCurrencies,
    TResult? Function(ResponseModel<List<OrderTypeModel>> types)?
        loadedOrderTypes,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ResponseModel<List<StaticModel>> currencies)?
        loadedCurrencies,
    TResult Function(ResponseModel<List<OrderTypeModel>> types)?
        loadedOrderTypes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedCurrencies value) loadedCurrencies,
    required TResult Function(_LoadedOrderTypes value) loadedOrderTypes,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedCurrencies value)? loadedCurrencies,
    TResult? Function(_LoadedOrderTypes value)? loadedOrderTypes,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedCurrencies value)? loadedCurrencies,
    TResult Function(_LoadedOrderTypes value)? loadedOrderTypes,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CurrenciesState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedCurrenciesImplCopyWith<$Res> {
  factory _$$LoadedCurrenciesImplCopyWith(_$LoadedCurrenciesImpl value,
          $Res Function(_$LoadedCurrenciesImpl) then) =
      __$$LoadedCurrenciesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<List<StaticModel>> currencies});

  $ResponseModelCopyWith<List<StaticModel>, $Res> get currencies;
}

/// @nodoc
class __$$LoadedCurrenciesImplCopyWithImpl<$Res>
    extends _$CurrenciesStateCopyWithImpl<$Res, _$LoadedCurrenciesImpl>
    implements _$$LoadedCurrenciesImplCopyWith<$Res> {
  __$$LoadedCurrenciesImplCopyWithImpl(_$LoadedCurrenciesImpl _value,
      $Res Function(_$LoadedCurrenciesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = null,
  }) {
    return _then(_$LoadedCurrenciesImpl(
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as ResponseModel<List<StaticModel>>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<List<StaticModel>, $Res> get currencies {
    return $ResponseModelCopyWith<List<StaticModel>, $Res>(_value.currencies,
        (value) {
      return _then(_value.copyWith(currencies: value));
    });
  }
}

/// @nodoc

class _$LoadedCurrenciesImpl implements _LoadedCurrencies {
  const _$LoadedCurrenciesImpl({required this.currencies});

  @override
  final ResponseModel<List<StaticModel>> currencies;

  @override
  String toString() {
    return 'CurrenciesState.loadedCurrencies(currencies: $currencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedCurrenciesImpl &&
            (identical(other.currencies, currencies) ||
                other.currencies == currencies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currencies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCurrenciesImplCopyWith<_$LoadedCurrenciesImpl> get copyWith =>
      __$$LoadedCurrenciesImplCopyWithImpl<_$LoadedCurrenciesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ResponseModel<List<StaticModel>> currencies)
        loadedCurrencies,
    required TResult Function(ResponseModel<List<OrderTypeModel>> types)
        loadedOrderTypes,
    required TResult Function(String message) error,
  }) {
    return loadedCurrencies(currencies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ResponseModel<List<StaticModel>> currencies)?
        loadedCurrencies,
    TResult? Function(ResponseModel<List<OrderTypeModel>> types)?
        loadedOrderTypes,
    TResult? Function(String message)? error,
  }) {
    return loadedCurrencies?.call(currencies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ResponseModel<List<StaticModel>> currencies)?
        loadedCurrencies,
    TResult Function(ResponseModel<List<OrderTypeModel>> types)?
        loadedOrderTypes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedCurrencies != null) {
      return loadedCurrencies(currencies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedCurrencies value) loadedCurrencies,
    required TResult Function(_LoadedOrderTypes value) loadedOrderTypes,
    required TResult Function(_Error value) error,
  }) {
    return loadedCurrencies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedCurrencies value)? loadedCurrencies,
    TResult? Function(_LoadedOrderTypes value)? loadedOrderTypes,
    TResult? Function(_Error value)? error,
  }) {
    return loadedCurrencies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedCurrencies value)? loadedCurrencies,
    TResult Function(_LoadedOrderTypes value)? loadedOrderTypes,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedCurrencies != null) {
      return loadedCurrencies(this);
    }
    return orElse();
  }
}

abstract class _LoadedCurrencies implements CurrenciesState {
  const factory _LoadedCurrencies(
          {required final ResponseModel<List<StaticModel>> currencies}) =
      _$LoadedCurrenciesImpl;

  ResponseModel<List<StaticModel>> get currencies;
  @JsonKey(ignore: true)
  _$$LoadedCurrenciesImplCopyWith<_$LoadedCurrenciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedOrderTypesImplCopyWith<$Res> {
  factory _$$LoadedOrderTypesImplCopyWith(_$LoadedOrderTypesImpl value,
          $Res Function(_$LoadedOrderTypesImpl) then) =
      __$$LoadedOrderTypesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<List<OrderTypeModel>> types});

  $ResponseModelCopyWith<List<OrderTypeModel>, $Res> get types;
}

/// @nodoc
class __$$LoadedOrderTypesImplCopyWithImpl<$Res>
    extends _$CurrenciesStateCopyWithImpl<$Res, _$LoadedOrderTypesImpl>
    implements _$$LoadedOrderTypesImplCopyWith<$Res> {
  __$$LoadedOrderTypesImplCopyWithImpl(_$LoadedOrderTypesImpl _value,
      $Res Function(_$LoadedOrderTypesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
  }) {
    return _then(_$LoadedOrderTypesImpl(
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as ResponseModel<List<OrderTypeModel>>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<List<OrderTypeModel>, $Res> get types {
    return $ResponseModelCopyWith<List<OrderTypeModel>, $Res>(_value.types,
        (value) {
      return _then(_value.copyWith(types: value));
    });
  }
}

/// @nodoc

class _$LoadedOrderTypesImpl implements _LoadedOrderTypes {
  const _$LoadedOrderTypesImpl({required this.types});

  @override
  final ResponseModel<List<OrderTypeModel>> types;

  @override
  String toString() {
    return 'CurrenciesState.loadedOrderTypes(types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedOrderTypesImpl &&
            (identical(other.types, types) || other.types == types));
  }

  @override
  int get hashCode => Object.hash(runtimeType, types);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedOrderTypesImplCopyWith<_$LoadedOrderTypesImpl> get copyWith =>
      __$$LoadedOrderTypesImplCopyWithImpl<_$LoadedOrderTypesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ResponseModel<List<StaticModel>> currencies)
        loadedCurrencies,
    required TResult Function(ResponseModel<List<OrderTypeModel>> types)
        loadedOrderTypes,
    required TResult Function(String message) error,
  }) {
    return loadedOrderTypes(types);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ResponseModel<List<StaticModel>> currencies)?
        loadedCurrencies,
    TResult? Function(ResponseModel<List<OrderTypeModel>> types)?
        loadedOrderTypes,
    TResult? Function(String message)? error,
  }) {
    return loadedOrderTypes?.call(types);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ResponseModel<List<StaticModel>> currencies)?
        loadedCurrencies,
    TResult Function(ResponseModel<List<OrderTypeModel>> types)?
        loadedOrderTypes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedOrderTypes != null) {
      return loadedOrderTypes(types);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedCurrencies value) loadedCurrencies,
    required TResult Function(_LoadedOrderTypes value) loadedOrderTypes,
    required TResult Function(_Error value) error,
  }) {
    return loadedOrderTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedCurrencies value)? loadedCurrencies,
    TResult? Function(_LoadedOrderTypes value)? loadedOrderTypes,
    TResult? Function(_Error value)? error,
  }) {
    return loadedOrderTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedCurrencies value)? loadedCurrencies,
    TResult Function(_LoadedOrderTypes value)? loadedOrderTypes,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedOrderTypes != null) {
      return loadedOrderTypes(this);
    }
    return orElse();
  }
}

abstract class _LoadedOrderTypes implements CurrenciesState {
  const factory _LoadedOrderTypes(
          {required final ResponseModel<List<OrderTypeModel>> types}) =
      _$LoadedOrderTypesImpl;

  ResponseModel<List<OrderTypeModel>> get types;
  @JsonKey(ignore: true)
  _$$LoadedOrderTypesImplCopyWith<_$LoadedOrderTypesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CurrenciesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CurrenciesState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ResponseModel<List<StaticModel>> currencies)
        loadedCurrencies,
    required TResult Function(ResponseModel<List<OrderTypeModel>> types)
        loadedOrderTypes,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ResponseModel<List<StaticModel>> currencies)?
        loadedCurrencies,
    TResult? Function(ResponseModel<List<OrderTypeModel>> types)?
        loadedOrderTypes,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ResponseModel<List<StaticModel>> currencies)?
        loadedCurrencies,
    TResult Function(ResponseModel<List<OrderTypeModel>> types)?
        loadedOrderTypes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedCurrencies value) loadedCurrencies,
    required TResult Function(_LoadedOrderTypes value) loadedOrderTypes,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedCurrencies value)? loadedCurrencies,
    TResult? Function(_LoadedOrderTypes value)? loadedOrderTypes,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedCurrencies value)? loadedCurrencies,
    TResult Function(_LoadedOrderTypes value)? loadedOrderTypes,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CurrenciesState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
