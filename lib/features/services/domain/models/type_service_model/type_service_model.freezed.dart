// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TypeServiceModel _$TypeServiceModelFromJson(Map<String, dynamic> json) {
  return _TypeServiceModel.fromJson(json);
}

/// @nodoc
mixin _$TypeServiceModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeServiceModelCopyWith<TypeServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeServiceModelCopyWith<$Res> {
  factory $TypeServiceModelCopyWith(
          TypeServiceModel value, $Res Function(TypeServiceModel) then) =
      _$TypeServiceModelCopyWithImpl<$Res, TypeServiceModel>;
  @useResult
  $Res call({int id, String name, String image});
}

/// @nodoc
class _$TypeServiceModelCopyWithImpl<$Res, $Val extends TypeServiceModel>
    implements $TypeServiceModelCopyWith<$Res> {
  _$TypeServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeServiceModelImplCopyWith<$Res>
    implements $TypeServiceModelCopyWith<$Res> {
  factory _$$TypeServiceModelImplCopyWith(_$TypeServiceModelImpl value,
          $Res Function(_$TypeServiceModelImpl) then) =
      __$$TypeServiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String image});
}

/// @nodoc
class __$$TypeServiceModelImplCopyWithImpl<$Res>
    extends _$TypeServiceModelCopyWithImpl<$Res, _$TypeServiceModelImpl>
    implements _$$TypeServiceModelImplCopyWith<$Res> {
  __$$TypeServiceModelImplCopyWithImpl(_$TypeServiceModelImpl _value,
      $Res Function(_$TypeServiceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$TypeServiceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeServiceModelImpl implements _TypeServiceModel {
  _$TypeServiceModelImpl({this.id = 0, this.name = "", this.image = ""});

  factory _$TypeServiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeServiceModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String image;

  @override
  String toString() {
    return 'TypeServiceModel(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeServiceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeServiceModelImplCopyWith<_$TypeServiceModelImpl> get copyWith =>
      __$$TypeServiceModelImplCopyWithImpl<_$TypeServiceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeServiceModelImplToJson(
      this,
    );
  }
}

abstract class _TypeServiceModel implements TypeServiceModel {
  factory _TypeServiceModel(
      {final int id,
      final String name,
      final String image}) = _$TypeServiceModelImpl;

  factory _TypeServiceModel.fromJson(Map<String, dynamic> json) =
      _$TypeServiceModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$TypeServiceModelImplCopyWith<_$TypeServiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
