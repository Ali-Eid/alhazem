// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_lead_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputLeadModel _$InputLeadModelFromJson(Map<String, dynamic> json) {
  return _InputLeadModel.fromJson(json);
}

/// @nodoc
mixin _$InputLeadModel {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputLeadModelCopyWith<InputLeadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputLeadModelCopyWith<$Res> {
  factory $InputLeadModelCopyWith(
          InputLeadModel value, $Res Function(InputLeadModel) then) =
      _$InputLeadModelCopyWithImpl<$Res, InputLeadModel>;
  @useResult
  $Res call({String name, @JsonKey(name: "phone_number") String phoneNumber});
}

/// @nodoc
class _$InputLeadModelCopyWithImpl<$Res, $Val extends InputLeadModel>
    implements $InputLeadModelCopyWith<$Res> {
  _$InputLeadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputLeadModelImplCopyWith<$Res>
    implements $InputLeadModelCopyWith<$Res> {
  factory _$$InputLeadModelImplCopyWith(_$InputLeadModelImpl value,
          $Res Function(_$InputLeadModelImpl) then) =
      __$$InputLeadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @JsonKey(name: "phone_number") String phoneNumber});
}

/// @nodoc
class __$$InputLeadModelImplCopyWithImpl<$Res>
    extends _$InputLeadModelCopyWithImpl<$Res, _$InputLeadModelImpl>
    implements _$$InputLeadModelImplCopyWith<$Res> {
  __$$InputLeadModelImplCopyWithImpl(
      _$InputLeadModelImpl _value, $Res Function(_$InputLeadModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$InputLeadModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputLeadModelImpl implements _InputLeadModel {
  _$InputLeadModelImpl(
      {this.name = "", @JsonKey(name: "phone_number") this.phoneNumber = ""});

  factory _$InputLeadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputLeadModelImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;

  @override
  String toString() {
    return 'InputLeadModel(name: $name, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputLeadModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputLeadModelImplCopyWith<_$InputLeadModelImpl> get copyWith =>
      __$$InputLeadModelImplCopyWithImpl<_$InputLeadModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputLeadModelImplToJson(
      this,
    );
  }
}

abstract class _InputLeadModel implements InputLeadModel {
  factory _InputLeadModel(
          {final String name,
          @JsonKey(name: "phone_number") final String phoneNumber}) =
      _$InputLeadModelImpl;

  factory _InputLeadModel.fromJson(Map<String, dynamic> json) =
      _$InputLeadModelImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$InputLeadModelImplCopyWith<_$InputLeadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
