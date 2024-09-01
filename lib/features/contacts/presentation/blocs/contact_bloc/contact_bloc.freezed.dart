// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EntityType type, int page) getContact,
    required TResult Function(int contactId) getContactById,
    required TResult Function(ContactModel model) editContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EntityType type, int page)? getContact,
    TResult? Function(int contactId)? getContactById,
    TResult? Function(ContactModel model)? editContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EntityType type, int page)? getContact,
    TResult Function(int contactId)? getContactById,
    TResult Function(ContactModel model)? editContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetContact value) getContact,
    required TResult Function(_GetContactById value) getContactById,
    required TResult Function(_EditContact value) editContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetContact value)? getContact,
    TResult? Function(_GetContactById value)? getContactById,
    TResult? Function(_EditContact value)? editContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetContact value)? getContact,
    TResult Function(_GetContactById value)? getContactById,
    TResult Function(_EditContact value)? editContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactEventCopyWith<$Res> {
  factory $ContactEventCopyWith(
          ContactEvent value, $Res Function(ContactEvent) then) =
      _$ContactEventCopyWithImpl<$Res, ContactEvent>;
}

/// @nodoc
class _$ContactEventCopyWithImpl<$Res, $Val extends ContactEvent>
    implements $ContactEventCopyWith<$Res> {
  _$ContactEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetContactImplCopyWith<$Res> {
  factory _$$GetContactImplCopyWith(
          _$GetContactImpl value, $Res Function(_$GetContactImpl) then) =
      __$$GetContactImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EntityType type, int page});
}

/// @nodoc
class __$$GetContactImplCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res, _$GetContactImpl>
    implements _$$GetContactImplCopyWith<$Res> {
  __$$GetContactImplCopyWithImpl(
      _$GetContactImpl _value, $Res Function(_$GetContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? page = null,
  }) {
    return _then(_$GetContactImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EntityType,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetContactImpl implements _GetContact {
  const _$GetContactImpl({required this.type, required this.page});

  @override
  final EntityType type;
  @override
  final int page;

  @override
  String toString() {
    return 'ContactEvent.getContact(type: $type, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetContactImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetContactImplCopyWith<_$GetContactImpl> get copyWith =>
      __$$GetContactImplCopyWithImpl<_$GetContactImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EntityType type, int page) getContact,
    required TResult Function(int contactId) getContactById,
    required TResult Function(ContactModel model) editContact,
  }) {
    return getContact(type, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EntityType type, int page)? getContact,
    TResult? Function(int contactId)? getContactById,
    TResult? Function(ContactModel model)? editContact,
  }) {
    return getContact?.call(type, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EntityType type, int page)? getContact,
    TResult Function(int contactId)? getContactById,
    TResult Function(ContactModel model)? editContact,
    required TResult orElse(),
  }) {
    if (getContact != null) {
      return getContact(type, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetContact value) getContact,
    required TResult Function(_GetContactById value) getContactById,
    required TResult Function(_EditContact value) editContact,
  }) {
    return getContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetContact value)? getContact,
    TResult? Function(_GetContactById value)? getContactById,
    TResult? Function(_EditContact value)? editContact,
  }) {
    return getContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetContact value)? getContact,
    TResult Function(_GetContactById value)? getContactById,
    TResult Function(_EditContact value)? editContact,
    required TResult orElse(),
  }) {
    if (getContact != null) {
      return getContact(this);
    }
    return orElse();
  }
}

abstract class _GetContact implements ContactEvent {
  const factory _GetContact(
      {required final EntityType type,
      required final int page}) = _$GetContactImpl;

  EntityType get type;
  int get page;
  @JsonKey(ignore: true)
  _$$GetContactImplCopyWith<_$GetContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetContactByIdImplCopyWith<$Res> {
  factory _$$GetContactByIdImplCopyWith(_$GetContactByIdImpl value,
          $Res Function(_$GetContactByIdImpl) then) =
      __$$GetContactByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int contactId});
}

