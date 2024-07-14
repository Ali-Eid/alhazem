// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, int page) getOrders,
    required TResult Function(int orderId) getOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, int page)? getOrders,
    TResult? Function(int orderId)? getOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, int page)? getOrders,
    TResult Function(int orderId)? getOrderDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOrdersImplCopyWith<$Res> {
  factory _$$GetOrdersImplCopyWith(
          _$GetOrdersImpl value, $Res Function(_$GetOrdersImpl) then) =
      __$$GetOrdersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type, int page});
}

/// @nodoc
class __$$GetOrdersImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetOrdersImpl>
    implements _$$GetOrdersImplCopyWith<$Res> {
  __$$GetOrdersImplCopyWithImpl(
      _$GetOrdersImpl _value, $Res Function(_$GetOrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? page = null,
  }) {
    return _then(_$GetOrdersImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetOrdersImpl implements _GetOrders {
  const _$GetOrdersImpl({required this.type, required this.page});

  @override
  final String type;
  @override
  final int page;

  @override
  String toString() {
    return 'OrdersEvent.getOrders(type: $type, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrdersImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrdersImplCopyWith<_$GetOrdersImpl> get copyWith =>
      __$$GetOrdersImplCopyWithImpl<_$GetOrdersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, int page) getOrders,
    required TResult Function(int orderId) getOrderDetails,
  }) {
    return getOrders(type, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, int page)? getOrders,
    TResult? Function(int orderId)? getOrderDetails,
  }) {
    return getOrders?.call(type, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, int page)? getOrders,
    TResult Function(int orderId)? getOrderDetails,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(type, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
  }) {
    return getOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
  }) {
    return getOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(this);
    }
    return orElse();
  }
}

abstract class _GetOrders implements OrdersEvent {
  const factory _GetOrders(
      {required final String type, required final int page}) = _$GetOrdersImpl;

  String get type;
  int get page;
  @JsonKey(ignore: true)
  _$$GetOrdersImplCopyWith<_$GetOrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOrderDetailsImplCopyWith<$Res> {
  factory _$$GetOrderDetailsImplCopyWith(_$GetOrderDetailsImpl value,
          $Res Function(_$GetOrderDetailsImpl) then) =
      __$$GetOrderDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$GetOrderDetailsImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$GetOrderDetailsImpl>
    implements _$$GetOrderDetailsImplCopyWith<$Res> {
  __$$GetOrderDetailsImplCopyWithImpl(
      _$GetOrderDetailsImpl _value, $Res Function(_$GetOrderDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$GetOrderDetailsImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetOrderDetailsImpl implements _GetOrderDetails {
  const _$GetOrderDetailsImpl({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'OrdersEvent.getOrderDetails(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderDetailsImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderDetailsImplCopyWith<_$GetOrderDetailsImpl> get copyWith =>
      __$$GetOrderDetailsImplCopyWithImpl<_$GetOrderDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, int page) getOrders,
    required TResult Function(int orderId) getOrderDetails,
  }) {
    return getOrderDetails(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, int page)? getOrders,
    TResult? Function(int orderId)? getOrderDetails,
  }) {
    return getOrderDetails?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, int page)? getOrders,
    TResult Function(int orderId)? getOrderDetails,
    required TResult orElse(),
  }) {
    if (getOrderDetails != null) {
      return getOrderDetails(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderDetails value) getOrderDetails,
  }) {
    return getOrderDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderDetails value)? getOrderDetails,
  }) {
    return getOrderDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderDetails value)? getOrderDetails,
    required TResult orElse(),
  }) {
    if (getOrderDetails != null) {
      return getOrderDetails(this);
    }
    return orElse();
  }
}

abstract class _GetOrderDetails implements OrdersEvent {
  const factory _GetOrderDetails({required final int orderId}) =
      _$GetOrderDetailsImpl;

  int get orderId;
  @JsonKey(ignore: true)
  _$$GetOrderDetailsImplCopyWith<_$GetOrderDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponsePaginationModel<List<OrderModel>> orders)
        loaded,
    required TResult Function(
            ResponseModel<List<OrderDetailsModel>> orderDetails)
        loadedOrderDetails,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<OrderModel>> orders)? loaded,
    TResult? Function(ResponseModel<List<OrderDetailsModel>> orderDetails)?
        loadedOrderDetails,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<OrderModel>> orders)? loaded,
    TResult Function(ResponseModel<List<OrderDetailsModel>> orderDetails)?
        loadedOrderDetails,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedOrderDetails value) loadedOrderDetails,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedOrderDetails value)? loadedOrderDetails,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedOrderDetails value)? loadedOrderDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

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
    extends _$OrdersStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'OrdersState.initial()';
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
        loaded,
    required TResult Function(
            ResponseModel<List<OrderDetailsModel>> orderDetails)
        loadedOrderDetails,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<OrderModel>> orders)? loaded,
    TResult? Function(ResponseModel<List<OrderDetailsModel>> orderDetails)?
        loadedOrderDetails,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<OrderModel>> orders)? loaded,
    TResult Function(ResponseModel<List<OrderDetailsModel>> orderDetails)?
        loadedOrderDetails,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedOrderDetails value) loadedOrderDetails,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedOrderDetails value)? loadedOrderDetails,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedOrderDetails value)? loadedOrderDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrdersState {
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
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'OrdersState.loading()';
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
        loaded,
    required TResult Function(
            ResponseModel<List<OrderDetailsModel>> orderDetails)
        loadedOrderDetails,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<OrderModel>> orders)? loaded,
    TResult? Function(ResponseModel<List<OrderDetailsModel>> orderDetails)?
        loadedOrderDetails,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<OrderModel>> orders)? loaded,
    TResult Function(ResponseModel<List<OrderDetailsModel>> orderDetails)?
        loadedOrderDetails,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedOrderDetails value) loadedOrderDetails,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedOrderDetails value)? loadedOrderDetails,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedOrderDetails value)? loadedOrderDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OrdersState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponsePaginationModel<List<OrderModel>> orders});

  $ResponsePaginationModelCopyWith<List<OrderModel>, $Res> get orders;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$LoadedImpl(
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

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.orders});

  @override
  final ResponsePaginationModel<List<OrderModel>> orders;

  @override
  String toString() {
    return 'OrdersState.loaded(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.orders, orders) || other.orders == orders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponsePaginationModel<List<OrderModel>> orders)
        loaded,
    required TResult Function(
            ResponseModel<List<OrderDetailsModel>> orderDetails)
        loadedOrderDetails,
    required TResult Function(String message) error,
  }) {
    return loaded(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<OrderModel>> orders)? loaded,
    TResult? Function(ResponseModel<List<OrderDetailsModel>> orderDetails)?
        loadedOrderDetails,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<OrderModel>> orders)? loaded,
    TResult Function(ResponseModel<List<OrderDetailsModel>> orderDetails)?
        loadedOrderDetails,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedOrderDetails value) loadedOrderDetails,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedOrderDetails value)? loadedOrderDetails,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedOrderDetails value)? loadedOrderDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements OrdersState {
  const factory _Loaded(
          {required final ResponsePaginationModel<List<OrderModel>> orders}) =
      _$LoadedImpl;

  ResponsePaginationModel<List<OrderModel>> get orders;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedOrderDetailsImplCopyWith<$Res> {
  factory _$$LoadedOrderDetailsImplCopyWith(_$LoadedOrderDetailsImpl value,
          $Res Function(_$LoadedOrderDetailsImpl) then) =
      __$$LoadedOrderDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<List<OrderDetailsModel>> orderDetails});

  $ResponseModelCopyWith<List<OrderDetailsModel>, $Res> get orderDetails;
}

