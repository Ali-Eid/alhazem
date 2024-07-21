// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTypeServices,
    required TResult Function(int serviceTypeId, int page) getServices,
    required TResult Function(int serviceId, int leadId) getServiceDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTypeServices,
    TResult? Function(int serviceTypeId, int page)? getServices,
    TResult? Function(int serviceId, int leadId)? getServiceDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTypeServices,
    TResult Function(int serviceTypeId, int page)? getServices,
    TResult Function(int serviceId, int leadId)? getServiceDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTypeServices value) getTypeServices,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTypeServices value)? getTypeServices,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTypeServices value)? getTypeServices,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceEventCopyWith<$Res> {
  factory $ServiceEventCopyWith(
          ServiceEvent value, $Res Function(ServiceEvent) then) =
      _$ServiceEventCopyWithImpl<$Res, ServiceEvent>;
}

/// @nodoc
class _$ServiceEventCopyWithImpl<$Res, $Val extends ServiceEvent>
    implements $ServiceEventCopyWith<$Res> {
  _$ServiceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTypeServicesImplCopyWith<$Res> {
  factory _$$GetTypeServicesImplCopyWith(_$GetTypeServicesImpl value,
          $Res Function(_$GetTypeServicesImpl) then) =
      __$$GetTypeServicesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTypeServicesImplCopyWithImpl<$Res>
    extends _$ServiceEventCopyWithImpl<$Res, _$GetTypeServicesImpl>
    implements _$$GetTypeServicesImplCopyWith<$Res> {
  __$$GetTypeServicesImplCopyWithImpl(
      _$GetTypeServicesImpl _value, $Res Function(_$GetTypeServicesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTypeServicesImpl implements _GetTypeServices {
  const _$GetTypeServicesImpl();

  @override
  String toString() {
    return 'ServiceEvent.getTypeServices()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTypeServicesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTypeServices,
    required TResult Function(int serviceTypeId, int page) getServices,
    required TResult Function(int serviceId, int leadId) getServiceDetails,
  }) {
    return getTypeServices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTypeServices,
    TResult? Function(int serviceTypeId, int page)? getServices,
    TResult? Function(int serviceId, int leadId)? getServiceDetails,
  }) {
    return getTypeServices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTypeServices,
    TResult Function(int serviceTypeId, int page)? getServices,
    TResult Function(int serviceId, int leadId)? getServiceDetails,
    required TResult orElse(),
  }) {
    if (getTypeServices != null) {
      return getTypeServices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTypeServices value) getTypeServices,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
  }) {
    return getTypeServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTypeServices value)? getTypeServices,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
  }) {
    return getTypeServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTypeServices value)? getTypeServices,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    required TResult orElse(),
  }) {
    if (getTypeServices != null) {
      return getTypeServices(this);
    }
    return orElse();
  }
}

abstract class _GetTypeServices implements ServiceEvent {
  const factory _GetTypeServices() = _$GetTypeServicesImpl;
}

/// @nodoc
abstract class _$$GetServicesImplCopyWith<$Res> {
  factory _$$GetServicesImplCopyWith(
          _$GetServicesImpl value, $Res Function(_$GetServicesImpl) then) =
      __$$GetServicesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int serviceTypeId, int page});
}

