// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceDetailsModel _$ServiceDetailsModelFromJson(Map<String, dynamic> json) {
  return _ServiceDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<DetailsServiceModel> get details => throw _privateConstructorUsedError;
  List<VariantsModel> get variants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceDetailsModelCopyWith<ServiceDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDetailsModelCopyWith<$Res> {
  factory $ServiceDetailsModelCopyWith(
          ServiceDetailsModel value, $Res Function(ServiceDetailsModel) then) =
      _$ServiceDetailsModelCopyWithImpl<$Res, ServiceDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      double price,
      String country,
      String type,
      List<DetailsServiceModel> details,
      List<VariantsModel> variants});
}

/// @nodoc
class _$ServiceDetailsModelCopyWithImpl<$Res, $Val extends ServiceDetailsModel>
    implements $ServiceDetailsModelCopyWith<$Res> {
  _$ServiceDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? country = null,
    Object? type = null,
    Object? details = null,
    Object? variants = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailsServiceModel>,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceDetailsModelImplCopyWith<$Res>
    implements $ServiceDetailsModelCopyWith<$Res> {
  factory _$$ServiceDetailsModelImplCopyWith(_$ServiceDetailsModelImpl value,
          $Res Function(_$ServiceDetailsModelImpl) then) =
      __$$ServiceDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double price,
      String country,
      String type,
      List<DetailsServiceModel> details,
      List<VariantsModel> variants});
}

