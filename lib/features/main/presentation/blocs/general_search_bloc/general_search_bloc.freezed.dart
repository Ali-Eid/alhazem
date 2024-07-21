// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GeneralSearchEvent {
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, String value, int page)
        generalSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, String value, int page)? generalSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, String value, int page)? generalSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GeneralSearch value) generalSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GeneralSearch value)? generalSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GeneralSearch value)? generalSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeneralSearchEventCopyWith<GeneralSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralSearchEventCopyWith<$Res> {
  factory $GeneralSearchEventCopyWith(
          GeneralSearchEvent value, $Res Function(GeneralSearchEvent) then) =
      _$GeneralSearchEventCopyWithImpl<$Res, GeneralSearchEvent>;
  @useResult
  $Res call({String type, String value, int page});
}

/// @nodoc
class _$GeneralSearchEventCopyWithImpl<$Res, $Val extends GeneralSearchEvent>
    implements $GeneralSearchEventCopyWith<$Res> {
  _$GeneralSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneralSearchImplCopyWith<$Res>
    implements $GeneralSearchEventCopyWith<$Res> {
  factory _$$GeneralSearchImplCopyWith(
          _$GeneralSearchImpl value, $Res Function(_$GeneralSearchImpl) then) =
      __$$GeneralSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String value, int page});
}

/// @nodoc
class __$$GeneralSearchImplCopyWithImpl<$Res>
    extends _$GeneralSearchEventCopyWithImpl<$Res, _$GeneralSearchImpl>
    implements _$$GeneralSearchImplCopyWith<$Res> {
  __$$GeneralSearchImplCopyWithImpl(
      _$GeneralSearchImpl _value, $Res Function(_$GeneralSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? page = null,
  }) {
    return _then(_$GeneralSearchImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GeneralSearchImpl implements _GeneralSearch {
  const _$GeneralSearchImpl(
      {required this.type, required this.value, required this.page});

  @override
  final String type;
  @override
  final String value;
  @override
  final int page;

  @override
  String toString() {
    return 'GeneralSearchEvent.generalSearch(type: $type, value: $value, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralSearchImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, value, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralSearchImplCopyWith<_$GeneralSearchImpl> get copyWith =>
      __$$GeneralSearchImplCopyWithImpl<_$GeneralSearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, String value, int page)
        generalSearch,
  }) {
    return generalSearch(type, value, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, String value, int page)? generalSearch,
  }) {
    return generalSearch?.call(type, value, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, String value, int page)? generalSearch,
    required TResult orElse(),
  }) {
    if (generalSearch != null) {
      return generalSearch(type, value, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GeneralSearch value) generalSearch,
  }) {
    return generalSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GeneralSearch value)? generalSearch,
  }) {
    return generalSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GeneralSearch value)? generalSearch,
    required TResult orElse(),
  }) {
    if (generalSearch != null) {
      return generalSearch(this);
    }
    return orElse();
  }
}

abstract class _GeneralSearch implements GeneralSearchEvent {
  const factory _GeneralSearch(
      {required final String type,
      required final String value,
      required final int page}) = _$GeneralSearchImpl;

  @override
  String get type;
  @override
  String get value;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$GeneralSearchImplCopyWith<_$GeneralSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GeneralSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponsePaginationModel<List<OrderModel>> orders)
        loadedSearchOrders,
    required TResult Function(
            ResponsePaginationModel<List<ServiceModel>> services)
        loadedSearchServices,
    required TResult Function(
            ResponsePaginationModel<List<ContactModel>> contacts)
        loadedSearchContacts,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<OrderModel>> orders)?
        loadedSearchOrders,
    TResult? Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedSearchServices,
    TResult? Function(ResponsePaginationModel<List<ContactModel>> contacts)?
        loadedSearchContacts,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<OrderModel>> orders)?
        loadedSearchOrders,
    TResult Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedSearchServices,
    TResult Function(ResponsePaginationModel<List<ContactModel>> contacts)?
        loadedSearchContacts,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedSearchOrders value) loadedSearchOrders,
    required TResult Function(_LoadedSearchServices value) loadedSearchServices,
    required TResult Function(_LoadedSearchContacts value) loadedSearchContacts,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSearchOrders value)? loadedSearchOrders,
    TResult? Function(_LoadedSearchServices value)? loadedSearchServices,
    TResult? Function(_LoadedSearchContacts value)? loadedSearchContacts,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSearchOrders value)? loadedSearchOrders,
    TResult Function(_LoadedSearchServices value)? loadedSearchServices,
    TResult Function(_LoadedSearchContacts value)? loadedSearchContacts,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralSearchStateCopyWith<$Res> {
  factory $GeneralSearchStateCopyWith(
          GeneralSearchState value, $Res Function(GeneralSearchState) then) =
      _$GeneralSearchStateCopyWithImpl<$Res, GeneralSearchState>;
}