/// @nodoc
class __$$GetContactByIdImplCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res, _$GetContactByIdImpl>
    implements _$$GetContactByIdImplCopyWith<$Res> {
  __$$GetContactByIdImplCopyWithImpl(
      _$GetContactByIdImpl _value, $Res Function(_$GetContactByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactId = null,
  }) {
    return _then(_$GetContactByIdImpl(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetContactByIdImpl implements _GetContactById {
  const _$GetContactByIdImpl({required this.contactId});

  @override
  final int contactId;

  @override
  String toString() {
    return 'ContactEvent.getContactById(contactId: $contactId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetContactByIdImpl &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetContactByIdImplCopyWith<_$GetContactByIdImpl> get copyWith =>
      __$$GetContactByIdImplCopyWithImpl<_$GetContactByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EntityType type, int page) getContact,
    required TResult Function(int contactId) getContactById,
    required TResult Function(ContactModel model) editContact,
  }) {
    return getContactById(contactId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EntityType type, int page)? getContact,
    TResult? Function(int contactId)? getContactById,
    TResult? Function(ContactModel model)? editContact,
  }) {
    return getContactById?.call(contactId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EntityType type, int page)? getContact,
    TResult Function(int contactId)? getContactById,
    TResult Function(ContactModel model)? editContact,
    required TResult orElse(),
  }) {
    if (getContactById != null) {
      return getContactById(contactId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetContact value) getContact,
    required TResult Function(_GetContactById value) getContactById,
    required TResult Function(_EditContact value) editContact,
  }) {
    return getContactById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetContact value)? getContact,
    TResult? Function(_GetContactById value)? getContactById,
    TResult? Function(_EditContact value)? editContact,
  }) {
    return getContactById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetContact value)? getContact,
    TResult Function(_GetContactById value)? getContactById,
    TResult Function(_EditContact value)? editContact,
    required TResult orElse(),
  }) {
    if (getContactById != null) {
      return getContactById(this);
    }
    return orElse();
  }
}

abstract class _GetContactById implements ContactEvent {
  const factory _GetContactById({required final int contactId}) =
      _$GetContactByIdImpl;

  int get contactId;
  @JsonKey(ignore: true)
  _$$GetContactByIdImplCopyWith<_$GetContactByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditContactImplCopyWith<$Res> {
  factory _$$EditContactImplCopyWith(
          _$EditContactImpl value, $Res Function(_$EditContactImpl) then) =
      __$$EditContactImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContactModel model});

  $ContactModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$EditContactImplCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res, _$EditContactImpl>
    implements _$$EditContactImplCopyWith<$Res> {
  __$$EditContactImplCopyWithImpl(
      _$EditContactImpl _value, $Res Function(_$EditContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$EditContactImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ContactModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactModelCopyWith<$Res> get model {
    return $ContactModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$EditContactImpl implements _EditContact {
  const _$EditContactImpl({required this.model});

  @override
  final ContactModel model;

  @override
  String toString() {
    return 'ContactEvent.editContact(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditContactImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditContactImplCopyWith<_$EditContactImpl> get copyWith =>
      __$$EditContactImplCopyWithImpl<_$EditContactImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EntityType type, int page) getContact,
    required TResult Function(int contactId) getContactById,
    required TResult Function(ContactModel model) editContact,
  }) {
    return editContact(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EntityType type, int page)? getContact,
    TResult? Function(int contactId)? getContactById,
    TResult? Function(ContactModel model)? editContact,
  }) {
    return editContact?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EntityType type, int page)? getContact,
    TResult Function(int contactId)? getContactById,
    TResult Function(ContactModel model)? editContact,
    required TResult orElse(),
  }) {
    if (editContact != null) {
      return editContact(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetContact value) getContact,
    required TResult Function(_GetContactById value) getContactById,
    required TResult Function(_EditContact value) editContact,
  }) {
    return editContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetContact value)? getContact,
    TResult? Function(_GetContactById value)? getContactById,
    TResult? Function(_EditContact value)? editContact,
  }) {
    return editContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetContact value)? getContact,
    TResult Function(_GetContactById value)? getContactById,
    TResult Function(_EditContact value)? editContact,
    required TResult orElse(),
  }) {
    if (editContact != null) {
      return editContact(this);
    }
    return orElse();
  }
}

