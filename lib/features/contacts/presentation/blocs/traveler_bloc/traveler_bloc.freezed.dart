// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'traveler_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelerEvent {
  InputCreateTravelerModel get input => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputCreateTravelerModel input) createTraveler,
    required TResult Function(InputCreateTravelerModel input) updateTraveler,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputCreateTravelerModel input)? createTraveler,
    TResult? Function(InputCreateTravelerModel input)? updateTraveler,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputCreateTravelerModel input)? createTraveler,
    TResult Function(InputCreateTravelerModel input)? updateTraveler,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTraveler value) createTraveler,
    required TResult Function(_UpdateTraveler value) updateTraveler,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTraveler value)? createTraveler,
    TResult? Function(_UpdateTraveler value)? updateTraveler,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTraveler value)? createTraveler,
    TResult Function(_UpdateTraveler value)? updateTraveler,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelerEventCopyWith<TravelerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelerEventCopyWith<$Res> {
  factory $TravelerEventCopyWith(
          TravelerEvent value, $Res Function(TravelerEvent) then) =
      _$TravelerEventCopyWithImpl<$Res, TravelerEvent>;
  @useResult
  $Res call({InputCreateTravelerModel input});

  $InputCreateTravelerModelCopyWith<$Res> get input;
}

/// @nodoc
class _$TravelerEventCopyWithImpl<$Res, $Val extends TravelerEvent>
    implements $TravelerEventCopyWith<$Res> {
  _$TravelerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as InputCreateTravelerModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InputCreateTravelerModelCopyWith<$Res> get input {
    return $InputCreateTravelerModelCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateTravelerImplCopyWith<$Res>
    implements $TravelerEventCopyWith<$Res> {
  factory _$$CreateTravelerImplCopyWith(_$CreateTravelerImpl value,
          $Res Function(_$CreateTravelerImpl) then) =
      __$$CreateTravelerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InputCreateTravelerModel input});

  @override
  $InputCreateTravelerModelCopyWith<$Res> get input;
}

/// @nodoc
class __$$CreateTravelerImplCopyWithImpl<$Res>
    extends _$TravelerEventCopyWithImpl<$Res, _$CreateTravelerImpl>
    implements _$$CreateTravelerImplCopyWith<$Res> {
  __$$CreateTravelerImplCopyWithImpl(
      _$CreateTravelerImpl _value, $Res Function(_$CreateTravelerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$CreateTravelerImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as InputCreateTravelerModel,
    ));
  }
}

/// @nodoc

class _$CreateTravelerImpl implements _CreateTraveler {
  const _$CreateTravelerImpl({required this.input});

  @override
  final InputCreateTravelerModel input;

  @override
  String toString() {
    return 'TravelerEvent.createTraveler(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTravelerImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTravelerImplCopyWith<_$CreateTravelerImpl> get copyWith =>
      __$$CreateTravelerImplCopyWithImpl<_$CreateTravelerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputCreateTravelerModel input) createTraveler,
    required TResult Function(InputCreateTravelerModel input) updateTraveler,
  }) {
    return createTraveler(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputCreateTravelerModel input)? createTraveler,
    TResult? Function(InputCreateTravelerModel input)? updateTraveler,
  }) {
    return createTraveler?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputCreateTravelerModel input)? createTraveler,
    TResult Function(InputCreateTravelerModel input)? updateTraveler,
    required TResult orElse(),
  }) {
    if (createTraveler != null) {
      return createTraveler(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTraveler value) createTraveler,
    required TResult Function(_UpdateTraveler value) updateTraveler,
  }) {
    return createTraveler(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTraveler value)? createTraveler,
    TResult? Function(_UpdateTraveler value)? updateTraveler,
  }) {
    return createTraveler?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTraveler value)? createTraveler,
    TResult Function(_UpdateTraveler value)? updateTraveler,
    required TResult orElse(),
  }) {
    if (createTraveler != null) {
      return createTraveler(this);
    }
    return orElse();
  }
}

abstract class _CreateTraveler implements TravelerEvent {
  const factory _CreateTraveler(
      {required final InputCreateTravelerModel input}) = _$CreateTravelerImpl;

  @override
  InputCreateTravelerModel get input;
  @override
  @JsonKey(ignore: true)
  _$$CreateTravelerImplCopyWith<_$CreateTravelerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTravelerImplCopyWith<$Res>
    implements $TravelerEventCopyWith<$Res> {
  factory _$$UpdateTravelerImplCopyWith(_$UpdateTravelerImpl value,
          $Res Function(_$UpdateTravelerImpl) then) =
      __$$UpdateTravelerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InputCreateTravelerModel input});

  @override
  $InputCreateTravelerModelCopyWith<$Res> get input;
}

