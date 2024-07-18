// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_number")
  String get partnerNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_name")
  String get partnerName => throw _privateConstructorUsedError;
  @JsonKey(name: "order_line")
  List<OrderLineModel> get orderItems => throw _privateConstructorUsedError;
  @JsonKey(name: "return_reason")
  List<ReturnReasonModel> get returnReasons =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsModelCopyWith<$Res> {
  factory $OrderDetailsModelCopyWith(
          OrderDetailsModel value, $Res Function(OrderDetailsModel) then) =
      _$OrderDetailsModelCopyWithImpl<$Res, OrderDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String state,
      String date,
      @JsonKey(name: "partner_number") String partnerNumber,
      @JsonKey(name: "partner_name") String partnerName,
      @JsonKey(name: "order_line") List<OrderLineModel> orderItems,
      @JsonKey(name: "return_reason") List<ReturnReasonModel> returnReasons});
}

/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res, $Val extends OrderDetailsModel>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._value, this._then);

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
    Object? orderItems = null,
    Object? returnReasons = null,
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
      orderItems: null == orderItems
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderLineModel>,
      returnReasons: null == returnReasons
          ? _value.returnReasons
          : returnReasons // ignore: cast_nullable_to_non_nullable
              as List<ReturnReasonModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDetailsModelImplCopyWith<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  factory _$$OrderDetailsModelImplCopyWith(_$OrderDetailsModelImpl value,
          $Res Function(_$OrderDetailsModelImpl) then) =
      __$$OrderDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String state,
      String date,
      @JsonKey(name: "partner_number") String partnerNumber,
      @JsonKey(name: "partner_name") String partnerName,
      @JsonKey(name: "order_line") List<OrderLineModel> orderItems,
      @JsonKey(name: "return_reason") List<ReturnReasonModel> returnReasons});
}

