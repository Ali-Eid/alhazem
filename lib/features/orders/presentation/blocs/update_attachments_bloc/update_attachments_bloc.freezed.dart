// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_attachments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateAttachmentsEvent {
  Object get input => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputUpdateAttachmentsModel input)
        updateAttachments,
    required TResult Function(InputConfirmWaitingModel input) confirmWaiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputUpdateAttachmentsModel input)? updateAttachments,
    TResult? Function(InputConfirmWaitingModel input)? confirmWaiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputUpdateAttachmentsModel input)? updateAttachments,
    TResult Function(InputConfirmWaitingModel input)? confirmWaiting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAttachments value) updateAttachments,
    required TResult Function(_ConfirmWaitingOrder value) confirmWaiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAttachments value)? updateAttachments,
    TResult? Function(_ConfirmWaitingOrder value)? confirmWaiting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAttachments value)? updateAttachments,
    TResult Function(_ConfirmWaitingOrder value)? confirmWaiting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAttachmentsEventCopyWith<$Res> {
  factory $UpdateAttachmentsEventCopyWith(UpdateAttachmentsEvent value,
          $Res Function(UpdateAttachmentsEvent) then) =
      _$UpdateAttachmentsEventCopyWithImpl<$Res, UpdateAttachmentsEvent>;
}

/// @nodoc
class _$UpdateAttachmentsEventCopyWithImpl<$Res,
        $Val extends UpdateAttachmentsEvent>
    implements $UpdateAttachmentsEventCopyWith<$Res> {
  _$UpdateAttachmentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateAttachmentsImplCopyWith<$Res> {
  factory _$$UpdateAttachmentsImplCopyWith(_$UpdateAttachmentsImpl value,
          $Res Function(_$UpdateAttachmentsImpl) then) =
      __$$UpdateAttachmentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputUpdateAttachmentsModel input});

  $InputUpdateAttachmentsModelCopyWith<$Res> get input;
}

/// @nodoc
class __$$UpdateAttachmentsImplCopyWithImpl<$Res>
    extends _$UpdateAttachmentsEventCopyWithImpl<$Res, _$UpdateAttachmentsImpl>
    implements _$$UpdateAttachmentsImplCopyWith<$Res> {
  __$$UpdateAttachmentsImplCopyWithImpl(_$UpdateAttachmentsImpl _value,
      $Res Function(_$UpdateAttachmentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$UpdateAttachmentsImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as InputUpdateAttachmentsModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InputUpdateAttachmentsModelCopyWith<$Res> get input {
    return $InputUpdateAttachmentsModelCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value));
    });
  }
}

/// @nodoc

class _$UpdateAttachmentsImpl implements _UpdateAttachments {
  const _$UpdateAttachmentsImpl({required this.input});

  @override
  final InputUpdateAttachmentsModel input;

  @override
  String toString() {
    return 'UpdateAttachmentsEvent.updateAttachments(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAttachmentsImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAttachmentsImplCopyWith<_$UpdateAttachmentsImpl> get copyWith =>
      __$$UpdateAttachmentsImplCopyWithImpl<_$UpdateAttachmentsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputUpdateAttachmentsModel input)
        updateAttachments,
    required TResult Function(InputConfirmWaitingModel input) confirmWaiting,
  }) {
    return updateAttachments(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputUpdateAttachmentsModel input)? updateAttachments,
    TResult? Function(InputConfirmWaitingModel input)? confirmWaiting,
  }) {
    return updateAttachments?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputUpdateAttachmentsModel input)? updateAttachments,
    TResult Function(InputConfirmWaitingModel input)? confirmWaiting,
    required TResult orElse(),
  }) {
    if (updateAttachments != null) {
      return updateAttachments(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAttachments value) updateAttachments,
    required TResult Function(_ConfirmWaitingOrder value) confirmWaiting,
  }) {
    return updateAttachments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAttachments value)? updateAttachments,
    TResult? Function(_ConfirmWaitingOrder value)? confirmWaiting,
  }) {
    return updateAttachments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAttachments value)? updateAttachments,
    TResult Function(_ConfirmWaitingOrder value)? confirmWaiting,
    required TResult orElse(),
  }) {
    if (updateAttachments != null) {
      return updateAttachments(this);
    }
    return orElse();
  }
}