/// @nodoc
class __$$GetServicesImplCopyWithImpl<$Res>
    extends _$ServiceEventCopyWithImpl<$Res, _$GetServicesImpl>
    implements _$$GetServicesImplCopyWith<$Res> {
  __$$GetServicesImplCopyWithImpl(
      _$GetServicesImpl _value, $Res Function(_$GetServicesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceTypeId = null,
    Object? page = null,
  }) {
    return _then(_$GetServicesImpl(
      serviceTypeId: null == serviceTypeId
          ? _value.serviceTypeId
          : serviceTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetServicesImpl implements _GetServices {
  const _$GetServicesImpl({required this.serviceTypeId, required this.page});

  @override
  final int serviceTypeId;
  @override
  final int page;

  @override
  String toString() {
    return 'ServiceEvent.getServices(serviceTypeId: $serviceTypeId, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetServicesImpl &&
            (identical(other.serviceTypeId, serviceTypeId) ||
                other.serviceTypeId == serviceTypeId) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceTypeId, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetServicesImplCopyWith<_$GetServicesImpl> get copyWith =>
      __$$GetServicesImplCopyWithImpl<_$GetServicesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTypeServices,
    required TResult Function(int serviceTypeId, int page) getServices,
    required TResult Function(int serviceId, int leadId) getServiceDetails,
  }) {
    return getServices(serviceTypeId, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTypeServices,
    TResult? Function(int serviceTypeId, int page)? getServices,
    TResult? Function(int serviceId, int leadId)? getServiceDetails,
  }) {
    return getServices?.call(serviceTypeId, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTypeServices,
    TResult Function(int serviceTypeId, int page)? getServices,
    TResult Function(int serviceId, int leadId)? getServiceDetails,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices(serviceTypeId, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTypeServices value) getTypeServices,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
  }) {
    return getServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTypeServices value)? getTypeServices,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
  }) {
    return getServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTypeServices value)? getTypeServices,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices(this);
    }
    return orElse();
  }
}

abstract class _GetServices implements ServiceEvent {
  const factory _GetServices(
      {required final int serviceTypeId,
      required final int page}) = _$GetServicesImpl;

  int get serviceTypeId;
  int get page;
  @JsonKey(ignore: true)
  _$$GetServicesImplCopyWith<_$GetServicesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetServiceDetailsImplCopyWith<$Res> {
  factory _$$GetServiceDetailsImplCopyWith(_$GetServiceDetailsImpl value,
          $Res Function(_$GetServiceDetailsImpl) then) =
      __$$GetServiceDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int serviceId, int leadId});
}

/// @nodoc
class __$$GetServiceDetailsImplCopyWithImpl<$Res>
    extends _$ServiceEventCopyWithImpl<$Res, _$GetServiceDetailsImpl>
    implements _$$GetServiceDetailsImplCopyWith<$Res> {
  __$$GetServiceDetailsImplCopyWithImpl(_$GetServiceDetailsImpl _value,
      $Res Function(_$GetServiceDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = null,
    Object? leadId = null,
  }) {
    return _then(_$GetServiceDetailsImpl(
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      leadId: null == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetServiceDetailsImpl implements _GetServiceDetails {
  const _$GetServiceDetailsImpl(
      {required this.serviceId, required this.leadId});

  @override
  final int serviceId;
  @override
  final int leadId;

  @override
  String toString() {
    return 'ServiceEvent.getServiceDetails(serviceId: $serviceId, leadId: $leadId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetServiceDetailsImpl &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.leadId, leadId) || other.leadId == leadId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceId, leadId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetServiceDetailsImplCopyWith<_$GetServiceDetailsImpl> get copyWith =>
      __$$GetServiceDetailsImplCopyWithImpl<_$GetServiceDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTypeServices,
    required TResult Function(int serviceTypeId, int page) getServices,
    required TResult Function(int serviceId, int leadId) getServiceDetails,
  }) {
    return getServiceDetails(serviceId, leadId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTypeServices,
    TResult? Function(int serviceTypeId, int page)? getServices,
    TResult? Function(int serviceId, int leadId)? getServiceDetails,
  }) {
    return getServiceDetails?.call(serviceId, leadId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTypeServices,
    TResult Function(int serviceTypeId, int page)? getServices,
    TResult Function(int serviceId, int leadId)? getServiceDetails,
    required TResult orElse(),
  }) {
    if (getServiceDetails != null) {
      return getServiceDetails(serviceId, leadId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTypeServices value) getTypeServices,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetServiceDetails value) getServiceDetails,
  }) {
    return getServiceDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTypeServices value)? getTypeServices,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetServiceDetails value)? getServiceDetails,
  }) {
    return getServiceDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTypeServices value)? getTypeServices,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetServiceDetails value)? getServiceDetails,
    required TResult orElse(),
  }) {
    if (getServiceDetails != null) {
      return getServiceDetails(this);
    }
    return orElse();
  }
}