/// @nodoc
class __$$OrderDetailsModelImplCopyWithImpl<$Res>
    extends _$OrderDetailsModelCopyWithImpl<$Res, _$OrderDetailsModelImpl>
    implements _$$OrderDetailsModelImplCopyWith<$Res> {
  __$$OrderDetailsModelImplCopyWithImpl(_$OrderDetailsModelImpl _value,
      $Res Function(_$OrderDetailsModelImpl) _then)
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
    Object? orderItems = null,
    Object? returnReasons = null,
  }) {
    return _then(_$OrderDetailsModelImpl(
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
      orderItems: null == orderItems
          ? _value._orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderLineModel>,
      returnReasons: null == returnReasons
          ? _value._returnReasons
          : returnReasons // ignore: cast_nullable_to_non_nullable
              as List<ReturnReasonModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailsModelImpl implements _OrderDetailsModel {
  _$OrderDetailsModelImpl(
      {this.id = 0,
      this.name = "",
      this.state = "",
      this.date = "",
      @JsonKey(name: "partner_number") this.partnerNumber = "",
      @JsonKey(name: "partner_name") this.partnerName = "",
      @JsonKey(name: "order_line")
      final List<OrderLineModel> orderItems = const [],
      @JsonKey(name: "return_reason")
      final List<ReturnReasonModel> returnReasons = const []})
      : _orderItems = orderItems,
        _returnReasons = returnReasons;

  factory _$OrderDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsModelImplFromJson(json);

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
  final List<OrderLineModel> _orderItems;
  @override
  @JsonKey(name: "order_line")
  List<OrderLineModel> get orderItems {
    if (_orderItems is EqualUnmodifiableListView) return _orderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderItems);
  }

  final List<ReturnReasonModel> _returnReasons;
  @override
  @JsonKey(name: "return_reason")
  List<ReturnReasonModel> get returnReasons {
    if (_returnReasons is EqualUnmodifiableListView) return _returnReasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_returnReasons);
  }

  @override
  String toString() {
    return 'OrderDetailsModel(id: $id, name: $name, state: $state, date: $date, partnerNumber: $partnerNumber, partnerName: $partnerName, orderItems: $orderItems, returnReasons: $returnReasons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.partnerNumber, partnerNumber) ||
                other.partnerNumber == partnerNumber) &&
            (identical(other.partnerName, partnerName) ||
                other.partnerName == partnerName) &&
            const DeepCollectionEquality()
                .equals(other._orderItems, _orderItems) &&
            const DeepCollectionEquality()
                .equals(other._returnReasons, _returnReasons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      state,
      date,
      partnerNumber,
      partnerName,
      const DeepCollectionEquality().hash(_orderItems),
      const DeepCollectionEquality().hash(_returnReasons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      __$$OrderDetailsModelImplCopyWithImpl<_$OrderDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailsModel implements OrderDetailsModel {
  factory _OrderDetailsModel(
      {final int id,
      final String name,
      final String state,
      final String date,
      @JsonKey(name: "partner_number") final String partnerNumber,
      @JsonKey(name: "partner_name") final String partnerName,
      @JsonKey(name: "order_line") final List<OrderLineModel> orderItems,
      @JsonKey(name: "return_reason")
      final List<ReturnReasonModel> returnReasons}) = _$OrderDetailsModelImpl;

  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsModelImpl.fromJson;

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
  @JsonKey(name: "order_line")
  List<OrderLineModel> get orderItems;
  @override
  @JsonKey(name: "return_reason")
  List<ReturnReasonModel> get returnReasons;
  @override
  @JsonKey(ignore: true)
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderLineModel _$OrderLineModelFromJson(Map<String, dynamic> json) {
  return _OrderLineModel.fromJson(json);
}

/// @nodoc
mixin _$OrderLineModel {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "price_unit")
  num get priceUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "customer")
  CustomerModel get customer => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: "paid_total")
  num get totalPaid => throw _privateConstructorUsedError;
  num get total => throw _privateConstructorUsedError;
  @JsonKey(name: "remained_total")
  num get remainedTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_ids")
  List<OrderVariantModel> get variants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderLineModelCopyWith<OrderLineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLineModelCopyWith<$Res> {
  factory $OrderLineModelCopyWith(
          OrderLineModel value, $Res Function(OrderLineModel) then) =
      _$OrderLineModelCopyWithImpl<$Res, OrderLineModel>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "price_unit") num priceUnit,
      @JsonKey(name: "customer") CustomerModel customer,
      String country,
      @JsonKey(name: "paid_total") num totalPaid,
      num total,
      @JsonKey(name: "remained_total") num remainedTotal,
      @JsonKey(name: "variant_ids") List<OrderVariantModel> variants});

  $CustomerModelCopyWith<$Res> get customer;
}

/// @nodoc
class _$OrderLineModelCopyWithImpl<$Res, $Val extends OrderLineModel>
    implements $OrderLineModelCopyWith<$Res> {
  _$OrderLineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? priceUnit = null,
    Object? customer = null,
    Object? country = null,
    Object? totalPaid = null,
    Object? total = null,
    Object? remainedTotal = null,
    Object? variants = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      priceUnit: null == priceUnit
          ? _value.priceUnit
          : priceUnit // ignore: cast_nullable_to_non_nullable
              as num,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerModel,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
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
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<OrderVariantModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerModelCopyWith<$Res> get customer {
    return $CustomerModelCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderLineModelImplCopyWith<$Res>
    implements $OrderLineModelCopyWith<$Res> {
  factory _$$OrderLineModelImplCopyWith(_$OrderLineModelImpl value,
          $Res Function(_$OrderLineModelImpl) then) =
      __$$OrderLineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "price_unit") num priceUnit,
      @JsonKey(name: "customer") CustomerModel customer,
      String country,
      @JsonKey(name: "paid_total") num totalPaid,
      num total,
      @JsonKey(name: "remained_total") num remainedTotal,
      @JsonKey(name: "variant_ids") List<OrderVariantModel> variants});

  @override
  $CustomerModelCopyWith<$Res> get customer;
}

