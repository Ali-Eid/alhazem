// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_number")
  String get partnerNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_name")
  String get partnerName => throw _privateConstructorUsedError;
  @JsonKey(name: "paid_total")
  num get totalPaid => throw _privateConstructorUsedError;
  num get total => throw _privateConstructorUsedError;
  @JsonKey(name: "remained_total")
  num get remainedTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String state,
      String date,
      @JsonKey(name: "partner_number") String partnerNumber,
      @JsonKey(name: "partner_name") String partnerName,
      @JsonKey(name: "paid_total") num totalPaid,
      num total,
      @JsonKey(name: "remained_total") num remainedTotal});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

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
    Object? date = null,
    Object? partnerNumber = null,
    Object? partnerName = null,
    Object? totalPaid = null,
    Object? total = null,
    Object? remainedTotal = null,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      partnerNumber: null == partnerNumber
          ? _value.partnerNumber
          : partnerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      partnerName: null == partnerName
          ? _value.partnerName
          : partnerName // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String state,
      String date,
      @JsonKey(name: "partner_number") String partnerNumber,
      @JsonKey(name: "partner_name") String partnerName,
      @JsonKey(name: "paid_total") num totalPaid,
      num total,
      @JsonKey(name: "remained_total") num remainedTotal});
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? state = null,
    Object? date = null,
    Object? partnerNumber = null,
    Object? partnerName = null,
    Object? totalPaid = null,
    Object? total = null,
    Object? remainedTotal = null,
  }) {
    return _then(_$OrderModelImpl(
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      partnerNumber: null == partnerNumber
          ? _value.partnerNumber
          : partnerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      partnerName: null == partnerName
          ? _value.partnerName
          : partnerName // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$OrderModelImpl implements _OrderModel {
  _$OrderModelImpl(
      {this.id = 0,
      this.name = "",
      this.state = "",
      this.date = "",
      @JsonKey(name: "partner_number") this.partnerNumber = "",
      @JsonKey(name: "partner_name") this.partnerName = "",
      @JsonKey(name: "paid_total") this.totalPaid = 0,
      this.total = 0,
      @JsonKey(name: "remained_total") this.remainedTotal = 0});

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

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
  @JsonKey()
  final String date;
  @override
  @JsonKey(name: "partner_number")
  final String partnerNumber;
  @override
  @JsonKey(name: "partner_name")
  final String partnerName;
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
    return 'OrderModel(id: $id, name: $name, state: $state, date: $date, partnerNumber: $partnerNumber, partnerName: $partnerName, totalPaid: $totalPaid, total: $total, remainedTotal: $remainedTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.partnerNumber, partnerNumber) ||
                other.partnerNumber == partnerNumber) &&
            (identical(other.partnerName, partnerName) ||
                other.partnerName == partnerName) &&
            (identical(other.totalPaid, totalPaid) ||
                other.totalPaid == totalPaid) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.remainedTotal, remainedTotal) ||
                other.remainedTotal == remainedTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, state, date,
      partnerNumber, partnerName, totalPaid, total, remainedTotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  factory _OrderModel(
          {final int id,
          final String name,
          final String state,
          final String date,
          @JsonKey(name: "partner_number") final String partnerNumber,
          @JsonKey(name: "partner_name") final String partnerName,
          @JsonKey(name: "paid_total") final num totalPaid,
          final num total,
          @JsonKey(name: "remained_total") final num remainedTotal}) =
      _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get state;
  @override
  String get date;
  @override
  @JsonKey(name: "partner_number")
  String get partnerNumber;
  @override
  @JsonKey(name: "partner_name")
  String get partnerName;
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
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