/// @nodoc
class _$GeneralSearchStateCopyWithImpl<$Res, $Val extends GeneralSearchState>
    implements $GeneralSearchStateCopyWith<$Res> {
  _$GeneralSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GeneralSearchStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GeneralSearchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponsePaginationModel<List<OrderModel>> orders)
        loadedSearchOrders,
    required TResult Function(
            ResponsePaginationModel<List<ServiceModel>> services)
        loadedSearchServices,
    required TResult Function(
            ResponsePaginationModel<List<ContactModel>> contacts)
        loadedSearchContacts,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<OrderModel>> orders)?
        loadedSearchOrders,
    TResult? Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedSearchServices,
    TResult? Function(ResponsePaginationModel<List<ContactModel>> contacts)?
        loadedSearchContacts,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<OrderModel>> orders)?
        loadedSearchOrders,
    TResult Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedSearchServices,
    TResult Function(ResponsePaginationModel<List<ContactModel>> contacts)?
        loadedSearchContacts,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedSearchOrders value) loadedSearchOrders,
    required TResult Function(_LoadedSearchServices value) loadedSearchServices,
    required TResult Function(_LoadedSearchContacts value) loadedSearchContacts,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSearchOrders value)? loadedSearchOrders,
    TResult? Function(_LoadedSearchServices value)? loadedSearchServices,
    TResult? Function(_LoadedSearchContacts value)? loadedSearchContacts,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSearchOrders value)? loadedSearchOrders,
    TResult Function(_LoadedSearchServices value)? loadedSearchServices,
    TResult Function(_LoadedSearchContacts value)? loadedSearchContacts,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GeneralSearchState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$GeneralSearchStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'GeneralSearchState.loading()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponsePaginationModel<List<OrderModel>> orders)
        loadedSearchOrders,
    required TResult Function(
            ResponsePaginationModel<List<ServiceModel>> services)
        loadedSearchServices,
    required TResult Function(
            ResponsePaginationModel<List<ContactModel>> contacts)
        loadedSearchContacts,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<OrderModel>> orders)?
        loadedSearchOrders,
    TResult? Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedSearchServices,
    TResult? Function(ResponsePaginationModel<List<ContactModel>> contacts)?
        loadedSearchContacts,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<OrderModel>> orders)?
        loadedSearchOrders,
    TResult Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedSearchServices,
    TResult Function(ResponsePaginationModel<List<ContactModel>> contacts)?
        loadedSearchContacts,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedSearchOrders value) loadedSearchOrders,
    required TResult Function(_LoadedSearchServices value) loadedSearchServices,
    required TResult Function(_LoadedSearchContacts value) loadedSearchContacts,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSearchOrders value)? loadedSearchOrders,
    TResult? Function(_LoadedSearchServices value)? loadedSearchServices,
    TResult? Function(_LoadedSearchContacts value)? loadedSearchContacts,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSearchOrders value)? loadedSearchOrders,
    TResult Function(_LoadedSearchServices value)? loadedSearchServices,
    TResult Function(_LoadedSearchContacts value)? loadedSearchContacts,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GeneralSearchState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedSearchOrdersImplCopyWith<$Res> {
  factory _$$LoadedSearchOrdersImplCopyWith(_$LoadedSearchOrdersImpl value,
          $Res Function(_$LoadedSearchOrdersImpl) then) =
      __$$LoadedSearchOrdersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponsePaginationModel<List<OrderModel>> orders});

  $ResponsePaginationModelCopyWith<List<OrderModel>, $Res> get orders;
}