/// @nodoc
class __$$OrderLineModelImplCopyWithImpl<$Res>
    extends _$OrderLineModelCopyWithImpl<$Res, _$OrderLineModelImpl>
    implements _$$OrderLineModelImplCopyWith<$Res> {
  __$$OrderLineModelImplCopyWithImpl(
      _$OrderLineModelImpl _value, $Res Function(_$OrderLineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? priceUnit = null,
    Object? customer = null,
    Object? country = null,
    Object? totalPaid = null,
    Object? total = null,
    Object? remainedTotal = null,
    Object? variants = null,
  }) {
    return _then(_$OrderLineModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      priceUnit: null == priceUnit
          ? _value.priceUnit
          : priceUnit // ignore: cast_nullable_to_non_nullable
              as num,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as CustomerModel,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
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
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<OrderVariantModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderLineModelImpl implements _OrderLineModel {
  const _$OrderLineModelImpl(
      {this.name = "",
      @JsonKey(name: "price_unit") this.priceUnit = 0,
      @JsonKey(name: "customer") this.customer = const CustomerModel(),
      this.country = "",
      @JsonKey(name: "paid_total") this.totalPaid = 0,
      this.total = 0,
      @JsonKey(name: "remained_total") this.remainedTotal = 0,
      @JsonKey(name: "variant_ids")
      final List<OrderVariantModel> variants = const []})
      : _variants = variants;

  factory _$OrderLineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderLineModelImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: "price_unit")
  final num priceUnit;
  @override
  @JsonKey(name: "customer")
  final CustomerModel customer;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey(name: "paid_total")
  final num totalPaid;
  @override
  @JsonKey()
  final num total;
  @override
  @JsonKey(name: "remained_total")
  final num remainedTotal;
  final List<OrderVariantModel> _variants;
  @override
  @JsonKey(name: "variant_ids")
  List<OrderVariantModel> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  String toString() {
    return 'OrderLineModel(name: $name, priceUnit: $priceUnit, customer: $customer, country: $country, totalPaid: $totalPaid, total: $total, remainedTotal: $remainedTotal, variants: $variants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLineModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.priceUnit, priceUnit) ||
                other.priceUnit == priceUnit) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.totalPaid, totalPaid) ||
                other.totalPaid == totalPaid) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.remainedTotal, remainedTotal) ||
                other.remainedTotal == remainedTotal) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      priceUnit,
      customer,
      country,
      totalPaid,
      total,
      remainedTotal,
      const DeepCollectionEquality().hash(_variants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLineModelImplCopyWith<_$OrderLineModelImpl> get copyWith =>
      __$$OrderLineModelImplCopyWithImpl<_$OrderLineModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderLineModelImplToJson(
      this,
    );
  }
}

abstract class _OrderLineModel implements OrderLineModel {
  const factory _OrderLineModel(
      {final String name,
      @JsonKey(name: "price_unit") final num priceUnit,
      @JsonKey(name: "customer") final CustomerModel customer,
      final String country,
      @JsonKey(name: "paid_total") final num totalPaid,
      final num total,
      @JsonKey(name: "remained_total") final num remainedTotal,
      @JsonKey(name: "variant_ids")
      final List<OrderVariantModel> variants}) = _$OrderLineModelImpl;

  factory _OrderLineModel.fromJson(Map<String, dynamic> json) =
      _$OrderLineModelImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: "price_unit")
  num get priceUnit;
  @override
  @JsonKey(name: "customer")
  CustomerModel get customer;
  @override
  String get country;
  @override
  @JsonKey(name: "paid_total")
  num get totalPaid;
  @override
  num get total;
  @override
  @JsonKey(name: "remained_total")
  num get remainedTotal;
  @override
  @JsonKey(name: "variant_ids")
  List<OrderVariantModel> get variants;
  @override
  @JsonKey(ignore: true)
  _$$OrderLineModelImplCopyWith<_$OrderLineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderVariantModel _$OrderVariantModelFromJson(Map<String, dynamic> json) {
  return _OrderVariantModel.fromJson(json);
}