abstract class _GetServiceDetails implements ServiceEvent {
  const factory _GetServiceDetails(
      {required final int serviceId,
      required final int leadId}) = _$GetServiceDetailsImpl;

  int get serviceId;
  int get leadId;
  @JsonKey(ignore: true)
  _$$GetServiceDetailsImplCopyWith<_$GetServiceDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TypeServiceModel> types) loadedServicesTypes,
    required TResult Function(
            ResponsePaginationModel<List<ServiceModel>> services)
        loadedServices,
    required TResult Function(ResponseModel<List<ServiceDetailsModel>> services)
        loadedServiceDetails,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TypeServiceModel> types)? loadedServicesTypes,
    TResult? Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedServices,
    TResult? Function(ResponseModel<List<ServiceDetailsModel>> services)?
        loadedServiceDetails,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TypeServiceModel> types)? loadedServicesTypes,
    TResult Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedServices,
    TResult Function(ResponseModel<List<ServiceDetailsModel>> services)?
        loadedServiceDetails,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedServicesTypes value) loadedServicesTypes,
    required TResult Function(_LoadedServices value) loadedServices,
    required TResult Function(_LoadedServiceDetails value) loadedServiceDetails,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedServicesTypes value)? loadedServicesTypes,
    TResult? Function(_LoadedServices value)? loadedServices,
    TResult? Function(_LoadedServiceDetails value)? loadedServiceDetails,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedServicesTypes value)? loadedServicesTypes,
    TResult Function(_LoadedServices value)? loadedServices,
    TResult Function(_LoadedServiceDetails value)? loadedServiceDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceStateCopyWith<$Res> {
  factory $ServiceStateCopyWith(
          ServiceState value, $Res Function(ServiceState) then) =
      _$ServiceStateCopyWithImpl<$Res, ServiceState>;
}

/// @nodoc
class _$ServiceStateCopyWithImpl<$Res, $Val extends ServiceState>
    implements $ServiceStateCopyWith<$Res> {
  _$ServiceStateCopyWithImpl(this._value, this._then);

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
    extends _$ServiceStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ServiceState.loading()';
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
    required TResult Function(List<TypeServiceModel> types) loadedServicesTypes,
    required TResult Function(
            ResponsePaginationModel<List<ServiceModel>> services)
        loadedServices,
    required TResult Function(ResponseModel<List<ServiceDetailsModel>> services)
        loadedServiceDetails,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TypeServiceModel> types)? loadedServicesTypes,
    TResult? Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedServices,
    TResult? Function(ResponseModel<List<ServiceDetailsModel>> services)?
        loadedServiceDetails,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TypeServiceModel> types)? loadedServicesTypes,
    TResult Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedServices,
    TResult Function(ResponseModel<List<ServiceDetailsModel>> services)?
        loadedServiceDetails,
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
    required TResult Function(_LoadedServicesTypes value) loadedServicesTypes,
    required TResult Function(_LoadedServices value) loadedServices,
    required TResult Function(_LoadedServiceDetails value) loadedServiceDetails,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedServicesTypes value)? loadedServicesTypes,
    TResult? Function(_LoadedServices value)? loadedServices,
    TResult? Function(_LoadedServiceDetails value)? loadedServiceDetails,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedServicesTypes value)? loadedServicesTypes,
    TResult Function(_LoadedServices value)? loadedServices,
    TResult Function(_LoadedServiceDetails value)? loadedServiceDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ServiceState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedServicesTypesImplCopyWith<$Res> {
  factory _$$LoadedServicesTypesImplCopyWith(_$LoadedServicesTypesImpl value,
          $Res Function(_$LoadedServicesTypesImpl) then) =
      __$$LoadedServicesTypesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TypeServiceModel> types});
}