abstract class _UpdateAttachments implements UpdateAttachmentsEvent {
  const factory _UpdateAttachments(
          {required final InputUpdateAttachmentsModel input}) =
      _$UpdateAttachmentsImpl;

  @override
  InputUpdateAttachmentsModel get input;
  @JsonKey(ignore: true)
  _$$UpdateAttachmentsImplCopyWith<_$UpdateAttachmentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmWaitingOrderImplCopyWith<$Res> {
  factory _$$ConfirmWaitingOrderImplCopyWith(_$ConfirmWaitingOrderImpl value,
          $Res Function(_$ConfirmWaitingOrderImpl) then) =
      __$$ConfirmWaitingOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InputConfirmWaitingModel input});

  $InputConfirmWaitingModelCopyWith<$Res> get input;
}

/// @nodoc
class __$$ConfirmWaitingOrderImplCopyWithImpl<$Res>
    extends _$UpdateAttachmentsEventCopyWithImpl<$Res,
        _$ConfirmWaitingOrderImpl>
    implements _$$ConfirmWaitingOrderImplCopyWith<$Res> {
  __$$ConfirmWaitingOrderImplCopyWithImpl(_$ConfirmWaitingOrderImpl _value,
      $Res Function(_$ConfirmWaitingOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$ConfirmWaitingOrderImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as InputConfirmWaitingModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InputConfirmWaitingModelCopyWith<$Res> get input {
    return $InputConfirmWaitingModelCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value));
    });
  }
}

/// @nodoc

class _$ConfirmWaitingOrderImpl implements _ConfirmWaitingOrder {
  const _$ConfirmWaitingOrderImpl({required this.input});

  @override
  final InputConfirmWaitingModel input;

  @override
  String toString() {
    return 'UpdateAttachmentsEvent.confirmWaiting(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmWaitingOrderImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmWaitingOrderImplCopyWith<_$ConfirmWaitingOrderImpl> get copyWith =>
      __$$ConfirmWaitingOrderImplCopyWithImpl<_$ConfirmWaitingOrderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputUpdateAttachmentsModel input)
        updateAttachments,
    required TResult Function(InputConfirmWaitingModel input) confirmWaiting,
  }) {
    return confirmWaiting(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputUpdateAttachmentsModel input)? updateAttachments,
    TResult? Function(InputConfirmWaitingModel input)? confirmWaiting,
  }) {
    return confirmWaiting?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputUpdateAttachmentsModel input)? updateAttachments,
    TResult Function(InputConfirmWaitingModel input)? confirmWaiting,
    required TResult orElse(),
  }) {
    if (confirmWaiting != null) {
      return confirmWaiting(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAttachments value) updateAttachments,
    required TResult Function(_ConfirmWaitingOrder value) confirmWaiting,
  }) {
    return confirmWaiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAttachments value)? updateAttachments,
    TResult? Function(_ConfirmWaitingOrder value)? confirmWaiting,
  }) {
    return confirmWaiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAttachments value)? updateAttachments,
    TResult Function(_ConfirmWaitingOrder value)? confirmWaiting,
    required TResult orElse(),
  }) {
    if (confirmWaiting != null) {
      return confirmWaiting(this);
    }
    return orElse();
  }
}

abstract class _ConfirmWaitingOrder implements UpdateAttachmentsEvent {
  const factory _ConfirmWaitingOrder(
          {required final InputConfirmWaitingModel input}) =
      _$ConfirmWaitingOrderImpl;