/// @nodoc
class __$$UpdateTravelerImplCopyWithImpl<$Res>
    extends _$TravelerEventCopyWithImpl<$Res, _$UpdateTravelerImpl>
    implements _$$UpdateTravelerImplCopyWith<$Res> {
  __$$UpdateTravelerImplCopyWithImpl(
      _$UpdateTravelerImpl _value, $Res Function(_$UpdateTravelerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$UpdateTravelerImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as InputCreateTravelerModel,
    ));
  }
}

/// @nodoc

class _$UpdateTravelerImpl implements _UpdateTraveler {
  const _$UpdateTravelerImpl({required this.input});

  @override
  final InputCreateTravelerModel input;

  @override
  String toString() {
    return 'TravelerEvent.updateTraveler(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTravelerImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTravelerImplCopyWith<_$UpdateTravelerImpl> get copyWith =>
      __$$UpdateTravelerImplCopyWithImpl<_$UpdateTravelerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InputCreateTravelerModel input) createTraveler,
    required TResult Function(InputCreateTravelerModel input) updateTraveler,
  }) {
    return updateTraveler(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InputCreateTravelerModel input)? createTraveler,
    TResult? Function(InputCreateTravelerModel input)? updateTraveler,
  }) {
    return updateTraveler?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InputCreateTravelerModel input)? createTraveler,
    TResult Function(InputCreateTravelerModel input)? updateTraveler,
    required TResult orElse(),
  }) {
    if (updateTraveler != null) {
      return updateTraveler(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTraveler value) createTraveler,
    required TResult Function(_UpdateTraveler value) updateTraveler,
  }) {
    return updateTraveler(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTraveler value)? createTraveler,
    TResult? Function(_UpdateTraveler value)? updateTraveler,
  }) {
    return updateTraveler?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTraveler value)? createTraveler,
    TResult Function(_UpdateTraveler value)? updateTraveler,
    required TResult orElse(),
  }) {
    if (updateTraveler != null) {
      return updateTraveler(this);
    }
    return orElse();
  }
}

abstract class _UpdateTraveler implements TravelerEvent {
  const factory _UpdateTraveler(
      {required final InputCreateTravelerModel input}) = _$UpdateTravelerImpl;

  @override
  InputCreateTravelerModel get input;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTravelerImplCopyWith<_$UpdateTravelerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TravelerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResponseModel<ContactModel> contact) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<ContactModel> contact)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<ContactModel> contact)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelerStateCopyWith<$Res> {
  factory $TravelerStateCopyWith(
          TravelerState value, $Res Function(TravelerState) then) =
      _$TravelerStateCopyWithImpl<$Res, TravelerState>;
}

/// @nodoc
class _$TravelerStateCopyWithImpl<$Res, $Val extends TravelerState>
    implements $TravelerStateCopyWith<$Res> {
  _$TravelerStateCopyWithImpl(this._value, this._then);

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
    extends _$TravelerStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TravelerState.initial()';
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
    required TResult Function(ResponseModel<ContactModel> contact) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<ContactModel> contact)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<ContactModel> contact)? loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TravelerState {
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
    extends _$TravelerStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'TravelerState.loading()';
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
    required TResult Function(ResponseModel<ContactModel> contact) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<ContactModel> contact)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<ContactModel> contact)? loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TravelerState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<ContactModel> contact});

  $ResponseModelCopyWith<ContactModel, $Res> get contact;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$TravelerStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$LoadedImpl(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ResponseModel<ContactModel>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<ContactModel, $Res> get contact {
    return $ResponseModelCopyWith<ContactModel, $Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.contact});

  @override
  final ResponseModel<ContactModel> contact;

  @override
  String toString() {
    return 'TravelerState.loaded(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

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
    required TResult Function(ResponseModel<ContactModel> contact) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<ContactModel> contact)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<ContactModel> contact)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TravelerState {
  const factory _Loaded({required final ResponseModel<ContactModel> contact}) =
      _$LoadedImpl;

  ResponseModel<ContactModel> get contact;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
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
    extends _$TravelerStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'TravelerState.error(message: $message)';
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
    required TResult Function(ResponseModel<ContactModel> contact) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponseModel<ContactModel> contact)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponseModel<ContactModel> contact)? loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TravelerState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
