// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckPriceModel _$CheckPriceModelFromJson(Map<String, dynamic> json) {
  return _CheckPriceModel.fromJson(json);
}

/// @nodoc
mixin _$CheckPriceModel {
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckPriceModelCopyWith<CheckPriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckPriceModelCopyWith<$Res> {
  factory $CheckPriceModelCopyWith(
          CheckPriceModel value, $Res Function(CheckPriceModel) then) =
      _$CheckPriceModelCopyWithImpl<$Res, CheckPriceModel>;
  @useResult
  $Res call({double price});
}

/// @nodoc
class _$CheckPriceModelCopyWithImpl<$Res, $Val extends CheckPriceModel>
    implements $CheckPriceModelCopyWith<$Res> {
  _$CheckPriceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckPriceModelImplCopyWith<$Res>
    implements $CheckPriceModelCopyWith<$Res> {
  factory _$$CheckPriceModelImplCopyWith(_$CheckPriceModelImpl value,
          $Res Function(_$CheckPriceModelImpl) then) =
      __$$CheckPriceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double price});
}

/// @nodoc
class __$$CheckPriceModelImplCopyWithImpl<$Res>
    extends _$CheckPriceModelCopyWithImpl<$Res, _$CheckPriceModelImpl>
    implements _$$CheckPriceModelImplCopyWith<$Res> {
  __$$CheckPriceModelImplCopyWithImpl(
      _$CheckPriceModelImpl _value, $Res Function(_$CheckPriceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$CheckPriceModelImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckPriceModelImpl implements _CheckPriceModel {
  _$CheckPriceModelImpl({this.price = 0});

  factory _$CheckPriceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckPriceModelImplFromJson(json);

  @override
  @JsonKey()
  final double price;

  @override
  String toString() {
    return 'CheckPriceModel(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPriceModelImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPriceModelImplCopyWith<_$CheckPriceModelImpl> get copyWith =>
      __$$CheckPriceModelImplCopyWithImpl<_$CheckPriceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckPriceModelImplToJson(
      this,
    );
  }
}

abstract class _CheckPriceModel implements CheckPriceModel {
  factory _CheckPriceModel({final double price}) = _$CheckPriceModelImpl;

  factory _CheckPriceModel.fromJson(Map<String, dynamic> json) =
      _$CheckPriceModelImpl.fromJson;

  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$CheckPriceModelImplCopyWith<_$CheckPriceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