abstract class _EditContact implements ContactEvent {
  const factory _EditContact({required final ContactModel model}) =
      _$EditContactImpl;

  ContactModel get model;
  @JsonKey(ignore: true)
  _$$EditContactImplCopyWith<_$EditContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)
        loaded,
    required TResult Function(ResponseModel<List<ContactDetailsModel>> contact)
        loadedContactDetails,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)?
        loaded,
    TResult? Function(ResponseModel<List<ContactDetailsModel>> contact)?
        loadedContactDetails,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)?
        loaded,
    TResult Function(ResponseModel<List<ContactDetailsModel>> contact)?
        loadedContactDetails,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedContactDetails value) loadedContactDetails,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedContactDetails value)? loadedContactDetails,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedContactDetails value)? loadedContactDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactStateCopyWith<$Res> {
  factory $ContactStateCopyWith(
          ContactState value, $Res Function(ContactState) then) =
      _$ContactStateCopyWithImpl<$Res, ContactState>;
}

/// @nodoc
class _$ContactStateCopyWithImpl<$Res, $Val extends ContactState>
    implements $ContactStateCopyWith<$Res> {
  _$ContactStateCopyWithImpl(this._value, this._then);

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
    extends _$ContactStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ContactState.initial()';
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
    required TResult Function(
            ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)
        loaded,
    required TResult Function(ResponseModel<List<ContactDetailsModel>> contact)
        loadedContactDetails,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)?
        loaded,
    TResult? Function(ResponseModel<List<ContactDetailsModel>> contact)?
        loadedContactDetails,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)?
        loaded,
    TResult Function(ResponseModel<List<ContactDetailsModel>> contact)?
        loadedContactDetails,
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
    required TResult Function(_LoadedContactDetails value) loadedContactDetails,
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
    TResult? Function(_LoadedContactDetails value)? loadedContactDetails,
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
    TResult Function(_LoadedContactDetails value)? loadedContactDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ContactState {
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
    extends _$ContactStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ContactState.loading()';
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
    required TResult Function(
            ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)
        loaded,
    required TResult Function(ResponseModel<List<ContactDetailsModel>> contact)
        loadedContactDetails,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)?
        loaded,
    TResult? Function(ResponseModel<List<ContactDetailsModel>> contact)?
        loadedContactDetails,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)?
        loaded,
    TResult Function(ResponseModel<List<ContactDetailsModel>> contact)?
        loadedContactDetails,
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
    required TResult Function(_LoadedContactDetails value) loadedContactDetails,
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
    TResult? Function(_LoadedContactDetails value)? loadedContactDetails,
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
    TResult Function(_LoadedContactDetails value)? loadedContactDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ContactState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ResponsePaginationModel<List<ContactModel>> contacts, bool? isLoading});

  $ResponsePaginationModelCopyWith<List<ContactModel>, $Res> get contacts;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? isLoading = freezed,
  }) {
    return _then(_$LoadedImpl(
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as ResponsePaginationModel<List<ContactModel>>,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
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

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.contacts, this.isLoading = false});

  @override
  final ResponsePaginationModel<List<ContactModel>> contacts;
  @override
  @JsonKey()
  final bool? isLoading;

  @override
  String toString() {
    return 'ContactState.loaded(contacts: $contacts, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.contacts, contacts) ||
                other.contacts == contacts) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contacts, isLoading);

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
    required TResult Function(
            ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)
        loaded,
    required TResult Function(ResponseModel<List<ContactDetailsModel>> contact)
        loadedContactDetails,
    required TResult Function(String message) error,
  }) {
    return loaded(contacts, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)?
        loaded,
    TResult? Function(ResponseModel<List<ContactDetailsModel>> contact)?
        loadedContactDetails,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(contacts, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)?
        loaded,
    TResult Function(ResponseModel<List<ContactDetailsModel>> contact)?
        loadedContactDetails,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(contacts, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedContactDetails value) loadedContactDetails,
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
    TResult? Function(_LoadedContactDetails value)? loadedContactDetails,
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
    TResult Function(_LoadedContactDetails value)? loadedContactDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ContactState {
  const factory _Loaded(
      {required final ResponsePaginationModel<List<ContactModel>> contacts,
      final bool? isLoading}) = _$LoadedImpl;

  ResponsePaginationModel<List<ContactModel>> get contacts;
  bool? get isLoading;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedContactDetailsImplCopyWith<$Res> {
  factory _$$LoadedContactDetailsImplCopyWith(_$LoadedContactDetailsImpl value,
          $Res Function(_$LoadedContactDetailsImpl) then) =
      __$$LoadedContactDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseModel<List<ContactDetailsModel>> contact});

  $ResponseModelCopyWith<List<ContactDetailsModel>, $Res> get contact;
}

