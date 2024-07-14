// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginInputModel _$LoginInputModelFromJson(Map<String, dynamic> json) {
  return _LoginInputModel.fromJson(json);
}

/// @nodoc
mixin _$LoginInputModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginInputModelCopyWith<LoginInputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginInputModelCopyWith<$Res> {
  factory $LoginInputModelCopyWith(
          LoginInputModel value, $Res Function(LoginInputModel) then) =
      _$LoginInputModelCopyWithImpl<$Res, LoginInputModel>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginInputModelCopyWithImpl<$Res, $Val extends LoginInputModel>
    implements $LoginInputModelCopyWith<$Res> {
  _$LoginInputModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginInputModelImplCopyWith<$Res>
    implements $LoginInputModelCopyWith<$Res> {
  factory _$$LoginInputModelImplCopyWith(_$LoginInputModelImpl value,
          $Res Function(_$LoginInputModelImpl) then) =
      __$$LoginInputModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginInputModelImplCopyWithImpl<$Res>
    extends _$LoginInputModelCopyWithImpl<$Res, _$LoginInputModelImpl>
    implements _$$LoginInputModelImplCopyWith<$Res> {
  __$$LoginInputModelImplCopyWithImpl(
      _$LoginInputModelImpl _value, $Res Function(_$LoginInputModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginInputModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginInputModelImpl implements _LoginInputModel {
  _$LoginInputModelImpl({required this.email, required this.password});

  factory _$LoginInputModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginInputModelImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginInputModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginInputModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginInputModelImplCopyWith<_$LoginInputModelImpl> get copyWith =>
      __$$LoginInputModelImplCopyWithImpl<_$LoginInputModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginInputModelImplToJson(
      this,
    );
  }
}

abstract class _LoginInputModel implements LoginInputModel {
  factory _LoginInputModel(
      {required final String email,
      required final String password}) = _$LoginInputModelImpl;

  factory _LoginInputModel.fromJson(Map<String, dynamic> json) =
      _$LoginInputModelImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginInputModelImplCopyWith<_$LoginInputModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
