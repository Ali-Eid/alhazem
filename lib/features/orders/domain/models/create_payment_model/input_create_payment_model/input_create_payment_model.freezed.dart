// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_create_payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputCreatePaymentModel _$InputCreatePaymentModelFromJson(
    Map<String, dynamic> json) {
  return _InputCreatePaymentModel.fromJson(json);
}

/// @nodoc
mixin _$InputCreatePaymentModel {
// ignore: invalid_annotation_target
  @JsonKey(name: "order_id")
  int get orderId => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputCreatePaymentModelCopyWith<InputCreatePaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputCreatePaymentModelCopyWith<$Res> {
  factory $InputCreatePaymentModelCopyWith(InputCreatePaymentModel value,
          $Res Function(InputCreatePaymentModel) then) =
      _$InputCreatePaymentModelCopyWithImpl<$Res, InputCreatePaymentModel>;
  @useResult
  $Res call({@JsonKey(name: "order_id") int orderId, int total, int currency});
}

/// @nodoc
class _$InputCreatePaymentModelCopyWithImpl<$Res,
        $Val extends InputCreatePaymentModel>
    implements $InputCreatePaymentModelCopyWith<$Res> {
  _$InputCreatePaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? total = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputCreatePaymentModelImplCopyWith<$Res>
    implements $InputCreatePaymentModelCopyWith<$Res> {
  factory _$$InputCreatePaymentModelImplCopyWith(
          _$InputCreatePaymentModelImpl value,
          $Res Function(_$InputCreatePaymentModelImpl) then) =
      __$$InputCreatePaymentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "order_id") int orderId, int total, int currency});
}

/// @nodoc
class __$$InputCreatePaymentModelImplCopyWithImpl<$Res>
    extends _$InputCreatePaymentModelCopyWithImpl<$Res,
        _$InputCreatePaymentModelImpl>
    implements _$$InputCreatePaymentModelImplCopyWith<$Res> {
  __$$InputCreatePaymentModelImplCopyWithImpl(
      _$InputCreatePaymentModelImpl _value,
      $Res Function(_$InputCreatePaymentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? total = null,
    Object? currency = null,
  }) {
    return _then(_$InputCreatePaymentModelImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputCreatePaymentModelImpl implements _InputCreatePaymentModel {
  _$InputCreatePaymentModelImpl(
      {@JsonKey(name: "order_id") required this.orderId,
      required this.total,
      required this.currency});

  factory _$InputCreatePaymentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputCreatePaymentModelImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "order_id")
  final int orderId;
  @override
  final int total;
  @override
  final int currency;

  @override
  String toString() {
    return 'InputCreatePaymentModel(orderId: $orderId, total: $total, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputCreatePaymentModelImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, total, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputCreatePaymentModelImplCopyWith<_$InputCreatePaymentModelImpl>
      get copyWith => __$$InputCreatePaymentModelImplCopyWithImpl<
          _$InputCreatePaymentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputCreatePaymentModelImplToJson(
      this,
    );
  }
}

abstract class _InputCreatePaymentModel implements InputCreatePaymentModel {
  factory _InputCreatePaymentModel(
      {@JsonKey(name: "order_id") required final int orderId,
      required final int total,
      required final int currency}) = _$InputCreatePaymentModelImpl;

  factory _InputCreatePaymentModel.fromJson(Map<String, dynamic> json) =
      _$InputCreatePaymentModelImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "order_id")
  int get orderId;
  @override
  int get total;
  @override
  int get currency;
  @override
  @JsonKey(ignore: true)
  _$$InputCreatePaymentModelImplCopyWith<_$InputCreatePaymentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