/// @nodoc
class __$$LoadedServicesTypesImplCopyWithImpl<$Res>
    extends _$ServiceStateCopyWithImpl<$Res, _$LoadedServicesTypesImpl>
    implements _$$LoadedServicesTypesImplCopyWith<$Res> {
  __$$LoadedServicesTypesImplCopyWithImpl(_$LoadedServicesTypesImpl _value,
      $Res Function(_$LoadedServicesTypesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
  }) {
    return _then(_$LoadedServicesTypesImpl(
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeServiceModel>,
    ));
  }
}

/// @nodoc

class _$LoadedServicesTypesImpl implements _LoadedServicesTypes {
  const _$LoadedServicesTypesImpl({required final List<TypeServiceModel> types})
      : _types = types;

  final List<TypeServiceModel> _types;
  @override
  List<TypeServiceModel> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'ServiceState.loadedServicesTypes(types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedServicesTypesImpl &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedServicesTypesImplCopyWith<_$LoadedServicesTypesImpl> get copyWith =>
      __$$LoadedServicesTypesImplCopyWithImpl<_$LoadedServicesTypesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TypeServiceModel> types) loadedServicesTypes,
    required TResult Function(
            ResponsePaginationModel<List<ServiceModel>> services)
        loadedServices,
    required TResult Function(ResponseModel<List<ServiceDetailsModel>> services)
        loadedServiceDetails,
    required TResult Function(String message) error,
  }) {
    return loadedServicesTypes(types);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TypeServiceModel> types)? loadedServicesTypes,
    TResult? Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedServices,
    TResult? Function(ResponseModel<List<ServiceDetailsModel>> services)?
        loadedServiceDetails,
    TResult? Function(String message)? error,
  }) {
    return loadedServicesTypes?.call(types);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TypeServiceModel> types)? loadedServicesTypes,
    TResult Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedServices,
    TResult Function(ResponseModel<List<ServiceDetailsModel>> services)?
        loadedServiceDetails,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedServicesTypes != null) {
      return loadedServicesTypes(types);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedServicesTypes value) loadedServicesTypes,
    required TResult Function(_LoadedServices value) loadedServices,
    required TResult Function(_LoadedServiceDetails value) loadedServiceDetails,
    required TResult Function(_Error value) error,
  }) {
    return loadedServicesTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedServicesTypes value)? loadedServicesTypes,
    TResult? Function(_LoadedServices value)? loadedServices,
    TResult? Function(_LoadedServiceDetails value)? loadedServiceDetails,
    TResult? Function(_Error value)? error,
  }) {
    return loadedServicesTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedServicesTypes value)? loadedServicesTypes,
    TResult Function(_LoadedServices value)? loadedServices,
    TResult Function(_LoadedServiceDetails value)? loadedServiceDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedServicesTypes != null) {
      return loadedServicesTypes(this);
    }
    return orElse();
  }
}

abstract class _LoadedServicesTypes implements ServiceState {
  const factory _LoadedServicesTypes(
          {required final List<TypeServiceModel> types}) =
      _$LoadedServicesTypesImpl;

  List<TypeServiceModel> get types;
  @JsonKey(ignore: true)
  _$$LoadedServicesTypesImplCopyWith<_$LoadedServicesTypesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedServicesImplCopyWith<$Res> {
  factory _$$LoadedServicesImplCopyWith(_$LoadedServicesImpl value,
          $Res Function(_$LoadedServicesImpl) then) =
      __$$LoadedServicesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponsePaginationModel<List<ServiceModel>> services});

  $ResponsePaginationModelCopyWith<List<ServiceModel>, $Res> get services;
}

