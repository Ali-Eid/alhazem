// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_confirm_waiting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputConfirmWaitingModel _$InputConfirmWaitingModelFromJson(
    Map<String, dynamic> json) {
  return _InputConfirmWaitingModel.fromJson(json);
}

/// @nodoc
mixin _$InputConfirmWaitingModel {
  @JsonKey(name: "order_id")
  int get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "total_paid")
  double get totalPaid => throw _privateConstructorUsedError;
  int get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputConfirmWaitingModelCopyWith<InputConfirmWaitingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputConfirmWaitingModelCopyWith<$Res> {
  factory $InputConfirmWaitingModelCopyWith(InputConfirmWaitingModel value,
          $Res Function(InputConfirmWaitingModel) then) =
      _$InputConfirmWaitingModelCopyWithImpl<$Res, InputConfirmWaitingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") int orderId,
      @JsonKey(name: "total_paid") double totalPaid,
      int currency});
}

/// @nodoc
class _$InputConfirmWaitingModelCopyWithImpl<$Res,
        $Val extends InputConfirmWaitingModel>
    implements $InputConfirmWaitingModelCopyWith<$Res> {
  _$InputConfirmWaitingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? totalPaid = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPaid: null == totalPaid
          ? _value.totalPaid
          : totalPaid // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputConfirmWaitingModelImplCopyWith<$Res>
    implements $InputConfirmWaitingModelCopyWith<$Res> {
  factory _$$InputConfirmWaitingModelImplCopyWith(
          _$InputConfirmWaitingModelImpl value,
          $Res Function(_$InputConfirmWaitingModelImpl) then) =
      __$$InputConfirmWaitingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") int orderId,
      @JsonKey(name: "total_paid") double totalPaid,
      int currency});
}

/// @nodoc
class __$$InputConfirmWaitingModelImplCopyWithImpl<$Res>
    extends _$InputConfirmWaitingModelCopyWithImpl<$Res,
        _$InputConfirmWaitingModelImpl>
    implements _$$InputConfirmWaitingModelImplCopyWith<$Res> {
  __$$InputConfirmWaitingModelImplCopyWithImpl(
      _$InputConfirmWaitingModelImpl _value,
      $Res Function(_$InputConfirmWaitingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? totalPaid = null,
    Object? currency = null,
  }) {
    return _then(_$InputConfirmWaitingModelImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPaid: null == totalPaid
          ? _value.totalPaid
          : totalPaid // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputConfirmWaitingModelImpl implements _InputConfirmWaitingModel {
  _$InputConfirmWaitingModelImpl(
      {@JsonKey(name: "order_id") this.orderId = 0,
      @JsonKey(name: "total_paid") this.totalPaid = 0,
      this.currency = 0});

  factory _$InputConfirmWaitingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputConfirmWaitingModelImplFromJson(json);

  @override
  @JsonKey(name: "order_id")
  final int orderId;
  @override
  @JsonKey(name: "total_paid")
  final double totalPaid;
  @override
  @JsonKey()
  final int currency;

  @override
  String toString() {
    return 'InputConfirmWaitingModel(orderId: $orderId, totalPaid: $totalPaid, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputConfirmWaitingModelImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.totalPaid, totalPaid) ||
                other.totalPaid == totalPaid) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, totalPaid, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputConfirmWaitingModelImplCopyWith<_$InputConfirmWaitingModelImpl>
      get copyWith => __$$InputConfirmWaitingModelImplCopyWithImpl<
          _$InputConfirmWaitingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputConfirmWaitingModelImplToJson(
      this,
    );
  }
}

abstract class _InputConfirmWaitingModel implements InputConfirmWaitingModel {
  factory _InputConfirmWaitingModel(
      {@JsonKey(name: "order_id") final int orderId,
      @JsonKey(name: "total_paid") final double totalPaid,
      final int currency}) = _$InputConfirmWaitingModelImpl;

  factory _InputConfirmWaitingModel.fromJson(Map<String, dynamic> json) =
      _$InputConfirmWaitingModelImpl.fromJson;

  @override
  @JsonKey(name: "order_id")
  int get orderId;
  @override
  @JsonKey(name: "total_paid")
  double get totalPaid;
  @override
  int get currency;
  @override
  @JsonKey(ignore: true)
  _$$InputConfirmWaitingModelImplCopyWith<_$InputConfirmWaitingModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