/// @nodoc
mixin _$OrderVariantModel {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderVariantModelCopyWith<OrderVariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderVariantModelCopyWith<$Res> {
  factory $OrderVariantModelCopyWith(
          OrderVariantModel value, $Res Function(OrderVariantModel) then) =
      _$OrderVariantModelCopyWithImpl<$Res, OrderVariantModel>;
  @useResult
  $Res call({String name, String value, num price});
}

/// @nodoc
class _$OrderVariantModelCopyWithImpl<$Res, $Val extends OrderVariantModel>
    implements $OrderVariantModelCopyWith<$Res> {
  _$OrderVariantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderVariantModelImplCopyWith<$Res>
    implements $OrderVariantModelCopyWith<$Res> {
  factory _$$OrderVariantModelImplCopyWith(_$OrderVariantModelImpl value,
          $Res Function(_$OrderVariantModelImpl) then) =
      __$$OrderVariantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value, num price});
}

/// @nodoc
class __$$OrderVariantModelImplCopyWithImpl<$Res>
    extends _$OrderVariantModelCopyWithImpl<$Res, _$OrderVariantModelImpl>
    implements _$$OrderVariantModelImplCopyWith<$Res> {
  __$$OrderVariantModelImplCopyWithImpl(_$OrderVariantModelImpl _value,
      $Res Function(_$OrderVariantModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? price = null,
  }) {
    return _then(_$OrderVariantModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderVariantModelImpl implements _OrderVariantModel {
  const _$OrderVariantModelImpl(
      {this.name = "", this.value = "", this.price = 0});

  factory _$OrderVariantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderVariantModelImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final num price;

  @override
  String toString() {
    return 'OrderVariantModel(name: $name, value: $value, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderVariantModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderVariantModelImplCopyWith<_$OrderVariantModelImpl> get copyWith =>
      __$$OrderVariantModelImplCopyWithImpl<_$OrderVariantModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderVariantModelImplToJson(
      this,
    );
  }
}

abstract class _OrderVariantModel implements OrderVariantModel {
  const factory _OrderVariantModel(
      {final String name,
      final String value,
      final num price}) = _$OrderVariantModelImpl;

  factory _OrderVariantModel.fromJson(Map<String, dynamic> json) =
      _$OrderVariantModelImpl.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  num get price;
  @override
  @JsonKey(ignore: true)
  _$$OrderVariantModelImplCopyWith<_$OrderVariantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReturnReasonModel _$ReturnReasonModelFromJson(Map<String, dynamic> json) {
  return _ReturnReasonModel.fromJson(json);
}

/// @nodoc
mixin _$ReturnReasonModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReturnReasonModelCopyWith<ReturnReasonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnReasonModelCopyWith<$Res> {
  factory $ReturnReasonModelCopyWith(
          ReturnReasonModel value, $Res Function(ReturnReasonModel) then) =
      _$ReturnReasonModelCopyWithImpl<$Res, ReturnReasonModel>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$ReturnReasonModelCopyWithImpl<$Res, $Val extends ReturnReasonModel>
    implements $ReturnReasonModelCopyWith<$Res> {
  _$ReturnReasonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReturnReasonModelImplCopyWith<$Res>
    implements $ReturnReasonModelCopyWith<$Res> {
  factory _$$ReturnReasonModelImplCopyWith(_$ReturnReasonModelImpl value,
          $Res Function(_$ReturnReasonModelImpl) then) =
      __$$ReturnReasonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$ReturnReasonModelImplCopyWithImpl<$Res>
    extends _$ReturnReasonModelCopyWithImpl<$Res, _$ReturnReasonModelImpl>
    implements _$$ReturnReasonModelImplCopyWith<$Res> {
  __$$ReturnReasonModelImplCopyWithImpl(_$ReturnReasonModelImpl _value,
      $Res Function(_$ReturnReasonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ReturnReasonModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReturnReasonModelImpl implements _ReturnReasonModel {
  const _$ReturnReasonModelImpl({this.id = 0, this.name = ""});

  factory _$ReturnReasonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReturnReasonModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'ReturnReasonModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnReasonModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnReasonModelImplCopyWith<_$ReturnReasonModelImpl> get copyWith =>
      __$$ReturnReasonModelImplCopyWithImpl<_$ReturnReasonModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReturnReasonModelImplToJson(
      this,
    );
  }
}

abstract class _ReturnReasonModel implements ReturnReasonModel {
  const factory _ReturnReasonModel({final int id, final String name}) =
      _$ReturnReasonModelImpl;

  factory _ReturnReasonModel.fromJson(Map<String, dynamic> json) =
      _$ReturnReasonModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ReturnReasonModelImplCopyWith<_$ReturnReasonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) {
  return _CustomerModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: "national_number")
  String get nationalNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerModelCopyWith<CustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerModelCopyWith<$Res> {
  factory $CustomerModelCopyWith(
          CustomerModel value, $Res Function(CustomerModel) then) =
      _$CustomerModelCopyWithImpl<$Res, CustomerModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String mobile,
      @JsonKey(name: "national_number") String nationalNumber});
}

/// @nodoc
class _$CustomerModelCopyWithImpl<$Res, $Val extends CustomerModel>
    implements $CustomerModelCopyWith<$Res> {
  _$CustomerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mobile = null,
    Object? nationalNumber = null,
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
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      nationalNumber: null == nationalNumber
          ? _value.nationalNumber
          : nationalNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerModelImplCopyWith<$Res>
    implements $CustomerModelCopyWith<$Res> {
  factory _$$CustomerModelImplCopyWith(
          _$CustomerModelImpl value, $Res Function(_$CustomerModelImpl) then) =
      __$$CustomerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String mobile,
      @JsonKey(name: "national_number") String nationalNumber});
}

/// @nodoc
class __$$CustomerModelImplCopyWithImpl<$Res>
    extends _$CustomerModelCopyWithImpl<$Res, _$CustomerModelImpl>
    implements _$$CustomerModelImplCopyWith<$Res> {
  __$$CustomerModelImplCopyWithImpl(
      _$CustomerModelImpl _value, $Res Function(_$CustomerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? mobile = null,
    Object? nationalNumber = null,
  }) {
    return _then(_$CustomerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      nationalNumber: null == nationalNumber
          ? _value.nationalNumber
          : nationalNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerModelImpl implements _CustomerModel {
  const _$CustomerModelImpl(
      {this.id = 0,
      this.name = "",
      this.mobile = "",
      @JsonKey(name: "national_number") this.nationalNumber = ""});

  factory _$CustomerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String mobile;
  @override
  @JsonKey(name: "national_number")
  final String nationalNumber;

  @override
  String toString() {
    return 'CustomerModel(id: $id, name: $name, mobile: $mobile, nationalNumber: $nationalNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.nationalNumber, nationalNumber) ||
                other.nationalNumber == nationalNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, mobile, nationalNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerModelImplCopyWith<_$CustomerModelImpl> get copyWith =>
      __$$CustomerModelImplCopyWithImpl<_$CustomerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerModelImplToJson(
      this,
    );
  }
}

abstract class _CustomerModel implements CustomerModel {
  const factory _CustomerModel(
          {final int id,
          final String name,
          final String mobile,
          @JsonKey(name: "national_number") final String nationalNumber}) =
      _$CustomerModelImpl;

  factory _CustomerModel.fromJson(Map<String, dynamic> json) =
      _$CustomerModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get mobile;
  @override
  @JsonKey(name: "national_number")
  String get nationalNumber;
  @override
  @JsonKey(ignore: true)
  _$$CustomerModelImplCopyWith<_$CustomerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
