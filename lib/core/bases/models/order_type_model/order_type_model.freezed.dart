// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderTypeModel _$OrderTypeModelFromJson(Map<String, dynamic> json) {
  return _OrderTypeModel.fromJson(json);
}

/// @nodoc
mixin _$OrderTypeModel {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderTypeModelCopyWith<OrderTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTypeModelCopyWith<$Res> {
  factory $OrderTypeModelCopyWith(
          OrderTypeModel value, $Res Function(OrderTypeModel) then) =
      _$OrderTypeModelCopyWithImpl<$Res, OrderTypeModel>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$OrderTypeModelCopyWithImpl<$Res, $Val extends OrderTypeModel>
    implements $OrderTypeModelCopyWith<$Res> {
  _$OrderTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderTypeModelImplCopyWith<$Res>
    implements $OrderTypeModelCopyWith<$Res> {
  factory _$$OrderTypeModelImplCopyWith(_$OrderTypeModelImpl value,
          $Res Function(_$OrderTypeModelImpl) then) =
      __$$OrderTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$OrderTypeModelImplCopyWithImpl<$Res>
    extends _$OrderTypeModelCopyWithImpl<$Res, _$OrderTypeModelImpl>
    implements _$$OrderTypeModelImplCopyWith<$Res> {
  __$$OrderTypeModelImplCopyWithImpl(
      _$OrderTypeModelImpl _value, $Res Function(_$OrderTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$OrderTypeModelImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderTypeModelImpl implements _OrderTypeModel {
  _$OrderTypeModelImpl({this.key = "", this.value = ""});

  factory _$OrderTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderTypeModelImplFromJson(json);

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String value;

  @override
  String toString() {
    return 'OrderTypeModel(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderTypeModelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderTypeModelImplCopyWith<_$OrderTypeModelImpl> get copyWith =>
      __$$OrderTypeModelImplCopyWithImpl<_$OrderTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderTypeModelImplToJson(
      this,
    );
  }
}

abstract class _OrderTypeModel implements OrderTypeModel {
  factory _OrderTypeModel({final String key, final String value}) =
      _$OrderTypeModelImpl;

  factory _OrderTypeModel.fromJson(Map<String, dynamic> json) =
      _$OrderTypeModelImpl.fromJson;

  @override
  String get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$OrderTypeModelImplCopyWith<_$OrderTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