/// @nodoc
class __$$LoadedSearchOrdersImplCopyWithImpl<$Res>
    extends _$GeneralSearchStateCopyWithImpl<$Res, _$LoadedSearchOrdersImpl>
    implements _$$LoadedSearchOrdersImplCopyWith<$Res> {
  __$$LoadedSearchOrdersImplCopyWithImpl(_$LoadedSearchOrdersImpl _value,
      $Res Function(_$LoadedSearchOrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$LoadedSearchOrdersImpl(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as ResponsePaginationModel<List<OrderModel>>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponsePaginationModelCopyWith<List<OrderModel>, $Res> get orders {
    return $ResponsePaginationModelCopyWith<List<OrderModel>, $Res>(
        _value.orders, (value) {
      return _then(_value.copyWith(orders: value));
    });
  }
}

/// @nodoc

class _$LoadedSearchOrdersImpl implements _LoadedSearchOrders {
  const _$LoadedSearchOrdersImpl({required this.orders});

  @override
  final ResponsePaginationModel<List<OrderModel>> orders;

  @override
  String toString() {
    return 'GeneralSearchState.loadedSearchOrders(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSearchOrdersImpl &&
            (identical(other.orders, orders) || other.orders == orders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSearchOrdersImplCopyWith<_$LoadedSearchOrdersImpl> get copyWith =>
      __$$LoadedSearchOrdersImplCopyWithImpl<_$LoadedSearchOrdersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponsePaginationModel<List<OrderModel>> orders)
        loadedSearchOrders,
    required TResult Function(
            ResponsePaginationModel<List<ServiceModel>> services)
        loadedSearchServices,
    required TResult Function(
            ResponsePaginationModel<List<ContactModel>> contacts)
        loadedSearchContacts,
    required TResult Function(String message) error,
  }) {
    return loadedSearchOrders(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<OrderModel>> orders)?
        loadedSearchOrders,
    TResult? Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedSearchServices,
    TResult? Function(ResponsePaginationModel<List<ContactModel>> contacts)?
        loadedSearchContacts,
    TResult? Function(String message)? error,
  }) {
    return loadedSearchOrders?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<OrderModel>> orders)?
        loadedSearchOrders,
    TResult Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedSearchServices,
    TResult Function(ResponsePaginationModel<List<ContactModel>> contacts)?
        loadedSearchContacts,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedSearchOrders != null) {
      return loadedSearchOrders(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedSearchOrders value) loadedSearchOrders,
    required TResult Function(_LoadedSearchServices value) loadedSearchServices,
    required TResult Function(_LoadedSearchContacts value) loadedSearchContacts,
    required TResult Function(_Error value) error,
  }) {
    return loadedSearchOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSearchOrders value)? loadedSearchOrders,
    TResult? Function(_LoadedSearchServices value)? loadedSearchServices,
    TResult? Function(_LoadedSearchContacts value)? loadedSearchContacts,
    TResult? Function(_Error value)? error,
  }) {
    return loadedSearchOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSearchOrders value)? loadedSearchOrders,
    TResult Function(_LoadedSearchServices value)? loadedSearchServices,
    TResult Function(_LoadedSearchContacts value)? loadedSearchContacts,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedSearchOrders != null) {
      return loadedSearchOrders(this);
    }
    return orElse();
  }
}

abstract class _LoadedSearchOrders implements GeneralSearchState {
  const factory _LoadedSearchOrders(
          {required final ResponsePaginationModel<List<OrderModel>> orders}) =
      _$LoadedSearchOrdersImpl;

  ResponsePaginationModel<List<OrderModel>> get orders;
  @JsonKey(ignore: true)
  _$$LoadedSearchOrdersImplCopyWith<_$LoadedSearchOrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedSearchServicesImplCopyWith<$Res> {
  factory _$$LoadedSearchServicesImplCopyWith(_$LoadedSearchServicesImpl value,
          $Res Function(_$LoadedSearchServicesImpl) then) =
      __$$LoadedSearchServicesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponsePaginationModel<List<ServiceModel>> services});

  $ResponsePaginationModelCopyWith<List<ServiceModel>, $Res> get services;
}