/// @nodoc
class __$$LoadedServicesImplCopyWithImpl<$Res>
    extends _$ServiceStateCopyWithImpl<$Res, _$LoadedServicesImpl>
    implements _$$LoadedServicesImplCopyWith<$Res> {
  __$$LoadedServicesImplCopyWithImpl(
      _$LoadedServicesImpl _value, $Res Function(_$LoadedServicesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
  }) {
    return _then(_$LoadedServicesImpl(
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

class _$LoadedServicesImpl implements _LoadedServices {
  const _$LoadedServicesImpl({required this.services});

  @override
  final ResponsePaginationModel<List<ServiceModel>> services;

  @override
  String toString() {
    return 'ServiceState.loadedServices(services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedServicesImpl &&
            (identical(other.services, services) ||
                other.services == services));
  }

  @override
  int get hashCode => Object.hash(runtimeType, services);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedServicesImplCopyWith<_$LoadedServicesImpl> get copyWith =>
      __$$LoadedServicesImplCopyWithImpl<_$LoadedServicesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TypeServiceModel> types) loadedServicesTypes,
    required TResult Function(
            ResponsePaginationModel<List<ServiceModel>> services)
        loadedServices,
    required TResult Function(ResponseModel<List<ServiceDetailsModel>> services)
        loadedServiceDetails,
    required TResult Function(String message) error,
  }) {
    return loadedServices(services);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TypeServiceModel> types)? loadedServicesTypes,
    TResult? Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedServices,
    TResult? Function(ResponseModel<List<ServiceDetailsModel>> services)?
        loadedServiceDetails,
    TResult? Function(String message)? error,
  }) {
    return loadedServices?.call(services);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TypeServiceModel> types)? loadedServicesTypes,
    TResult Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedServices,
    TResult Function(ResponseModel<List<ServiceDetailsModel>> services)?
        loadedServiceDetails,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedServices != null) {
      return loadedServices(services);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedServicesTypes value) loadedServicesTypes,
    required TResult Function(_LoadedServices value) loadedServices,
    required TResult Function(_LoadedServiceDetails value) loadedServiceDetails,
    required TResult Function(_Error value) error,
  }) {
    return loadedServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedServicesTypes value)? loadedServicesTypes,
    TResult? Function(_LoadedServices value)? loadedServices,
    TResult? Function(_LoadedServiceDetails value)? loadedServiceDetails,
    TResult? Function(_Error value)? error,
  }) {
    return loadedServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedServicesTypes value)? loadedServicesTypes,
    TResult Function(_LoadedServices value)? loadedServices,
    TResult Function(_LoadedServiceDetails value)? loadedServiceDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedServices != null) {
      return loadedServices(this);
    }
    return orElse();
  }
}

abstract class _LoadedServices implements ServiceState {
  const factory _LoadedServices(
      {required final ResponsePaginationModel<List<ServiceModel>>
          services}) = _$LoadedServicesImpl;

  ResponsePaginationModel<List<ServiceModel>> get services;
  @JsonKey(ignore: true)
  _$$LoadedServicesImplCopyWith<_$LoadedServicesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedServiceDetailsImplCopyWith<$Res> {
  factory _$$LoadedServiceDetailsImplCopyWith(_$LoadedServiceDetailsImpl value,
          $Res Function(_$LoadedServiceDetailsImpl) then) =
      __$$LoadedServiceDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<List<ServiceDetailsModel>> services});

  $ResponseModelCopyWith<List<ServiceDetailsModel>, $Res> get services;
}