  @override
  InputConfirmWaitingModel get input;
  @JsonKey(ignore: true)
  _$$ConfirmWaitingOrderImplCopyWith<_$ConfirmWaitingOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateAttachmentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseModel<dynamic> success) success,
    required TResult Function(ResponseModel<CreateOrderModel> confirmed)
        confirmed,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<dynamic> success)? success,
    TResult? Function(ResponseModel<CreateOrderModel> confirmed)? confirmed,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<dynamic> success)? success,
    TResult Function(ResponseModel<CreateOrderModel> confirmed)? confirmed,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_ConfirmedOrder value) confirmed,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_ConfirmedOrder value)? confirmed,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ConfirmedOrder value)? confirmed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAttachmentsStateCopyWith<$Res> {
  factory $UpdateAttachmentsStateCopyWith(UpdateAttachmentsState value,
          $Res Function(UpdateAttachmentsState) then) =
      _$UpdateAttachmentsStateCopyWithImpl<$Res, UpdateAttachmentsState>;
}

/// @nodoc
class _$UpdateAttachmentsStateCopyWithImpl<$Res,
        $Val extends UpdateAttachmentsState>
    implements $UpdateAttachmentsStateCopyWith<$Res> {
  _$UpdateAttachmentsStateCopyWithImpl(this._value, this._then);

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
    extends _$UpdateAttachmentsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'UpdateAttachmentsState.initial()';
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
    required TResult Function(ResponseModel<dynamic> success) success,
    required TResult Function(ResponseModel<CreateOrderModel> confirmed)
        confirmed,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<dynamic> success)? success,
    TResult? Function(ResponseModel<CreateOrderModel> confirmed)? confirmed,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<dynamic> success)? success,
    TResult Function(ResponseModel<CreateOrderModel> confirmed)? confirmed,
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
    required TResult Function(_Success value) success,
    required TResult Function(_ConfirmedOrder value) confirmed,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_ConfirmedOrder value)? confirmed,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ConfirmedOrder value)? confirmed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UpdateAttachmentsState {
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
    extends _$UpdateAttachmentsStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'UpdateAttachmentsState.loading()';
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
    required TResult Function(ResponseModel<dynamic> success) success,
    required TResult Function(ResponseModel<CreateOrderModel> confirmed)
        confirmed,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<dynamic> success)? success,
    TResult? Function(ResponseModel<CreateOrderModel> confirmed)? confirmed,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<dynamic> success)? success,
    TResult Function(ResponseModel<CreateOrderModel> confirmed)? confirmed,
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
    required TResult Function(_Success value) success,
    required TResult Function(_ConfirmedOrder value) confirmed,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_ConfirmedOrder value)? confirmed,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ConfirmedOrder value)? confirmed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UpdateAttachmentsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<dynamic> success});

  $ResponseModelCopyWith<dynamic, $Res> get success;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$UpdateAttachmentsStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$SuccessImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as ResponseModel<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<dynamic, $Res> get success {
    return $ResponseModelCopyWith<dynamic, $Res>(_value.success, (value) {
      return _then(_value.copyWith(success: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required this.success});

  @override
  final ResponseModel<dynamic> success;

  @override
  String toString() {
    return 'UpdateAttachmentsState.success(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseModel<dynamic> success) success,
    required TResult Function(ResponseModel<CreateOrderModel> confirmed)
        confirmed,
    required TResult Function(String message) error,
  }) {
    return success(this.success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<dynamic> success)? success,
    TResult? Function(ResponseModel<CreateOrderModel> confirmed)? confirmed,
    TResult? Function(String message)? error,
  }) {
    return success?.call(this.success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<dynamic> success)? success,
    TResult Function(ResponseModel<CreateOrderModel> confirmed)? confirmed,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this.success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_ConfirmedOrder value) confirmed,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_ConfirmedOrder value)? confirmed,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ConfirmedOrder value)? confirmed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements UpdateAttachmentsState {
  const factory _Success({required final ResponseModel<dynamic> success}) =
      _$SuccessImpl;

  ResponseModel<dynamic> get success;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmedOrderImplCopyWith<$Res> {
  factory _$$ConfirmedOrderImplCopyWith(_$ConfirmedOrderImpl value,
          $Res Function(_$ConfirmedOrderImpl) then) =
      __$$ConfirmedOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<CreateOrderModel> confirmed});

  $ResponseModelCopyWith<CreateOrderModel, $Res> get confirmed;
}