/// @nodoc
class __$$LoadedSearchServicesImplCopyWithImpl<$Res>
    extends _$GeneralSearchStateCopyWithImpl<$Res, _$LoadedSearchServicesImpl>
    implements _$$LoadedSearchServicesImplCopyWith<$Res> {
  __$$LoadedSearchServicesImplCopyWithImpl(_$LoadedSearchServicesImpl _value,
      $Res Function(_$LoadedSearchServicesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
  }) {
    return _then(_$LoadedSearchServicesImpl(
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as ResponsePaginationModel<List<ServiceModel>>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponsePaginationModelCopyWith<List<ServiceModel>, $Res> get services {
    return $ResponsePaginationModelCopyWith<List<ServiceModel>, $Res>(
        _value.services, (value) {
      return _then(_value.copyWith(services: value));
    });
  }
}

/// @nodoc

class _$LoadedSearchServicesImpl implements _LoadedSearchServices {
  const _$LoadedSearchServicesImpl({required this.services});

  @override
  final ResponsePaginationModel<List<ServiceModel>> services;

  @override
  String toString() {
    return 'GeneralSearchState.loadedSearchServices(services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSearchServicesImpl &&
            (identical(other.services, services) ||
                other.services == services));
  }

  @override
  int get hashCode => Object.hash(runtimeType, services);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSearchServicesImplCopyWith<_$LoadedSearchServicesImpl>
      get copyWith =>
          __$$LoadedSearchServicesImplCopyWithImpl<_$LoadedSearchServicesImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponsePaginationModel<List<OrderModel>> orders)
        loadedSearchOrders,
    required TResult Function(
            ResponsePaginationModel<List<ServiceModel>> services)
        loadedSearchServices,
    required TResult Function(
            ResponsePaginationModel<List<ContactModel>> contacts)
        loadedSearchContacts,
    required TResult Function(String message) error,
  }) {
    return loadedSearchServices(services);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<OrderModel>> orders)?
        loadedSearchOrders,
    TResult? Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedSearchServices,
    TResult? Function(ResponsePaginationModel<List<ContactModel>> contacts)?
        loadedSearchContacts,
    TResult? Function(String message)? error,
  }) {
    return loadedSearchServices?.call(services);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<OrderModel>> orders)?
        loadedSearchOrders,
    TResult Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedSearchServices,
    TResult Function(ResponsePaginationModel<List<ContactModel>> contacts)?
        loadedSearchContacts,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedSearchServices != null) {
      return loadedSearchServices(services);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedSearchOrders value) loadedSearchOrders,
    required TResult Function(_LoadedSearchServices value) loadedSearchServices,
    required TResult Function(_LoadedSearchContacts value) loadedSearchContacts,
    required TResult Function(_Error value) error,
  }) {
    return loadedSearchServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSearchOrders value)? loadedSearchOrders,
    TResult? Function(_LoadedSearchServices value)? loadedSearchServices,
    TResult? Function(_LoadedSearchContacts value)? loadedSearchContacts,
    TResult? Function(_Error value)? error,
  }) {
    return loadedSearchServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSearchOrders value)? loadedSearchOrders,
    TResult Function(_LoadedSearchServices value)? loadedSearchServices,
    TResult Function(_LoadedSearchContacts value)? loadedSearchContacts,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedSearchServices != null) {
      return loadedSearchServices(this);
    }
    return orElse();
  }
}

abstract class _LoadedSearchServices implements GeneralSearchState {
  const factory _LoadedSearchServices(
      {required final ResponsePaginationModel<List<ServiceModel>>
          services}) = _$LoadedSearchServicesImpl;

  ResponsePaginationModel<List<ServiceModel>> get services;
  @JsonKey(ignore: true)
  _$$LoadedSearchServicesImplCopyWith<_$LoadedSearchServicesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedSearchContactsImplCopyWith<$Res> {
  factory _$$LoadedSearchContactsImplCopyWith(_$LoadedSearchContactsImpl value,
          $Res Function(_$LoadedSearchContactsImpl) then) =
      __$$LoadedSearchContactsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponsePaginationModel<List<ContactModel>> contacts});

  $ResponsePaginationModelCopyWith<List<ContactModel>, $Res> get contacts;
}