/// @nodoc
class __$$LoadedOrderDetailsImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadedOrderDetailsImpl>
    implements _$$LoadedOrderDetailsImplCopyWith<$Res> {
  __$$LoadedOrderDetailsImplCopyWithImpl(_$LoadedOrderDetailsImpl _value,
      $Res Function(_$LoadedOrderDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDetails = null,
  }) {
    return _then(_$LoadedOrderDetailsImpl(
      orderDetails: null == orderDetails
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as ResponseModel<List<OrderDetailsModel>>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<List<OrderDetailsModel>, $Res> get orderDetails {
    return $ResponseModelCopyWith<List<OrderDetailsModel>, $Res>(
        _value.orderDetails, (value) {
      return _then(_value.copyWith(orderDetails: value));
    });
  }
}

/// @nodoc

class _$LoadedOrderDetailsImpl implements _LoadedOrderDetails {
  const _$LoadedOrderDetailsImpl({required this.orderDetails});

  @override
  final ResponseModel<List<OrderDetailsModel>> orderDetails;

  @override
  String toString() {
    return 'OrdersState.loadedOrderDetails(orderDetails: $orderDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedOrderDetailsImpl &&
            (identical(other.orderDetails, orderDetails) ||
                other.orderDetails == orderDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedOrderDetailsImplCopyWith<_$LoadedOrderDetailsImpl> get copyWith =>
      __$$LoadedOrderDetailsImplCopyWithImpl<_$LoadedOrderDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponsePaginationModel<List<OrderModel>> orders)
        loaded,
    required TResult Function(
            ResponseModel<List<OrderDetailsModel>> orderDetails)
        loadedOrderDetails,
    required TResult Function(String message) error,
  }) {
    return loadedOrderDetails(orderDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<OrderModel>> orders)? loaded,
    TResult? Function(ResponseModel<List<OrderDetailsModel>> orderDetails)?
        loadedOrderDetails,
    TResult? Function(String message)? error,
  }) {
    return loadedOrderDetails?.call(orderDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<OrderModel>> orders)? loaded,
    TResult Function(ResponseModel<List<OrderDetailsModel>> orderDetails)?
        loadedOrderDetails,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedOrderDetails != null) {
      return loadedOrderDetails(orderDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedOrderDetails value) loadedOrderDetails,
    required TResult Function(_Error value) error,
  }) {
    return loadedOrderDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedOrderDetails value)? loadedOrderDetails,
    TResult? Function(_Error value)? error,
  }) {
    return loadedOrderDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedOrderDetails value)? loadedOrderDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedOrderDetails != null) {
      return loadedOrderDetails(this);
    }
    return orElse();
  }
}

abstract class _LoadedOrderDetails implements OrdersState {
  const factory _LoadedOrderDetails(
      {required final ResponseModel<List<OrderDetailsModel>>
          orderDetails}) = _$LoadedOrderDetailsImpl;

  ResponseModel<List<OrderDetailsModel>> get orderDetails;
  @JsonKey(ignore: true)
  _$$LoadedOrderDetailsImplCopyWith<_$LoadedOrderDetailsImpl> get copyWith =>
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
    extends _$OrdersStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'OrdersState.error(message: $message)';
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
        loaded,
    required TResult Function(
            ResponseModel<List<OrderDetailsModel>> orderDetails)
        loadedOrderDetails,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<OrderModel>> orders)? loaded,
    TResult? Function(ResponseModel<List<OrderDetailsModel>> orderDetails)?
        loadedOrderDetails,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<OrderModel>> orders)? loaded,
    TResult Function(ResponseModel<List<OrderDetailsModel>> orderDetails)?
        loadedOrderDetails,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedOrderDetails value) loadedOrderDetails,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedOrderDetails value)? loadedOrderDetails,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedOrderDetails value)? loadedOrderDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements OrdersState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
