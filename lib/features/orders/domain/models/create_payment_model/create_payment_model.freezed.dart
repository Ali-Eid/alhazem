// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatePaymentModel _$CreatePaymentModelFromJson(Map<String, dynamic> json) {
  return _CreatePaymentModel.fromJson(json);
}

/// @nodoc
mixin _$CreatePaymentModel {
  @JsonKey(name: "paid_total")
  num get totalPaid => throw _privateConstructorUsedError;
  num get total => throw _privateConstructorUsedError;
  @JsonKey(name: "remained_total")
  num get remainedTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePaymentModelCopyWith<CreatePaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePaymentModelCopyWith<$Res> {
  factory $CreatePaymentModelCopyWith(
          CreatePaymentModel value, $Res Function(CreatePaymentModel) then) =
      _$CreatePaymentModelCopyWithImpl<$Res, CreatePaymentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "paid_total") num totalPaid,
      num total,
      @JsonKey(name: "remained_total") num remainedTotal});
}

/// @nodoc
class _$CreatePaymentModelCopyWithImpl<$Res, $Val extends CreatePaymentModel>
    implements $CreatePaymentModelCopyWith<$Res> {
  _$CreatePaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPaid = null,
    Object? total = null,
    Object? remainedTotal = null,
  }) {
    return _then(_value.copyWith(
      totalPaid: null == totalPaid
          ? _value.totalPaid
          : totalPaid // ignore: cast_nullable_to_non_nullable
              as num,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num,
      remainedTotal: null == remainedTotal
          ? _value.remainedTotal
          : remainedTotal // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePaymentModelImplCopyWith<$Res>
    implements $CreatePaymentModelCopyWith<$Res> {
  factory _$$CreatePaymentModelImplCopyWith(_$CreatePaymentModelImpl value,
          $Res Function(_$CreatePaymentModelImpl) then) =
      __$$CreatePaymentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "paid_total") num totalPaid,
      num total,
      @JsonKey(name: "remained_total") num remainedTotal});
}

/// @nodoc
class __$$CreatePaymentModelImplCopyWithImpl<$Res>
    extends _$CreatePaymentModelCopyWithImpl<$Res, _$CreatePaymentModelImpl>
    implements _$$CreatePaymentModelImplCopyWith<$Res> {
  __$$CreatePaymentModelImplCopyWithImpl(_$CreatePaymentModelImpl _value,
      $Res Function(_$CreatePaymentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPaid = null,
    Object? total = null,
    Object? remainedTotal = null,
  }) {
    return _then(_$CreatePaymentModelImpl(
      totalPaid: null == totalPaid
          ? _value.totalPaid
          : totalPaid // ignore: cast_nullable_to_non_nullable
              as num,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num,
      remainedTotal: null == remainedTotal
          ? _value.remainedTotal
          : remainedTotal // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePaymentModelImpl implements _CreatePaymentModel {
  _$CreatePaymentModelImpl(
      {@JsonKey(name: "paid_total") this.totalPaid = 0,
      this.total = 0,
      @JsonKey(name: "remained_total") this.remainedTotal = 0});

  factory _$CreatePaymentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePaymentModelImplFromJson(json);

  @override
  @JsonKey(name: "paid_total")
  final num totalPaid;
  @override
  @JsonKey()
  final num total;
  @override
  @JsonKey(name: "remained_total")
  final num remainedTotal;

  @override
  String toString() {
    return 'CreatePaymentModel(totalPaid: $totalPaid, total: $total, remainedTotal: $remainedTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePaymentModelImpl &&
            (identical(other.totalPaid, totalPaid) ||
                other.totalPaid == totalPaid) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.remainedTotal, remainedTotal) ||
                other.remainedTotal == remainedTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalPaid, total, remainedTotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePaymentModelImplCopyWith<_$CreatePaymentModelImpl> get copyWith =>
      __$$CreatePaymentModelImplCopyWithImpl<_$CreatePaymentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePaymentModelImplToJson(
      this,
    );
  }
}

abstract class _CreatePaymentModel implements CreatePaymentModel {
  factory _CreatePaymentModel(
          {@JsonKey(name: "paid_total") final num totalPaid,
          final num total,
          @JsonKey(name: "remained_total") final num remainedTotal}) =
      _$CreatePaymentModelImpl;

  factory _CreatePaymentModel.fromJson(Map<String, dynamic> json) =
      _$CreatePaymentModelImpl.fromJson;

  @override
  @JsonKey(name: "paid_total")
  num get totalPaid;
  @override
  num get total;
  @override
  @JsonKey(name: "remained_total")
  num get remainedTotal;
  @override
  @JsonKey(ignore: true)
  _$$CreatePaymentModelImplCopyWith<_$CreatePaymentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
