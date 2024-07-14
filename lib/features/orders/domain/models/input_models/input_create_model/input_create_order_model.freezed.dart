// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_create_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputCreateOrderModel _$InputCreateOrderModelFromJson(
    Map<String, dynamic> json) {
  return _InputCreateOrderModel.fromJson(json);
}

/// @nodoc
mixin _$InputCreateOrderModel {
  @JsonKey(name: "partner_id")
  int get partnerId => throw _privateConstructorUsedError;
  List<TravelerInputOrderModel> get travelers =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "service_id")
  int get serviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "variant_ids")
  List<int> get variantIds => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "total_paid")
  double get totalPaid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputCreateOrderModelCopyWith<InputCreateOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputCreateOrderModelCopyWith<$Res> {
  factory $InputCreateOrderModelCopyWith(InputCreateOrderModel value,
          $Res Function(InputCreateOrderModel) then) =
      _$InputCreateOrderModelCopyWithImpl<$Res, InputCreateOrderModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "partner_id") int partnerId,
      List<TravelerInputOrderModel> travelers,
      @JsonKey(name: "service_id") int serviceId,
      @JsonKey(name: "variant_ids") List<int> variantIds,
      double price,
      int currency,
      @JsonKey(name: "total_paid") double totalPaid});
}

/// @nodoc
class _$InputCreateOrderModelCopyWithImpl<$Res,
        $Val extends InputCreateOrderModel>
    implements $InputCreateOrderModelCopyWith<$Res> {
  _$InputCreateOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partnerId = null,
    Object? travelers = null,
    Object? serviceId = null,
    Object? variantIds = null,
    Object? price = null,
    Object? currency = null,
    Object? totalPaid = null,
  }) {
    return _then(_value.copyWith(
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as int,
      travelers: null == travelers
          ? _value.travelers
          : travelers // ignore: cast_nullable_to_non_nullable
              as List<TravelerInputOrderModel>,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      variantIds: null == variantIds
          ? _value.variantIds
          : variantIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as int,
      totalPaid: null == totalPaid
          ? _value.totalPaid
          : totalPaid // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputCreateOrderModelImplCopyWith<$Res>
    implements $InputCreateOrderModelCopyWith<$Res> {
  factory _$$InputCreateOrderModelImplCopyWith(
          _$InputCreateOrderModelImpl value,
          $Res Function(_$InputCreateOrderModelImpl) then) =
      __$$InputCreateOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "partner_id") int partnerId,
      List<TravelerInputOrderModel> travelers,
      @JsonKey(name: "service_id") int serviceId,
      @JsonKey(name: "variant_ids") List<int> variantIds,
      double price,
      int currency,
      @JsonKey(name: "total_paid") double totalPaid});
}

/// @nodoc
class __$$InputCreateOrderModelImplCopyWithImpl<$Res>
    extends _$InputCreateOrderModelCopyWithImpl<$Res,
        _$InputCreateOrderModelImpl>
    implements _$$InputCreateOrderModelImplCopyWith<$Res> {
  __$$InputCreateOrderModelImplCopyWithImpl(_$InputCreateOrderModelImpl _value,
      $Res Function(_$InputCreateOrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partnerId = null,
    Object? travelers = null,
    Object? serviceId = null,
    Object? variantIds = null,
    Object? price = null,
    Object? currency = null,
    Object? totalPaid = null,
  }) {
    return _then(_$InputCreateOrderModelImpl(
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as int,
      travelers: null == travelers
          ? _value._travelers
          : travelers // ignore: cast_nullable_to_non_nullable
              as List<TravelerInputOrderModel>,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
      variantIds: null == variantIds
          ? _value._variantIds
          : variantIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as int,
      totalPaid: null == totalPaid
          ? _value.totalPaid
          : totalPaid // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputCreateOrderModelImpl implements _InputCreateOrderModel {
  _$InputCreateOrderModelImpl(
      {@JsonKey(name: "partner_id") this.partnerId = 0,
      final List<TravelerInputOrderModel> travelers = const [],
      @JsonKey(name: "service_id") this.serviceId = 0,
      @JsonKey(name: "variant_ids") final List<int> variantIds = const [],
      this.price = 0,
      this.currency = 0,
      @JsonKey(name: "total_paid") this.totalPaid = 0})
      : _travelers = travelers,
        _variantIds = variantIds;

  factory _$InputCreateOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputCreateOrderModelImplFromJson(json);

  @override
  @JsonKey(name: "partner_id")
  final int partnerId;
  final List<TravelerInputOrderModel> _travelers;
  @override
  @JsonKey()
  List<TravelerInputOrderModel> get travelers {
    if (_travelers is EqualUnmodifiableListView) return _travelers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_travelers);
  }

  @override
  @JsonKey(name: "service_id")
  final int serviceId;
  final List<int> _variantIds;
  @override
  @JsonKey(name: "variant_ids")
  List<int> get variantIds {
    if (_variantIds is EqualUnmodifiableListView) return _variantIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variantIds);
  }

  @override
  @JsonKey()
  final double price;
  @override
  @JsonKey()
  final int currency;
  @override
  @JsonKey(name: "total_paid")
  final double totalPaid;

  @override
  String toString() {
    return 'InputCreateOrderModel(partnerId: $partnerId, travelers: $travelers, serviceId: $serviceId, variantIds: $variantIds, price: $price, currency: $currency, totalPaid: $totalPaid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputCreateOrderModelImpl &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId) &&
            const DeepCollectionEquality()
                .equals(other._travelers, _travelers) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            const DeepCollectionEquality()
                .equals(other._variantIds, _variantIds) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.totalPaid, totalPaid) ||
                other.totalPaid == totalPaid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      partnerId,
      const DeepCollectionEquality().hash(_travelers),
      serviceId,
      const DeepCollectionEquality().hash(_variantIds),
      price,
      currency,
      totalPaid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputCreateOrderModelImplCopyWith<_$InputCreateOrderModelImpl>
      get copyWith => __$$InputCreateOrderModelImplCopyWithImpl<
          _$InputCreateOrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputCreateOrderModelImplToJson(
      this,
    );
  }
}