/// @nodoc
class __$$LoadedContactDetailsImplCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$LoadedContactDetailsImpl>
    implements _$$LoadedContactDetailsImplCopyWith<$Res> {
  __$$LoadedContactDetailsImplCopyWithImpl(_$LoadedContactDetailsImpl _value,
      $Res Function(_$LoadedContactDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$LoadedContactDetailsImpl(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ResponseModel<List<ContactDetailsModel>>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<List<ContactDetailsModel>, $Res> get contact {
    return $ResponseModelCopyWith<List<ContactDetailsModel>, $Res>(
        _value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc

class _$LoadedContactDetailsImpl implements _LoadedContactDetails {
  const _$LoadedContactDetailsImpl({required this.contact});

  @override
  final ResponseModel<List<ContactDetailsModel>> contact;

  @override
  String toString() {
    return 'ContactState.loadedContactDetails(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedContactDetailsImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedContactDetailsImplCopyWith<_$LoadedContactDetailsImpl>
      get copyWith =>
          __$$LoadedContactDetailsImplCopyWithImpl<_$LoadedContactDetailsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)
        loaded,
    required TResult Function(ResponseModel<List<ContactDetailsModel>> contact)
        loadedContactDetails,
    required TResult Function(String message) error,
  }) {
    return loadedContactDetails(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)?
        loaded,
    TResult? Function(ResponseModel<List<ContactDetailsModel>> contact)?
        loadedContactDetails,
    TResult? Function(String message)? error,
  }) {
    return loadedContactDetails?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)?
        loaded,
    TResult Function(ResponseModel<List<ContactDetailsModel>> contact)?
        loadedContactDetails,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedContactDetails != null) {
      return loadedContactDetails(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadedContactDetails value) loadedContactDetails,
    required TResult Function(_Error value) error,
  }) {
    return loadedContactDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadedContactDetails value)? loadedContactDetails,
    TResult? Function(_Error value)? error,
  }) {
    return loadedContactDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadedContactDetails value)? loadedContactDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedContactDetails != null) {
      return loadedContactDetails(this);
    }
    return orElse();
  }
}

abstract class _LoadedContactDetails implements ContactState {
  const factory _LoadedContactDetails(
          {required final ResponseModel<List<ContactDetailsModel>> contact}) =
      _$LoadedContactDetailsImpl;

  ResponseModel<List<ContactDetailsModel>> get contact;
  @JsonKey(ignore: true)
  _$$LoadedContactDetailsImplCopyWith<_$LoadedContactDetailsImpl>
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
    extends _$ContactStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'ContactState.error(message: $message)';
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
    required TResult Function(
            ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)
        loaded,
    required TResult Function(ResponseModel<List<ContactDetailsModel>> contact)
        loadedContactDetails,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)?
        loaded,
    TResult? Function(ResponseModel<List<ContactDetailsModel>> contact)?
        loadedContactDetails,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResponsePaginationModel<List<ContactModel>> contacts,
            bool? isLoading)?
        loaded,
    TResult Function(ResponseModel<List<ContactDetailsModel>> contact)?
        loadedContactDetails,
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
    required TResult Function(_LoadedContactDetails value) loadedContactDetails,
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
    TResult? Function(_LoadedContactDetails value)? loadedContactDetails,
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
    TResult Function(_LoadedContactDetails value)? loadedContactDetails,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ContactState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