/// @nodoc
class __$$LoadedSearchContactsImplCopyWithImpl<$Res>
    extends _$GeneralSearchStateCopyWithImpl<$Res, _$LoadedSearchContactsImpl>
    implements _$$LoadedSearchContactsImplCopyWith<$Res> {
  __$$LoadedSearchContactsImplCopyWithImpl(_$LoadedSearchContactsImpl _value,
      $Res Function(_$LoadedSearchContactsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_$LoadedSearchContactsImpl(
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as ResponsePaginationModel<List<ContactModel>>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponsePaginationModelCopyWith<List<ContactModel>, $Res> get contacts {
    return $ResponsePaginationModelCopyWith<List<ContactModel>, $Res>(
        _value.contacts, (value) {
      return _then(_value.copyWith(contacts: value));
    });
  }
}

/// @nodoc

class _$LoadedSearchContactsImpl implements _LoadedSearchContacts {
  const _$LoadedSearchContactsImpl({required this.contacts});

  @override
  final ResponsePaginationModel<List<ContactModel>> contacts;

  @override
  String toString() {
    return 'GeneralSearchState.loadedSearchContacts(contacts: $contacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSearchContactsImpl &&
            (identical(other.contacts, contacts) ||
                other.contacts == contacts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contacts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSearchContactsImplCopyWith<_$LoadedSearchContactsImpl>
      get copyWith =>
          __$$LoadedSearchContactsImplCopyWithImpl<_$LoadedSearchContactsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponsePaginationModel<List<OrderModel>> orders)
        loadedSearchOrders,
    required TResult Function(
            ResponsePaginationModel<List<ServiceModel>> services)
        loadedSearchServices,
    required TResult Function(
            ResponsePaginationModel<List<ContactModel>> contacts)
        loadedSearchContacts,
    required TResult Function(String message) error,
  }) {
    return loadedSearchContacts(contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<OrderModel>> orders)?
        loadedSearchOrders,
    TResult? Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedSearchServices,
    TResult? Function(ResponsePaginationModel<List<ContactModel>> contacts)?
        loadedSearchContacts,
    TResult? Function(String message)? error,
  }) {
    return loadedSearchContacts?.call(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<OrderModel>> orders)?
        loadedSearchOrders,
    TResult Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedSearchServices,
    TResult Function(ResponsePaginationModel<List<ContactModel>> contacts)?
        loadedSearchContacts,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedSearchContacts != null) {
      return loadedSearchContacts(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedSearchOrders value) loadedSearchOrders,
    required TResult Function(_LoadedSearchServices value) loadedSearchServices,
    required TResult Function(_LoadedSearchContacts value) loadedSearchContacts,
    required TResult Function(_Error value) error,
  }) {
    return loadedSearchContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSearchOrders value)? loadedSearchOrders,
    TResult? Function(_LoadedSearchServices value)? loadedSearchServices,
    TResult? Function(_LoadedSearchContacts value)? loadedSearchContacts,
    TResult? Function(_Error value)? error,
  }) {
    return loadedSearchContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSearchOrders value)? loadedSearchOrders,
    TResult Function(_LoadedSearchServices value)? loadedSearchServices,
    TResult Function(_LoadedSearchContacts value)? loadedSearchContacts,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedSearchContacts != null) {
      return loadedSearchContacts(this);
    }
    return orElse();
  }
}

abstract class _LoadedSearchContacts implements GeneralSearchState {
  const factory _LoadedSearchContacts(
      {required final ResponsePaginationModel<List<ContactModel>>
          contacts}) = _$LoadedSearchContactsImpl;

  ResponsePaginationModel<List<ContactModel>> get contacts;
  @JsonKey(ignore: true)
  _$$LoadedSearchContactsImplCopyWith<_$LoadedSearchContactsImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$GeneralSearchStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'GeneralSearchState.error(message: $message)';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponsePaginationModel<List<OrderModel>> orders)
        loadedSearchOrders,
    required TResult Function(
            ResponsePaginationModel<List<ServiceModel>> services)
        loadedSearchServices,
    required TResult Function(
            ResponsePaginationModel<List<ContactModel>> contacts)
        loadedSearchContacts,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<OrderModel>> orders)?
        loadedSearchOrders,
    TResult? Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedSearchServices,
    TResult? Function(ResponsePaginationModel<List<ContactModel>> contacts)?
        loadedSearchContacts,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<OrderModel>> orders)?
        loadedSearchOrders,
    TResult Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedSearchServices,
    TResult Function(ResponsePaginationModel<List<ContactModel>> contacts)?
        loadedSearchContacts,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedSearchOrders value) loadedSearchOrders,
    required TResult Function(_LoadedSearchServices value) loadedSearchServices,
    required TResult Function(_LoadedSearchContacts value) loadedSearchContacts,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedSearchOrders value)? loadedSearchOrders,
    TResult? Function(_LoadedSearchServices value)? loadedSearchServices,
    TResult? Function(_LoadedSearchContacts value)? loadedSearchContacts,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedSearchOrders value)? loadedSearchOrders,
    TResult Function(_LoadedSearchServices value)? loadedSearchServices,
    TResult Function(_LoadedSearchContacts value)? loadedSearchContacts,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements GeneralSearchState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