abstract class _InputCreateOrderModel implements InputCreateOrderModel {
  factory _InputCreateOrderModel(
          {@JsonKey(name: "partner_id") final int partnerId,
          final List<TravelerInputOrderModel> travelers,
          @JsonKey(name: "service_id") final int serviceId,
          @JsonKey(name: "variant_ids") final List<int> variantIds,
          final double price,
          final int currency,
          @JsonKey(name: "total_paid") final double totalPaid}) =
      _$InputCreateOrderModelImpl;

  factory _InputCreateOrderModel.fromJson(Map<String, dynamic> json) =
      _$InputCreateOrderModelImpl.fromJson;

  @override
  @JsonKey(name: "partner_id")
  int get partnerId;
  @override
  List<TravelerInputOrderModel> get travelers;
  @override
  @JsonKey(name: "service_id")
  int get serviceId;
  @override
  @JsonKey(name: "variant_ids")
  List<int> get variantIds;
  @override
  double get price;
  @override
  int get currency;
  @override
  @JsonKey(name: "total_paid")
  double get totalPaid;
  @override
  @JsonKey(ignore: true)
  _$$InputCreateOrderModelImplCopyWith<_$InputCreateOrderModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TravelerInputOrderModel _$TravelerInputOrderModelFromJson(
    Map<String, dynamic> json) {
  return _TravelerInputOrderModel.fromJson(json);
}

/// @nodoc
mixin _$TravelerInputOrderModel {
  @JsonKey(name: "travel_id")
  int get travelId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelerInputOrderModelCopyWith<TravelerInputOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelerInputOrderModelCopyWith<$Res> {
  factory $TravelerInputOrderModelCopyWith(TravelerInputOrderModel value,
          $Res Function(TravelerInputOrderModel) then) =
      _$TravelerInputOrderModelCopyWithImpl<$Res, TravelerInputOrderModel>;
  @useResult
  $Res call({@JsonKey(name: "travel_id") int travelId});
}

/// @nodoc
class _$TravelerInputOrderModelCopyWithImpl<$Res,
        $Val extends TravelerInputOrderModel>
    implements $TravelerInputOrderModelCopyWith<$Res> {
  _$TravelerInputOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travelId = null,
  }) {
    return _then(_value.copyWith(
      travelId: null == travelId
          ? _value.travelId
          : travelId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelerInputOrderModelImplCopyWith<$Res>
    implements $TravelerInputOrderModelCopyWith<$Res> {
  factory _$$TravelerInputOrderModelImplCopyWith(
          _$TravelerInputOrderModelImpl value,
          $Res Function(_$TravelerInputOrderModelImpl) then) =
      __$$TravelerInputOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "travel_id") int travelId});
}

/// @nodoc
class __$$TravelerInputOrderModelImplCopyWithImpl<$Res>
    extends _$TravelerInputOrderModelCopyWithImpl<$Res,
        _$TravelerInputOrderModelImpl>
    implements _$$TravelerInputOrderModelImplCopyWith<$Res> {
  __$$TravelerInputOrderModelImplCopyWithImpl(
      _$TravelerInputOrderModelImpl _value,
      $Res Function(_$TravelerInputOrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travelId = null,
  }) {
    return _then(_$TravelerInputOrderModelImpl(
      travelId: null == travelId
          ? _value.travelId
          : travelId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelerInputOrderModelImpl implements _TravelerInputOrderModel {
  const _$TravelerInputOrderModelImpl(
      {@JsonKey(name: "travel_id") this.travelId = 0});

  factory _$TravelerInputOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelerInputOrderModelImplFromJson(json);

  @override
  @JsonKey(name: "travel_id")
  final int travelId;

  @override
  String toString() {
    return 'TravelerInputOrderModel(travelId: $travelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelerInputOrderModelImpl &&
            (identical(other.travelId, travelId) ||
                other.travelId == travelId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, travelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelerInputOrderModelImplCopyWith<_$TravelerInputOrderModelImpl>
      get copyWith => __$$TravelerInputOrderModelImplCopyWithImpl<
          _$TravelerInputOrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelerInputOrderModelImplToJson(
      this,
    );
  }
}

abstract class _TravelerInputOrderModel implements TravelerInputOrderModel {
  const factory _TravelerInputOrderModel(
          {@JsonKey(name: "travel_id") final int travelId}) =
      _$TravelerInputOrderModelImpl;

  factory _TravelerInputOrderModel.fromJson(Map<String, dynamic> json) =
      _$TravelerInputOrderModelImpl.fromJson;

  @override
  @JsonKey(name: "travel_id")
  int get travelId;
  @override
  @JsonKey(ignore: true)
  _$$TravelerInputOrderModelImplCopyWith<_$TravelerInputOrderModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