/// @nodoc
class __$$ConfirmedOrderImplCopyWithImpl<$Res>
    extends _$UpdateAttachmentsStateCopyWithImpl<$Res, _$ConfirmedOrderImpl>
    implements _$$ConfirmedOrderImplCopyWith<$Res> {
  __$$ConfirmedOrderImplCopyWithImpl(
      _$ConfirmedOrderImpl _value, $Res Function(_$ConfirmedOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmed = null,
  }) {
    return _then(_$ConfirmedOrderImpl(
      confirmed: null == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as ResponseModel<CreateOrderModel>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<CreateOrderModel, $Res> get confirmed {
    return $ResponseModelCopyWith<CreateOrderModel, $Res>(_value.confirmed,
        (value) {
      return _then(_value.copyWith(confirmed: value));
    });
  }
}

/// @nodoc

class _$ConfirmedOrderImpl implements _ConfirmedOrder {
  const _$ConfirmedOrderImpl({required this.confirmed});

  @override
  final ResponseModel<CreateOrderModel> confirmed;

  @override
  String toString() {
    return 'UpdateAttachmentsState.confirmed(confirmed: $confirmed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmedOrderImpl &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmedOrderImplCopyWith<_$ConfirmedOrderImpl> get copyWith =>
      __$$ConfirmedOrderImplCopyWithImpl<_$ConfirmedOrderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseModel<dynamic> success) success,
    required TResult Function(ResponseModel<CreateOrderModel> confirmed)
        confirmed,
    required TResult Function(String message) error,
  }) {
    return confirmed(this.confirmed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<dynamic> success)? success,
    TResult? Function(ResponseModel<CreateOrderModel> confirmed)? confirmed,
    TResult? Function(String message)? error,
  }) {
    return confirmed?.call(this.confirmed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<dynamic> success)? success,
    TResult Function(ResponseModel<CreateOrderModel> confirmed)? confirmed,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this.confirmed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_ConfirmedOrder value) confirmed,
    required TResult Function(_Error value) error,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_ConfirmedOrder value)? confirmed,
    TResult? Function(_Error value)? error,
  }) {
    return confirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ConfirmedOrder value)? confirmed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }
}

abstract class _ConfirmedOrder implements UpdateAttachmentsState {
  const factory _ConfirmedOrder(
          {required final ResponseModel<CreateOrderModel> confirmed}) =
      _$ConfirmedOrderImpl;

  ResponseModel<CreateOrderModel> get confirmed;
  @JsonKey(ignore: true)
  _$$ConfirmedOrderImplCopyWith<_$ConfirmedOrderImpl> get copyWith =>
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
    extends _$UpdateAttachmentsStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'UpdateAttachmentsState.error(message: $message)';
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
    required TResult Function(ResponseModel<dynamic> success) success,
    required TResult Function(ResponseModel<CreateOrderModel> confirmed)
        confirmed,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<dynamic> success)? success,
    TResult? Function(ResponseModel<CreateOrderModel> confirmed)? confirmed,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<dynamic> success)? success,
    TResult Function(ResponseModel<CreateOrderModel> confirmed)? confirmed,
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
    required TResult Function(_Success value) success,
    required TResult Function(_ConfirmedOrder value) confirmed,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_ConfirmedOrder value)? confirmed,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ConfirmedOrder value)? confirmed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UpdateAttachmentsState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