/// @nodoc
class __$$ServiceDetailsModelImplCopyWithImpl<$Res>
    extends _$ServiceDetailsModelCopyWithImpl<$Res, _$ServiceDetailsModelImpl>
    implements _$$ServiceDetailsModelImplCopyWith<$Res> {
  __$$ServiceDetailsModelImplCopyWithImpl(_$ServiceDetailsModelImpl _value,
      $Res Function(_$ServiceDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? country = null,
    Object? type = null,
    Object? details = null,
    Object? variants = null,
  }) {
    return _then(_$ServiceDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DetailsServiceModel>,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceDetailsModelImpl implements _ServiceDetailsModel {
  _$ServiceDetailsModelImpl(
      {this.id = 0,
      this.name = "",
      this.price = 0,
      this.country = "",
      this.type = "",
      final List<DetailsServiceModel> details = const [],
      final List<VariantsModel> variants = const []})
      : _details = details,
        _variants = variants;

  factory _$ServiceDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceDetailsModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final double price;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final String type;
  final List<DetailsServiceModel> _details;
  @override
  @JsonKey()
  List<DetailsServiceModel> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  final List<VariantsModel> _variants;
  @override
  @JsonKey()
  List<VariantsModel> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  String toString() {
    return 'ServiceDetailsModel(id: $id, name: $name, price: $price, country: $country, type: $type, details: $details, variants: $variants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      country,
      type,
      const DeepCollectionEquality().hash(_details),
      const DeepCollectionEquality().hash(_variants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceDetailsModelImplCopyWith<_$ServiceDetailsModelImpl> get copyWith =>
      __$$ServiceDetailsModelImplCopyWithImpl<_$ServiceDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceDetailsModel implements ServiceDetailsModel {
  factory _ServiceDetailsModel(
      {final int id,
      final String name,
      final double price,
      final String country,
      final String type,
      final List<DetailsServiceModel> details,
      final List<VariantsModel> variants}) = _$ServiceDetailsModelImpl;

  factory _ServiceDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ServiceDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get price;
  @override
  String get country;
  @override
  String get type;
  @override
  List<DetailsServiceModel> get details;
  @override
  List<VariantsModel> get variants;
  @override
  @JsonKey(ignore: true)
  _$$ServiceDetailsModelImplCopyWith<_$ServiceDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailsServiceModel _$DetailsServiceModelFromJson(Map<String, dynamic> json) {
  return _DetailsServiceModel.fromJson(json);
}

/// @nodoc
mixin _$DetailsServiceModel {
  String get name => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_name")
  String get currencyName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsServiceModelCopyWith<DetailsServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsServiceModelCopyWith<$Res> {
  factory $DetailsServiceModelCopyWith(
          DetailsServiceModel value, $Res Function(DetailsServiceModel) then) =
      _$DetailsServiceModelCopyWithImpl<$Res, DetailsServiceModel>;
  @useResult
  $Res call(
      {String name,
      String details,
      double price,
      @JsonKey(name: "currency_name") String currencyName});
}

/// @nodoc
class _$DetailsServiceModelCopyWithImpl<$Res, $Val extends DetailsServiceModel>
    implements $DetailsServiceModelCopyWith<$Res> {
  _$DetailsServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? details = null,
    Object? price = null,
    Object? currencyName = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currencyName: null == currencyName
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsServiceModelImplCopyWith<$Res>
    implements $DetailsServiceModelCopyWith<$Res> {
  factory _$$DetailsServiceModelImplCopyWith(_$DetailsServiceModelImpl value,
          $Res Function(_$DetailsServiceModelImpl) then) =
      __$$DetailsServiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String details,
      double price,
      @JsonKey(name: "currency_name") String currencyName});
}

/// @nodoc
class __$$DetailsServiceModelImplCopyWithImpl<$Res>
    extends _$DetailsServiceModelCopyWithImpl<$Res, _$DetailsServiceModelImpl>
    implements _$$DetailsServiceModelImplCopyWith<$Res> {
  __$$DetailsServiceModelImplCopyWithImpl(_$DetailsServiceModelImpl _value,
      $Res Function(_$DetailsServiceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? details = null,
    Object? price = null,
    Object? currencyName = null,
  }) {
    return _then(_$DetailsServiceModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currencyName: null == currencyName
          ? _value.currencyName
          : currencyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsServiceModelImpl implements _DetailsServiceModel {
  _$DetailsServiceModelImpl(
      {this.name = "",
      this.details = "",
      this.price = 0,
      @JsonKey(name: "currency_name") this.currencyName = ""});

  factory _$DetailsServiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsServiceModelImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String details;
  @override
  @JsonKey()
  final double price;
  @override
  @JsonKey(name: "currency_name")
  final String currencyName;

  @override
  String toString() {
    return 'DetailsServiceModel(name: $name, details: $details, price: $price, currencyName: $currencyName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsServiceModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currencyName, currencyName) ||
                other.currencyName == currencyName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, details, price, currencyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsServiceModelImplCopyWith<_$DetailsServiceModelImpl> get copyWith =>
      __$$DetailsServiceModelImplCopyWithImpl<_$DetailsServiceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsServiceModelImplToJson(
      this,
    );
  }
}

abstract class _DetailsServiceModel implements DetailsServiceModel {
  factory _DetailsServiceModel(
          {final String name,
          final String details,
          final double price,
          @JsonKey(name: "currency_name") final String currencyName}) =
      _$DetailsServiceModelImpl;

  factory _DetailsServiceModel.fromJson(Map<String, dynamic> json) =
      _$DetailsServiceModelImpl.fromJson;

  @override
  String get name;
  @override
  String get details;
  @override
  double get price;
  @override
  @JsonKey(name: "currency_name")
  String get currencyName;
  @override
  @JsonKey(ignore: true)
  _$$DetailsServiceModelImplCopyWith<_$DetailsServiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantsModel _$VariantsModelFromJson(Map<String, dynamic> json) {
  return _VariantsModel.fromJson(json);
}

/// @nodoc
mixin _$VariantsModel {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "attribute_id")
  int get attributeId => throw _privateConstructorUsedError;
  List<VariantValueModel> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantsModelCopyWith<VariantsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantsModelCopyWith<$Res> {
  factory $VariantsModelCopyWith(
          VariantsModel value, $Res Function(VariantsModel) then) =
      _$VariantsModelCopyWithImpl<$Res, VariantsModel>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "attribute_id") int attributeId,
      List<VariantValueModel> values});
}

/// @nodoc
class _$VariantsModelCopyWithImpl<$Res, $Val extends VariantsModel>
    implements $VariantsModelCopyWith<$Res> {
  _$VariantsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? attributeId = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attributeId: null == attributeId
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<VariantValueModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariantsModelImplCopyWith<$Res>
    implements $VariantsModelCopyWith<$Res> {
  factory _$$VariantsModelImplCopyWith(
          _$VariantsModelImpl value, $Res Function(_$VariantsModelImpl) then) =
      __$$VariantsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "attribute_id") int attributeId,
      List<VariantValueModel> values});
}

/// @nodoc
class __$$VariantsModelImplCopyWithImpl<$Res>
    extends _$VariantsModelCopyWithImpl<$Res, _$VariantsModelImpl>
    implements _$$VariantsModelImplCopyWith<$Res> {
  __$$VariantsModelImplCopyWithImpl(
      _$VariantsModelImpl _value, $Res Function(_$VariantsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? attributeId = null,
    Object? values = null,
  }) {
    return _then(_$VariantsModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attributeId: null == attributeId
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<VariantValueModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariantsModelImpl implements _VariantsModel {
  _$VariantsModelImpl(
      {this.name = "",
      @JsonKey(name: "attribute_id") this.attributeId = 0,
      final List<VariantValueModel> values = const []})
      : _values = values;

  factory _$VariantsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantsModelImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: "attribute_id")
  final int attributeId;
  final List<VariantValueModel> _values;
  @override
  @JsonKey()
  List<VariantValueModel> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'VariantsModel(name: $name, attributeId: $attributeId, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantsModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, attributeId,
      const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantsModelImplCopyWith<_$VariantsModelImpl> get copyWith =>
      __$$VariantsModelImplCopyWithImpl<_$VariantsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariantsModelImplToJson(
      this,
    );
  }
}

abstract class _VariantsModel implements VariantsModel {
  factory _VariantsModel(
      {final String name,
      @JsonKey(name: "attribute_id") final int attributeId,
      final List<VariantValueModel> values}) = _$VariantsModelImpl;

  factory _VariantsModel.fromJson(Map<String, dynamic> json) =
      _$VariantsModelImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: "attribute_id")
  int get attributeId;
  @override
  List<VariantValueModel> get values;
  @override
  @JsonKey(ignore: true)
  _$$VariantsModelImplCopyWith<_$VariantsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantValueModel _$VariantValueModelFromJson(Map<String, dynamic> json) {
  return _VariantValueModel.fromJson(json);
}

/// @nodoc
mixin _$VariantValueModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "attribute_id")
  int get attributeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantValueModelCopyWith<VariantValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantValueModelCopyWith<$Res> {
  factory $VariantValueModelCopyWith(
          VariantValueModel value, $Res Function(VariantValueModel) then) =
      _$VariantValueModelCopyWithImpl<$Res, VariantValueModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "attribute_id") int attributeId,
      String name,
      double price});
}

/// @nodoc
class _$VariantValueModelCopyWithImpl<$Res, $Val extends VariantValueModel>
    implements $VariantValueModelCopyWith<$Res> {
  _$VariantValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributeId = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributeId: null == attributeId
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariantValueModelImplCopyWith<$Res>
    implements $VariantValueModelCopyWith<$Res> {
  factory _$$VariantValueModelImplCopyWith(_$VariantValueModelImpl value,
          $Res Function(_$VariantValueModelImpl) then) =
      __$$VariantValueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "attribute_id") int attributeId,
      String name,
      double price});
}

/// @nodoc
class __$$VariantValueModelImplCopyWithImpl<$Res>
    extends _$VariantValueModelCopyWithImpl<$Res, _$VariantValueModelImpl>
    implements _$$VariantValueModelImplCopyWith<$Res> {
  __$$VariantValueModelImplCopyWithImpl(_$VariantValueModelImpl _value,
      $Res Function(_$VariantValueModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributeId = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$VariantValueModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributeId: null == attributeId
          ? _value.attributeId
          : attributeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariantValueModelImpl implements _VariantValueModel {
  const _$VariantValueModelImpl(
      {this.id = 0,
      @JsonKey(name: "attribute_id") this.attributeId = 0,
      this.name = "",
      this.price = 0});

  factory _$VariantValueModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantValueModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: "attribute_id")
  final int attributeId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final double price;

  @override
  String toString() {
    return 'VariantValueModel(id: $id, attributeId: $attributeId, name: $name, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantValueModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributeId, name, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantValueModelImplCopyWith<_$VariantValueModelImpl> get copyWith =>
      __$$VariantValueModelImplCopyWithImpl<_$VariantValueModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariantValueModelImplToJson(
      this,
    );
  }
}

abstract class _VariantValueModel implements VariantValueModel {
  const factory _VariantValueModel(
      {final int id,
      @JsonKey(name: "attribute_id") final int attributeId,
      final String name,
      final double price}) = _$VariantValueModelImpl;

  factory _VariantValueModel.fromJson(Map<String, dynamic> json) =
      _$VariantValueModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "attribute_id")
  int get attributeId;
  @override
  String get name;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$VariantValueModelImplCopyWith<_$VariantValueModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
