// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateOrderModel _$CreateOrderModelFromJson(Map<String, dynamic> json) {
  return _CreateOrderModel.fromJson(json);
}

/// @nodoc
mixin _$CreateOrderModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderModelCopyWith<CreateOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderModelCopyWith<$Res> {
  factory $CreateOrderModelCopyWith(
          CreateOrderModel value, $Res Function(CreateOrderModel) then) =
      _$CreateOrderModelCopyWithImpl<$Res, CreateOrderModel>;
  @useResult
  $Res call({int id, String name, String state});
}

/// @nodoc
class _$CreateOrderModelCopyWithImpl<$Res, $Val extends CreateOrderModel>
    implements $CreateOrderModelCopyWith<$Res> {
  _$CreateOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? state = null,
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
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateOrderModelImplCopyWith<$Res>
    implements $CreateOrderModelCopyWith<$Res> {
  factory _$$CreateOrderModelImplCopyWith(_$CreateOrderModelImpl value,
          $Res Function(_$CreateOrderModelImpl) then) =
      __$$CreateOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String state});
}

/// @nodoc
class __$$CreateOrderModelImplCopyWithImpl<$Res>
    extends _$CreateOrderModelCopyWithImpl<$Res, _$CreateOrderModelImpl>
    implements _$$CreateOrderModelImplCopyWith<$Res> {
  __$$CreateOrderModelImplCopyWithImpl(_$CreateOrderModelImpl _value,
      $Res Function(_$CreateOrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? state = null,
  }) {
    return _then(_$CreateOrderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateOrderModelImpl implements _CreateOrderModel {
  _$CreateOrderModelImpl({this.id = 0, this.name = "", this.state = ""});

  factory _$CreateOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateOrderModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String state;

  @override
  String toString() {
    return 'CreateOrderModel(id: $id, name: $name, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderModelImplCopyWith<_$CreateOrderModelImpl> get copyWith =>
      __$$CreateOrderModelImplCopyWithImpl<_$CreateOrderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateOrderModelImplToJson(
      this,
    );
  }
}

abstract class _CreateOrderModel implements CreateOrderModel {
  factory _CreateOrderModel(
      {final int id,
      final String name,
      final String state}) = _$CreateOrderModelImpl;

  factory _CreateOrderModel.fromJson(Map<String, dynamic> json) =
      _$CreateOrderModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get state;
  @override
  @JsonKey(ignore: true)
  _$$CreateOrderModelImplCopyWith<_$CreateOrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