/// @nodoc
class __$$LoadedServiceDetailsImplCopyWithImpl<$Res>
    extends _$ServiceStateCopyWithImpl<$Res, _$LoadedServiceDetailsImpl>
    implements _$$LoadedServiceDetailsImplCopyWith<$Res> {
  __$$LoadedServiceDetailsImplCopyWithImpl(_$LoadedServiceDetailsImpl _value,
      $Res Function(_$LoadedServiceDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
  }) {
    return _then(_$LoadedServiceDetailsImpl(
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as ResponseModel<List<ServiceDetailsModel>>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<List<ServiceDetailsModel>, $Res> get services {
    return $ResponseModelCopyWith<List<ServiceDetailsModel>, $Res>(
        _value.services, (value) {
      return _then(_value.copyWith(services: value));
    });
  }
}

/// @nodoc

class _$LoadedServiceDetailsImpl implements _LoadedServiceDetails {
  const _$LoadedServiceDetailsImpl({required this.services});

  @override
  final ResponseModel<List<ServiceDetailsModel>> services;

  @override
  String toString() {
    return 'ServiceState.loadedServiceDetails(services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedServiceDetailsImpl &&
            (identical(other.services, services) ||
                other.services == services));
  }

  @override
  int get hashCode => Object.hash(runtimeType, services);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedServiceDetailsImplCopyWith<_$LoadedServiceDetailsImpl>
      get copyWith =>
          __$$LoadedServiceDetailsImplCopyWithImpl<_$LoadedServiceDetailsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<TypeServiceModel> types) loadedServicesTypes,
    required TResult Function(
            ResponsePaginationModel<List<ServiceModel>> services)
        loadedServices,
    required TResult Function(ResponseModel<List<ServiceDetailsModel>> services)
        loadedServiceDetails,
    required TResult Function(String message) error,
  }) {
    return loadedServiceDetails(services);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TypeServiceModel> types)? loadedServicesTypes,
    TResult? Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedServices,
    TResult? Function(ResponseModel<List<ServiceDetailsModel>> services)?
        loadedServiceDetails,
    TResult? Function(String message)? error,
  }) {
    return loadedServiceDetails?.call(services);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TypeServiceModel> types)? loadedServicesTypes,
    TResult Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedServices,
    TResult Function(ResponseModel<List<ServiceDetailsModel>> services)?
        loadedServiceDetails,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedServiceDetails != null) {
      return loadedServiceDetails(services);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedServicesTypes value) loadedServicesTypes,
    required TResult Function(_LoadedServices value) loadedServices,
    required TResult Function(_LoadedServiceDetails value) loadedServiceDetails,
    required TResult Function(_Error value) error,
  }) {
    return loadedServiceDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedServicesTypes value)? loadedServicesTypes,
    TResult? Function(_LoadedServices value)? loadedServices,
    TResult? Function(_LoadedServiceDetails value)? loadedServiceDetails,
    TResult? Function(_Error value)? error,
  }) {
    return loadedServiceDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedServicesTypes value)? loadedServicesTypes,
    TResult Function(_LoadedServices value)? loadedServices,
    TResult Function(_LoadedServiceDetails value)? loadedServiceDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedServiceDetails != null) {
      return loadedServiceDetails(this);
    }
    return orElse();
  }
}

abstract class _LoadedServiceDetails implements ServiceState {
  const factory _LoadedServiceDetails(
          {required final ResponseModel<List<ServiceDetailsModel>> services}) =
      _$LoadedServiceDetailsImpl;

  ResponseModel<List<ServiceDetailsModel>> get services;
  @JsonKey(ignore: true)
  _$$LoadedServiceDetailsImplCopyWith<_$LoadedServiceDetailsImpl>
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
    extends _$ServiceStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'ServiceState.error(message: $message)';
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
    required TResult Function(List<TypeServiceModel> types) loadedServicesTypes,
    required TResult Function(
            ResponsePaginationModel<List<ServiceModel>> services)
        loadedServices,
    required TResult Function(ResponseModel<List<ServiceDetailsModel>> services)
        loadedServiceDetails,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<TypeServiceModel> types)? loadedServicesTypes,
    TResult? Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedServices,
    TResult? Function(ResponseModel<List<ServiceDetailsModel>> services)?
        loadedServiceDetails,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<TypeServiceModel> types)? loadedServicesTypes,
    TResult Function(ResponsePaginationModel<List<ServiceModel>> services)?
        loadedServices,
    TResult Function(ResponseModel<List<ServiceDetailsModel>> services)?
        loadedServiceDetails,
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
    required TResult Function(_LoadedServicesTypes value) loadedServicesTypes,
    required TResult Function(_LoadedServices value) loadedServices,
    required TResult Function(_LoadedServiceDetails value) loadedServiceDetails,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedServicesTypes value)? loadedServicesTypes,
    TResult? Function(_LoadedServices value)? loadedServices,
    TResult? Function(_LoadedServiceDetails value)? loadedServiceDetails,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedServicesTypes value)? loadedServicesTypes,
    TResult Function(_LoadedServices value)? loadedServices,
    TResult Function(_LoadedServiceDetails value)? loadedServiceDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ServiceState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
