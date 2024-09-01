// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactDetailsModel _$ContactDetailsModelFromJson(Map<String, dynamic> json) {
  return _ContactDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ContactDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "is_lead")
  bool get isLead => throw _privateConstructorUsedError;
  @JsonKey(name: "whatsapp_number")
  String get whatsappNumber => throw _privateConstructorUsedError;
  bool get vip => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get street2 => throw _privateConstructorUsedError;
  String get reference => throw _privateConstructorUsedError;
  @JsonKey(name: "office")
  StaticModel get office => throw _privateConstructorUsedError;
  @JsonKey(name: "state_id")
  StaticModel get state => throw _privateConstructorUsedError;
  @JsonKey(name: "country_id")
  StaticModel get country => throw _privateConstructorUsedError; //Basic info
  @JsonKey(name: "identity_father")
  String get identityFather => throw _privateConstructorUsedError;
  @JsonKey(name: "identity_mother")
  String get identityMother => throw _privateConstructorUsedError;
  @JsonKey(name: "identity_date_of_birthday")
  String get identityDateOfBirthday => throw _privateConstructorUsedError;
  @JsonKey(name: "identity_place_of_birthday")
  String get identityPlaceOfBirthday => throw _privateConstructorUsedError;
  @JsonKey(name: "identity_national_number")
  String get identityNationalNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "identity_surname")
  String get identitySurname => throw _privateConstructorUsedError;
  @JsonKey(name: "identity_gender")
  String get identityGender => throw _privateConstructorUsedError; //Passport
  @JsonKey(name: "passport")
  List<PassportModel> get passport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactDetailsModelCopyWith<ContactDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDetailsModelCopyWith<$Res> {
  factory $ContactDetailsModelCopyWith(
          ContactDetailsModel value, $Res Function(ContactDetailsModel) then) =
      _$ContactDetailsModelCopyWithImpl<$Res, ContactDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String type,
      String phone,
      @JsonKey(name: "is_lead") bool isLead,
      @JsonKey(name: "whatsapp_number") String whatsappNumber,
      bool vip,
      String city,
      String street,
      String street2,
      String reference,
      @JsonKey(name: "office") StaticModel office,
      @JsonKey(name: "state_id") StaticModel state,
      @JsonKey(name: "country_id") StaticModel country,
      @JsonKey(name: "identity_father") String identityFather,
      @JsonKey(name: "identity_mother") String identityMother,
      @JsonKey(name: "identity_date_of_birthday") String identityDateOfBirthday,
      @JsonKey(name: "identity_place_of_birthday")
      String identityPlaceOfBirthday,
      @JsonKey(name: "identity_national_number") String identityNationalNumber,
      @JsonKey(name: "identity_surname") String identitySurname,
      @JsonKey(name: "identity_gender") String identityGender,
      @JsonKey(name: "passport") List<PassportModel> passport});

  $StaticModelCopyWith<$Res> get office;
  $StaticModelCopyWith<$Res> get state;
  $StaticModelCopyWith<$Res> get country;
}

/// @nodoc
class _$ContactDetailsModelCopyWithImpl<$Res, $Val extends ContactDetailsModel>
    implements $ContactDetailsModelCopyWith<$Res> {
  _$ContactDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? phone = null,
    Object? isLead = null,
    Object? whatsappNumber = null,
    Object? vip = null,
    Object? city = null,
    Object? street = null,
    Object? street2 = null,
    Object? reference = null,
    Object? office = null,
    Object? state = null,
    Object? country = null,
    Object? identityFather = null,
    Object? identityMother = null,
    Object? identityDateOfBirthday = null,
    Object? identityPlaceOfBirthday = null,
    Object? identityNationalNumber = null,
    Object? identitySurname = null,
    Object? identityGender = null,
    Object? passport = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isLead: null == isLead
          ? _value.isLead
          : isLead // ignore: cast_nullable_to_non_nullable
              as bool,
      whatsappNumber: null == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vip: null == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as bool,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      street2: null == street2
          ? _value.street2
          : street2 // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      office: null == office
          ? _value.office
          : office // ignore: cast_nullable_to_non_nullable
              as StaticModel,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StaticModel,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as StaticModel,
      identityFather: null == identityFather
          ? _value.identityFather
          : identityFather // ignore: cast_nullable_to_non_nullable
              as String,
      identityMother: null == identityMother
          ? _value.identityMother
          : identityMother // ignore: cast_nullable_to_non_nullable
              as String,
      identityDateOfBirthday: null == identityDateOfBirthday
          ? _value.identityDateOfBirthday
          : identityDateOfBirthday // ignore: cast_nullable_to_non_nullable
              as String,
      identityPlaceOfBirthday: null == identityPlaceOfBirthday
          ? _value.identityPlaceOfBirthday
          : identityPlaceOfBirthday // ignore: cast_nullable_to_non_nullable
              as String,
      identityNationalNumber: null == identityNationalNumber
          ? _value.identityNationalNumber
          : identityNationalNumber // ignore: cast_nullable_to_non_nullable
              as String,
      identitySurname: null == identitySurname
          ? _value.identitySurname
          : identitySurname // ignore: cast_nullable_to_non_nullable
              as String,
      identityGender: null == identityGender
          ? _value.identityGender
          : identityGender // ignore: cast_nullable_to_non_nullable
              as String,
      passport: null == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as List<PassportModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StaticModelCopyWith<$Res> get office {
    return $StaticModelCopyWith<$Res>(_value.office, (value) {
      return _then(_value.copyWith(office: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StaticModelCopyWith<$Res> get state {
    return $StaticModelCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StaticModelCopyWith<$Res> get country {
    return $StaticModelCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContactDetailsModelImplCopyWith<$Res>
    implements $ContactDetailsModelCopyWith<$Res> {
  factory _$$ContactDetailsModelImplCopyWith(_$ContactDetailsModelImpl value,
          $Res Function(_$ContactDetailsModelImpl) then) =
      __$$ContactDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String type,
      String phone,
      @JsonKey(name: "is_lead") bool isLead,
      @JsonKey(name: "whatsapp_number") String whatsappNumber,
      bool vip,
      String city,
      String street,
      String street2,
      String reference,
      @JsonKey(name: "office") StaticModel office,
      @JsonKey(name: "state_id") StaticModel state,
      @JsonKey(name: "country_id") StaticModel country,
      @JsonKey(name: "identity_father") String identityFather,
      @JsonKey(name: "identity_mother") String identityMother,
      @JsonKey(name: "identity_date_of_birthday") String identityDateOfBirthday,
      @JsonKey(name: "identity_place_of_birthday")
      String identityPlaceOfBirthday,
      @JsonKey(name: "identity_national_number") String identityNationalNumber,
      @JsonKey(name: "identity_surname") String identitySurname,
      @JsonKey(name: "identity_gender") String identityGender,
      @JsonKey(name: "passport") List<PassportModel> passport});

  @override
  $StaticModelCopyWith<$Res> get office;
  @override
  $StaticModelCopyWith<$Res> get state;
  @override
  $StaticModelCopyWith<$Res> get country;
}

/// @nodoc
class __$$ContactDetailsModelImplCopyWithImpl<$Res>
    extends _$ContactDetailsModelCopyWithImpl<$Res, _$ContactDetailsModelImpl>
    implements _$$ContactDetailsModelImplCopyWith<$Res> {
  __$$ContactDetailsModelImplCopyWithImpl(_$ContactDetailsModelImpl _value,
      $Res Function(_$ContactDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? phone = null,
    Object? isLead = null,
    Object? whatsappNumber = null,
    Object? vip = null,
    Object? city = null,
    Object? street = null,
    Object? street2 = null,
    Object? reference = null,
    Object? office = null,
    Object? state = null,
    Object? country = null,
    Object? identityFather = null,
    Object? identityMother = null,
    Object? identityDateOfBirthday = null,
    Object? identityPlaceOfBirthday = null,
    Object? identityNationalNumber = null,
    Object? identitySurname = null,
    Object? identityGender = null,
    Object? passport = null,
  }) {
    return _then(_$ContactDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isLead: null == isLead
          ? _value.isLead
          : isLead // ignore: cast_nullable_to_non_nullable
              as bool,
      whatsappNumber: null == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vip: null == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as bool,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      street2: null == street2
          ? _value.street2
          : street2 // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      office: null == office
          ? _value.office
          : office // ignore: cast_nullable_to_non_nullable
              as StaticModel,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StaticModel,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as StaticModel,
      identityFather: null == identityFather
          ? _value.identityFather
          : identityFather // ignore: cast_nullable_to_non_nullable
              as String,
      identityMother: null == identityMother
          ? _value.identityMother
          : identityMother // ignore: cast_nullable_to_non_nullable
              as String,
      identityDateOfBirthday: null == identityDateOfBirthday
          ? _value.identityDateOfBirthday
          : identityDateOfBirthday // ignore: cast_nullable_to_non_nullable
              as String,
      identityPlaceOfBirthday: null == identityPlaceOfBirthday
          ? _value.identityPlaceOfBirthday
          : identityPlaceOfBirthday // ignore: cast_nullable_to_non_nullable
              as String,
      identityNationalNumber: null == identityNationalNumber
          ? _value.identityNationalNumber
          : identityNationalNumber // ignore: cast_nullable_to_non_nullable
              as String,
      identitySurname: null == identitySurname
          ? _value.identitySurname
          : identitySurname // ignore: cast_nullable_to_non_nullable
              as String,
      identityGender: null == identityGender
          ? _value.identityGender
          : identityGender // ignore: cast_nullable_to_non_nullable
              as String,
      passport: null == passport
          ? _value._passport
          : passport // ignore: cast_nullable_to_non_nullable
              as List<PassportModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactDetailsModelImpl implements _ContactDetailsModel {
  _$ContactDetailsModelImpl(
      {this.id = 0,
      this.name = "",
      this.type = "",
      this.phone = "",
      @JsonKey(name: "is_lead") this.isLead = false,
      @JsonKey(name: "whatsapp_number") this.whatsappNumber = "",
      this.vip = false,
      this.city = "",
      this.street = "",
      this.street2 = "",
      this.reference = "",
      @JsonKey(name: "office") this.office = const StaticModel(),
      @JsonKey(name: "state_id") this.state = const StaticModel(),
      @JsonKey(name: "country_id") this.country = const StaticModel(),
      @JsonKey(name: "identity_father") this.identityFather = "",
      @JsonKey(name: "identity_mother") this.identityMother = "",
      @JsonKey(name: "identity_date_of_birthday")
      this.identityDateOfBirthday = "",
      @JsonKey(name: "identity_place_of_birthday")
      this.identityPlaceOfBirthday = "",
      @JsonKey(name: "identity_national_number")
      this.identityNationalNumber = "",
      @JsonKey(name: "identity_surname") this.identitySurname = "",
      @JsonKey(name: "identity_gender") this.identityGender = "",
      @JsonKey(name: "passport") final List<PassportModel> passport = const []})
      : _passport = passport;

  factory _$ContactDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactDetailsModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey(name: "is_lead")
  final bool isLead;
  @override
  @JsonKey(name: "whatsapp_number")
  final String whatsappNumber;
  @override
  @JsonKey()
  final bool vip;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String street;
  @override
  @JsonKey()
  final String street2;
  @override
  @JsonKey()
  final String reference;
  @override
  @JsonKey(name: "office")
  final StaticModel office;
  @override
  @JsonKey(name: "state_id")
  final StaticModel state;
  @override
  @JsonKey(name: "country_id")
  final StaticModel country;
//Basic info
  @override
  @JsonKey(name: "identity_father")
  final String identityFather;
  @override
  @JsonKey(name: "identity_mother")
  final String identityMother;
  @override
  @JsonKey(name: "identity_date_of_birthday")
  final String identityDateOfBirthday;
  @override
  @JsonKey(name: "identity_place_of_birthday")
  final String identityPlaceOfBirthday;
  @override
  @JsonKey(name: "identity_national_number")
  final String identityNationalNumber;
  @override
  @JsonKey(name: "identity_surname")
  final String identitySurname;
  @override
  @JsonKey(name: "identity_gender")
  final String identityGender;
//Passport
  final List<PassportModel> _passport;
//Passport
  @override
  @JsonKey(name: "passport")
  List<PassportModel> get passport {
    if (_passport is EqualUnmodifiableListView) return _passport;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_passport);
  }

  @override
  String toString() {
    return 'ContactDetailsModel(id: $id, name: $name, type: $type, phone: $phone, isLead: $isLead, whatsappNumber: $whatsappNumber, vip: $vip, city: $city, street: $street, street2: $street2, reference: $reference, office: $office, state: $state, country: $country, identityFather: $identityFather, identityMother: $identityMother, identityDateOfBirthday: $identityDateOfBirthday, identityPlaceOfBirthday: $identityPlaceOfBirthday, identityNationalNumber: $identityNationalNumber, identitySurname: $identitySurname, identityGender: $identityGender, passport: $passport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isLead, isLead) || other.isLead == isLead) &&
            (identical(other.whatsappNumber, whatsappNumber) ||
                other.whatsappNumber == whatsappNumber) &&
            (identical(other.vip, vip) || other.vip == vip) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.street2, street2) || other.street2 == street2) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.office, office) || other.office == office) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.identityFather, identityFather) ||
                other.identityFather == identityFather) &&
            (identical(other.identityMother, identityMother) ||
                other.identityMother == identityMother) &&
            (identical(other.identityDateOfBirthday, identityDateOfBirthday) ||
                other.identityDateOfBirthday == identityDateOfBirthday) &&
            (identical(
                    other.identityPlaceOfBirthday, identityPlaceOfBirthday) ||
                other.identityPlaceOfBirthday == identityPlaceOfBirthday) &&
            (identical(other.identityNationalNumber, identityNationalNumber) ||
                other.identityNationalNumber == identityNationalNumber) &&
            (identical(other.identitySurname, identitySurname) ||
                other.identitySurname == identitySurname) &&
            (identical(other.identityGender, identityGender) ||
                other.identityGender == identityGender) &&
            const DeepCollectionEquality().equals(other._passport, _passport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        type,
        phone,
        isLead,
        whatsappNumber,
        vip,
        city,
        street,
        street2,
        reference,
        office,
        state,
        country,
        identityFather,
        identityMother,
        identityDateOfBirthday,
        identityPlaceOfBirthday,
        identityNationalNumber,
        identitySurname,
        identityGender,
        const DeepCollectionEquality().hash(_passport)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactDetailsModelImplCopyWith<_$ContactDetailsModelImpl> get copyWith =>
      __$$ContactDetailsModelImplCopyWithImpl<_$ContactDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ContactDetailsModel implements ContactDetailsModel {
  factory _ContactDetailsModel(
          {final int id,
          final String name,
          final String type,
          final String phone,
          @JsonKey(name: "is_lead") final bool isLead,
          @JsonKey(name: "whatsapp_number") final String whatsappNumber,
          final bool vip,
          final String city,
          final String street,
          final String street2,
          final String reference,
          @JsonKey(name: "office") final StaticModel office,
          @JsonKey(name: "state_id") final StaticModel state,
          @JsonKey(name: "country_id") final StaticModel country,
          @JsonKey(name: "identity_father") final String identityFather,
          @JsonKey(name: "identity_mother") final String identityMother,
          @JsonKey(name: "identity_date_of_birthday")
          final String identityDateOfBirthday,
          @JsonKey(name: "identity_place_of_birthday")
          final String identityPlaceOfBirthday,
          @JsonKey(name: "identity_national_number")
          final String identityNationalNumber,
          @JsonKey(name: "identity_surname") final String identitySurname,
          @JsonKey(name: "identity_gender") final String identityGender,
          @JsonKey(name: "passport") final List<PassportModel> passport}) =
      _$ContactDetailsModelImpl;

  factory _ContactDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ContactDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get phone;
  @override
  @JsonKey(name: "is_lead")
  bool get isLead;
  @override
  @JsonKey(name: "whatsapp_number")
  String get whatsappNumber;
  @override
  bool get vip;
  @override
  String get city;
  @override
  String get street;
  @override
  String get street2;
  @override
  String get reference;
  @override
  @JsonKey(name: "office")
  StaticModel get office;
  @override
  @JsonKey(name: "state_id")
  StaticModel get state;
  @override
  @JsonKey(name: "country_id")
  StaticModel get country;
  @override //Basic info
  @JsonKey(name: "identity_father")
  String get identityFather;
  @override
  @JsonKey(name: "identity_mother")
  String get identityMother;
  @override
  @JsonKey(name: "identity_date_of_birthday")
  String get identityDateOfBirthday;
  @override
  @JsonKey(name: "identity_place_of_birthday")
  String get identityPlaceOfBirthday;
  @override
  @JsonKey(name: "identity_national_number")
  String get identityNationalNumber;
  @override
  @JsonKey(name: "identity_surname")
  String get identitySurname;
  @override
  @JsonKey(name: "identity_gender")
  String get identityGender;
  @override //Passport
  @JsonKey(name: "passport")
  List<PassportModel> get passport;
  @override
  @JsonKey(ignore: true)
  _$$ContactDetailsModelImplCopyWith<_$ContactDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PassportModel _$PassportModelFromJson(Map<String, dynamic> json) {
  return _PassportModel.fromJson(json);
}

/// @nodoc
mixin _$PassportModel {
  @JsonKey(name: "passport_name")
  String get passportName => throw _privateConstructorUsedError;
  @JsonKey(name: "e_passport_name")
  String get ePassportName => throw _privateConstructorUsedError;
  @JsonKey(name: "passport_surname")
  String get passportSurname => throw _privateConstructorUsedError;
  @JsonKey(name: "e_passport_surname")
  String get ePassportSurname => throw _privateConstructorUsedError;
  @JsonKey(name: "passport_mother_name")
  String get passportMotherName => throw _privateConstructorUsedError;
  @JsonKey(name: "e_passport_mother_name")
  String get ePassportMotherName => throw _privateConstructorUsedError;
  @JsonKey(name: "passport_father_name")
  String get passportFatherName => throw _privateConstructorUsedError;
  @JsonKey(name: "e_passport_father_name")
  String get ePassportFatherName => throw _privateConstructorUsedError;
  @JsonKey(name: "passport_date_of_birthday")
  String get passportDateOfBirthday => throw _privateConstructorUsedError;
  @JsonKey(name: "e_passport_date_of_birthday")
  String get ePassportDateOfBirthday => throw _privateConstructorUsedError;
  @JsonKey(name: "passport_place_of_birthday")
  String get passportPlaceOfBirthday => throw _privateConstructorUsedError;
  @JsonKey(name: "e_passport_place_of_birthday")
  String get ePassportPlaceOfBirthday => throw _privateConstructorUsedError;
  @JsonKey(name: "passport_gender")
  String get passportGender => throw _privateConstructorUsedError;
  @JsonKey(name: "e_passport_gender")
  String get ePassportGender => throw _privateConstructorUsedError;
  @JsonKey(name: "passport_number_of_passport")
  String get passportNumberOfPassport => throw _privateConstructorUsedError;
  @JsonKey(name: "e_passport_number_of_passport")
  String get ePassportNumberOfPassport => throw _privateConstructorUsedError;
  @JsonKey(name: "passport_release_date")
  String get passportReleaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "e_passport_release_date")
  String get ePassportReleaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "passport_place_of_issue")
  String get passportPlaceOfIssue => throw _privateConstructorUsedError;
  @JsonKey(name: "e_passport_place_of_issue")
  String get ePassportPlaceOfIssue => throw _privateConstructorUsedError;
  @JsonKey(name: "passport_expiration_date")
  String get passportExpirationDate => throw _privateConstructorUsedError;
  @JsonKey(name: "e_passport_expiration_date")
  String get ePassportExpirationDate => throw _privateConstructorUsedError;
  @JsonKey(name: "passport_national_number")
  String get passportNationalNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "e_passport_national_number")
  String get ePassportNationalNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "passport_job")
  String get passportJob => throw _privateConstructorUsedError;
  @JsonKey(name: "e_passport_job")
  String get ePassportJob => throw _privateConstructorUsedError;
  @JsonKey(name: "passport_file")
  String get passportFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassportModelCopyWith<PassportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportModelCopyWith<$Res> {
  factory $PassportModelCopyWith(
          PassportModel value, $Res Function(PassportModel) then) =
      _$PassportModelCopyWithImpl<$Res, PassportModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "passport_name") String passportName,
      @JsonKey(name: "e_passport_name") String ePassportName,
      @JsonKey(name: "passport_surname") String passportSurname,
      @JsonKey(name: "e_passport_surname") String ePassportSurname,
      @JsonKey(name: "passport_mother_name") String passportMotherName,
      @JsonKey(name: "e_passport_mother_name") String ePassportMotherName,
      @JsonKey(name: "passport_father_name") String passportFatherName,
      @JsonKey(name: "e_passport_father_name") String ePassportFatherName,
      @JsonKey(name: "passport_date_of_birthday") String passportDateOfBirthday,
      @JsonKey(name: "e_passport_date_of_birthday")
      String ePassportDateOfBirthday,
      @JsonKey(name: "passport_place_of_birthday")
      String passportPlaceOfBirthday,
      @JsonKey(name: "e_passport_place_of_birthday")
      String ePassportPlaceOfBirthday,
      @JsonKey(name: "passport_gender") String passportGender,
      @JsonKey(name: "e_passport_gender") String ePassportGender,
      @JsonKey(name: "passport_number_of_passport")
      String passportNumberOfPassport,
      @JsonKey(name: "e_passport_number_of_passport")
      String ePassportNumberOfPassport,
      @JsonKey(name: "passport_release_date") String passportReleaseDate,
      @JsonKey(name: "e_passport_release_date") String ePassportReleaseDate,
      @JsonKey(name: "passport_place_of_issue") String passportPlaceOfIssue,
      @JsonKey(name: "e_passport_place_of_issue") String ePassportPlaceOfIssue,
      @JsonKey(name: "passport_expiration_date") String passportExpirationDate,
      @JsonKey(name: "e_passport_expiration_date")
      String ePassportExpirationDate,
      @JsonKey(name: "passport_national_number") String passportNationalNumber,
      @JsonKey(name: "e_passport_national_number")
      String ePassportNationalNumber,
      @JsonKey(name: "passport_job") String passportJob,
      @JsonKey(name: "e_passport_job") String ePassportJob,
      @JsonKey(name: "passport_file") String passportFile});
}

/// @nodoc
class _$PassportModelCopyWithImpl<$Res, $Val extends PassportModel>
    implements $PassportModelCopyWith<$Res> {
  _$PassportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passportName = null,
    Object? ePassportName = null,
    Object? passportSurname = null,
    Object? ePassportSurname = null,
    Object? passportMotherName = null,
    Object? ePassportMotherName = null,
    Object? passportFatherName = null,
    Object? ePassportFatherName = null,
    Object? passportDateOfBirthday = null,
    Object? ePassportDateOfBirthday = null,
    Object? passportPlaceOfBirthday = null,
    Object? ePassportPlaceOfBirthday = null,
    Object? passportGender = null,
    Object? ePassportGender = null,
    Object? passportNumberOfPassport = null,
    Object? ePassportNumberOfPassport = null,
    Object? passportReleaseDate = null,
    Object? ePassportReleaseDate = null,
    Object? passportPlaceOfIssue = null,
    Object? ePassportPlaceOfIssue = null,
    Object? passportExpirationDate = null,
    Object? ePassportExpirationDate = null,
    Object? passportNationalNumber = null,
    Object? ePassportNationalNumber = null,
    Object? passportJob = null,
    Object? ePassportJob = null,
    Object? passportFile = null,
  }) {
    return _then(_value.copyWith(
      passportName: null == passportName
          ? _value.passportName
          : passportName // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportName: null == ePassportName
          ? _value.ePassportName
          : ePassportName // ignore: cast_nullable_to_non_nullable
              as String,
      passportSurname: null == passportSurname
          ? _value.passportSurname
          : passportSurname // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportSurname: null == ePassportSurname
          ? _value.ePassportSurname
          : ePassportSurname // ignore: cast_nullable_to_non_nullable
              as String,
      passportMotherName: null == passportMotherName
          ? _value.passportMotherName
          : passportMotherName // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportMotherName: null == ePassportMotherName
          ? _value.ePassportMotherName
          : ePassportMotherName // ignore: cast_nullable_to_non_nullable
              as String,
      passportFatherName: null == passportFatherName
          ? _value.passportFatherName
          : passportFatherName // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportFatherName: null == ePassportFatherName
          ? _value.ePassportFatherName
          : ePassportFatherName // ignore: cast_nullable_to_non_nullable
              as String,
      passportDateOfBirthday: null == passportDateOfBirthday
          ? _value.passportDateOfBirthday
          : passportDateOfBirthday // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportDateOfBirthday: null == ePassportDateOfBirthday
          ? _value.ePassportDateOfBirthday
          : ePassportDateOfBirthday // ignore: cast_nullable_to_non_nullable
              as String,
      passportPlaceOfBirthday: null == passportPlaceOfBirthday
          ? _value.passportPlaceOfBirthday
          : passportPlaceOfBirthday // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportPlaceOfBirthday: null == ePassportPlaceOfBirthday
          ? _value.ePassportPlaceOfBirthday
          : ePassportPlaceOfBirthday // ignore: cast_nullable_to_non_nullable
              as String,
      passportGender: null == passportGender
          ? _value.passportGender
          : passportGender // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportGender: null == ePassportGender
          ? _value.ePassportGender
          : ePassportGender // ignore: cast_nullable_to_non_nullable
              as String,
      passportNumberOfPassport: null == passportNumberOfPassport
          ? _value.passportNumberOfPassport
          : passportNumberOfPassport // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportNumberOfPassport: null == ePassportNumberOfPassport
          ? _value.ePassportNumberOfPassport
          : ePassportNumberOfPassport // ignore: cast_nullable_to_non_nullable
              as String,
      passportReleaseDate: null == passportReleaseDate
          ? _value.passportReleaseDate
          : passportReleaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportReleaseDate: null == ePassportReleaseDate
          ? _value.ePassportReleaseDate
          : ePassportReleaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      passportPlaceOfIssue: null == passportPlaceOfIssue
          ? _value.passportPlaceOfIssue
          : passportPlaceOfIssue // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportPlaceOfIssue: null == ePassportPlaceOfIssue
          ? _value.ePassportPlaceOfIssue
          : ePassportPlaceOfIssue // ignore: cast_nullable_to_non_nullable
              as String,
      passportExpirationDate: null == passportExpirationDate
          ? _value.passportExpirationDate
          : passportExpirationDate // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportExpirationDate: null == ePassportExpirationDate
          ? _value.ePassportExpirationDate
          : ePassportExpirationDate // ignore: cast_nullable_to_non_nullable
              as String,
      passportNationalNumber: null == passportNationalNumber
          ? _value.passportNationalNumber
          : passportNationalNumber // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportNationalNumber: null == ePassportNationalNumber
          ? _value.ePassportNationalNumber
          : ePassportNationalNumber // ignore: cast_nullable_to_non_nullable
              as String,
      passportJob: null == passportJob
          ? _value.passportJob
          : passportJob // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportJob: null == ePassportJob
          ? _value.ePassportJob
          : ePassportJob // ignore: cast_nullable_to_non_nullable
              as String,
      passportFile: null == passportFile
          ? _value.passportFile
          : passportFile // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PassportModelImplCopyWith<$Res>
    implements $PassportModelCopyWith<$Res> {
  factory _$$PassportModelImplCopyWith(
          _$PassportModelImpl value, $Res Function(_$PassportModelImpl) then) =
      __$$PassportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "passport_name") String passportName,
      @JsonKey(name: "e_passport_name") String ePassportName,
      @JsonKey(name: "passport_surname") String passportSurname,
      @JsonKey(name: "e_passport_surname") String ePassportSurname,
      @JsonKey(name: "passport_mother_name") String passportMotherName,
      @JsonKey(name: "e_passport_mother_name") String ePassportMotherName,
      @JsonKey(name: "passport_father_name") String passportFatherName,
      @JsonKey(name: "e_passport_father_name") String ePassportFatherName,
      @JsonKey(name: "passport_date_of_birthday") String passportDateOfBirthday,
      @JsonKey(name: "e_passport_date_of_birthday")
      String ePassportDateOfBirthday,
      @JsonKey(name: "passport_place_of_birthday")
      String passportPlaceOfBirthday,
      @JsonKey(name: "e_passport_place_of_birthday")
      String ePassportPlaceOfBirthday,
      @JsonKey(name: "passport_gender") String passportGender,
      @JsonKey(name: "e_passport_gender") String ePassportGender,
      @JsonKey(name: "passport_number_of_passport")
      String passportNumberOfPassport,
      @JsonKey(name: "e_passport_number_of_passport")
      String ePassportNumberOfPassport,
      @JsonKey(name: "passport_release_date") String passportReleaseDate,
      @JsonKey(name: "e_passport_release_date") String ePassportReleaseDate,
      @JsonKey(name: "passport_place_of_issue") String passportPlaceOfIssue,
      @JsonKey(name: "e_passport_place_of_issue") String ePassportPlaceOfIssue,
      @JsonKey(name: "passport_expiration_date") String passportExpirationDate,
      @JsonKey(name: "e_passport_expiration_date")
      String ePassportExpirationDate,
      @JsonKey(name: "passport_national_number") String passportNationalNumber,
      @JsonKey(name: "e_passport_national_number")
      String ePassportNationalNumber,
      @JsonKey(name: "passport_job") String passportJob,
      @JsonKey(name: "e_passport_job") String ePassportJob,
      @JsonKey(name: "passport_file") String passportFile});
}

/// @nodoc
class __$$PassportModelImplCopyWithImpl<$Res>
    extends _$PassportModelCopyWithImpl<$Res, _$PassportModelImpl>
    implements _$$PassportModelImplCopyWith<$Res> {
  __$$PassportModelImplCopyWithImpl(
      _$PassportModelImpl _value, $Res Function(_$PassportModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passportName = null,
    Object? ePassportName = null,
    Object? passportSurname = null,
    Object? ePassportSurname = null,
    Object? passportMotherName = null,
    Object? ePassportMotherName = null,
    Object? passportFatherName = null,
    Object? ePassportFatherName = null,
    Object? passportDateOfBirthday = null,
    Object? ePassportDateOfBirthday = null,
    Object? passportPlaceOfBirthday = null,
    Object? ePassportPlaceOfBirthday = null,
    Object? passportGender = null,
    Object? ePassportGender = null,
    Object? passportNumberOfPassport = null,
    Object? ePassportNumberOfPassport = null,
    Object? passportReleaseDate = null,
    Object? ePassportReleaseDate = null,
    Object? passportPlaceOfIssue = null,
    Object? ePassportPlaceOfIssue = null,
    Object? passportExpirationDate = null,
    Object? ePassportExpirationDate = null,
    Object? passportNationalNumber = null,
    Object? ePassportNationalNumber = null,
    Object? passportJob = null,
    Object? ePassportJob = null,
    Object? passportFile = null,
  }) {
    return _then(_$PassportModelImpl(
      passportName: null == passportName
          ? _value.passportName
          : passportName // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportName: null == ePassportName
          ? _value.ePassportName
          : ePassportName // ignore: cast_nullable_to_non_nullable
              as String,
      passportSurname: null == passportSurname
          ? _value.passportSurname
          : passportSurname // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportSurname: null == ePassportSurname
          ? _value.ePassportSurname
          : ePassportSurname // ignore: cast_nullable_to_non_nullable
              as String,
      passportMotherName: null == passportMotherName
          ? _value.passportMotherName
          : passportMotherName // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportMotherName: null == ePassportMotherName
          ? _value.ePassportMotherName
          : ePassportMotherName // ignore: cast_nullable_to_non_nullable
              as String,
      passportFatherName: null == passportFatherName
          ? _value.passportFatherName
          : passportFatherName // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportFatherName: null == ePassportFatherName
          ? _value.ePassportFatherName
          : ePassportFatherName // ignore: cast_nullable_to_non_nullable
              as String,
      passportDateOfBirthday: null == passportDateOfBirthday
          ? _value.passportDateOfBirthday
          : passportDateOfBirthday // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportDateOfBirthday: null == ePassportDateOfBirthday
          ? _value.ePassportDateOfBirthday
          : ePassportDateOfBirthday // ignore: cast_nullable_to_non_nullable
              as String,
      passportPlaceOfBirthday: null == passportPlaceOfBirthday
          ? _value.passportPlaceOfBirthday
          : passportPlaceOfBirthday // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportPlaceOfBirthday: null == ePassportPlaceOfBirthday
          ? _value.ePassportPlaceOfBirthday
          : ePassportPlaceOfBirthday // ignore: cast_nullable_to_non_nullable
              as String,
      passportGender: null == passportGender
          ? _value.passportGender
          : passportGender // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportGender: null == ePassportGender
          ? _value.ePassportGender
          : ePassportGender // ignore: cast_nullable_to_non_nullable
              as String,
      passportNumberOfPassport: null == passportNumberOfPassport
          ? _value.passportNumberOfPassport
          : passportNumberOfPassport // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportNumberOfPassport: null == ePassportNumberOfPassport
          ? _value.ePassportNumberOfPassport
          : ePassportNumberOfPassport // ignore: cast_nullable_to_non_nullable
              as String,
      passportReleaseDate: null == passportReleaseDate
          ? _value.passportReleaseDate
          : passportReleaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportReleaseDate: null == ePassportReleaseDate
          ? _value.ePassportReleaseDate
          : ePassportReleaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      passportPlaceOfIssue: null == passportPlaceOfIssue
          ? _value.passportPlaceOfIssue
          : passportPlaceOfIssue // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportPlaceOfIssue: null == ePassportPlaceOfIssue
          ? _value.ePassportPlaceOfIssue
          : ePassportPlaceOfIssue // ignore: cast_nullable_to_non_nullable
              as String,
      passportExpirationDate: null == passportExpirationDate
          ? _value.passportExpirationDate
          : passportExpirationDate // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportExpirationDate: null == ePassportExpirationDate
          ? _value.ePassportExpirationDate
          : ePassportExpirationDate // ignore: cast_nullable_to_non_nullable
              as String,
      passportNationalNumber: null == passportNationalNumber
          ? _value.passportNationalNumber
          : passportNationalNumber // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportNationalNumber: null == ePassportNationalNumber
          ? _value.ePassportNationalNumber
          : ePassportNationalNumber // ignore: cast_nullable_to_non_nullable
              as String,
      passportJob: null == passportJob
          ? _value.passportJob
          : passportJob // ignore: cast_nullable_to_non_nullable
              as String,
      ePassportJob: null == ePassportJob
          ? _value.ePassportJob
          : ePassportJob // ignore: cast_nullable_to_non_nullable
              as String,
      passportFile: null == passportFile
          ? _value.passportFile
          : passportFile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassportModelImpl implements _PassportModel {
  const _$PassportModelImpl(
      {@JsonKey(name: "passport_name") this.passportName = "",
      @JsonKey(name: "e_passport_name") this.ePassportName = "",
      @JsonKey(name: "passport_surname") this.passportSurname = "",
      @JsonKey(name: "e_passport_surname") this.ePassportSurname = "",
      @JsonKey(name: "passport_mother_name") this.passportMotherName = "",
      @JsonKey(name: "e_passport_mother_name") this.ePassportMotherName = "",
      @JsonKey(name: "passport_father_name") this.passportFatherName = "",
      @JsonKey(name: "e_passport_father_name") this.ePassportFatherName = "",
      @JsonKey(name: "passport_date_of_birthday")
      this.passportDateOfBirthday = "",
      @JsonKey(name: "e_passport_date_of_birthday")
      this.ePassportDateOfBirthday = "",
      @JsonKey(name: "passport_place_of_birthday")
      this.passportPlaceOfBirthday = "",
      @JsonKey(name: "e_passport_place_of_birthday")
      this.ePassportPlaceOfBirthday = "",
      @JsonKey(name: "passport_gender") this.passportGender = "",
      @JsonKey(name: "e_passport_gender") this.ePassportGender = "",
      @JsonKey(name: "passport_number_of_passport")
      this.passportNumberOfPassport = "",
      @JsonKey(name: "e_passport_number_of_passport")
      this.ePassportNumberOfPassport = "",
      @JsonKey(name: "passport_release_date") this.passportReleaseDate = "",
      @JsonKey(name: "e_passport_release_date") this.ePassportReleaseDate = "",
      @JsonKey(name: "passport_place_of_issue") this.passportPlaceOfIssue = "",
      @JsonKey(name: "e_passport_place_of_issue")
      this.ePassportPlaceOfIssue = "",
      @JsonKey(name: "passport_expiration_date")
      this.passportExpirationDate = "",
      @JsonKey(name: "e_passport_expiration_date")
      this.ePassportExpirationDate = "",
      @JsonKey(name: "passport_national_number")
      this.passportNationalNumber = "",
      @JsonKey(name: "e_passport_national_number")
      this.ePassportNationalNumber = "",
      @JsonKey(name: "passport_job") this.passportJob = "",
      @JsonKey(name: "e_passport_job") this.ePassportJob = "",
      @JsonKey(name: "passport_file") this.passportFile = ""});

  factory _$PassportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PassportModelImplFromJson(json);

  @override
  @JsonKey(name: "passport_name")
  final String passportName;
  @override
  @JsonKey(name: "e_passport_name")
  final String ePassportName;
  @override
  @JsonKey(name: "passport_surname")
  final String passportSurname;
  @override
  @JsonKey(name: "e_passport_surname")
  final String ePassportSurname;
  @override
  @JsonKey(name: "passport_mother_name")
  final String passportMotherName;
  @override
  @JsonKey(name: "e_passport_mother_name")
  final String ePassportMotherName;
  @override
  @JsonKey(name: "passport_father_name")
  final String passportFatherName;
  @override
  @JsonKey(name: "e_passport_father_name")
  final String ePassportFatherName;
  @override
  @JsonKey(name: "passport_date_of_birthday")
  final String passportDateOfBirthday;
  @override
  @JsonKey(name: "e_passport_date_of_birthday")
  final String ePassportDateOfBirthday;
  @override
  @JsonKey(name: "passport_place_of_birthday")
  final String passportPlaceOfBirthday;
  @override
  @JsonKey(name: "e_passport_place_of_birthday")
  final String ePassportPlaceOfBirthday;
  @override
  @JsonKey(name: "passport_gender")
  final String passportGender;
  @override
  @JsonKey(name: "e_passport_gender")
  final String ePassportGender;
  @override
  @JsonKey(name: "passport_number_of_passport")
  final String passportNumberOfPassport;
  @override
  @JsonKey(name: "e_passport_number_of_passport")
  final String ePassportNumberOfPassport;
  @override
  @JsonKey(name: "passport_release_date")
  final String passportReleaseDate;
  @override
  @JsonKey(name: "e_passport_release_date")
  final String ePassportReleaseDate;
  @override
  @JsonKey(name: "passport_place_of_issue")
  final String passportPlaceOfIssue;
  @override
  @JsonKey(name: "e_passport_place_of_issue")
  final String ePassportPlaceOfIssue;
  @override
  @JsonKey(name: "passport_expiration_date")
  final String passportExpirationDate;
  @override
  @JsonKey(name: "e_passport_expiration_date")
  final String ePassportExpirationDate;
  @override
  @JsonKey(name: "passport_national_number")
  final String passportNationalNumber;
  @override
  @JsonKey(name: "e_passport_national_number")
  final String ePassportNationalNumber;
  @override
  @JsonKey(name: "passport_job")
  final String passportJob;
  @override
  @JsonKey(name: "e_passport_job")
  final String ePassportJob;
  @override
  @JsonKey(name: "passport_file")
  final String passportFile;

  @override
  String toString() {
    return 'PassportModel(passportName: $passportName, ePassportName: $ePassportName, passportSurname: $passportSurname, ePassportSurname: $ePassportSurname, passportMotherName: $passportMotherName, ePassportMotherName: $ePassportMotherName, passportFatherName: $passportFatherName, ePassportFatherName: $ePassportFatherName, passportDateOfBirthday: $passportDateOfBirthday, ePassportDateOfBirthday: $ePassportDateOfBirthday, passportPlaceOfBirthday: $passportPlaceOfBirthday, ePassportPlaceOfBirthday: $ePassportPlaceOfBirthday, passportGender: $passportGender, ePassportGender: $ePassportGender, passportNumberOfPassport: $passportNumberOfPassport, ePassportNumberOfPassport: $ePassportNumberOfPassport, passportReleaseDate: $passportReleaseDate, ePassportReleaseDate: $ePassportReleaseDate, passportPlaceOfIssue: $passportPlaceOfIssue, ePassportPlaceOfIssue: $ePassportPlaceOfIssue, passportExpirationDate: $passportExpirationDate, ePassportExpirationDate: $ePassportExpirationDate, passportNationalNumber: $passportNationalNumber, ePassportNationalNumber: $ePassportNationalNumber, passportJob: $passportJob, ePassportJob: $ePassportJob, passportFile: $passportFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassportModelImpl &&
            (identical(other.passportName, passportName) ||
                other.passportName == passportName) &&
            (identical(other.ePassportName, ePassportName) ||
                other.ePassportName == ePassportName) &&
            (identical(other.passportSurname, passportSurname) ||
                other.passportSurname == passportSurname) &&
            (identical(other.ePassportSurname, ePassportSurname) ||
                other.ePassportSurname == ePassportSurname) &&
            (identical(other.passportMotherName, passportMotherName) ||
                other.passportMotherName == passportMotherName) &&
            (identical(other.ePassportMotherName, ePassportMotherName) ||
                other.ePassportMotherName == ePassportMotherName) &&
            (identical(other.passportFatherName, passportFatherName) ||
                other.passportFatherName == passportFatherName) &&
            (identical(other.ePassportFatherName, ePassportFatherName) ||
                other.ePassportFatherName == ePassportFatherName) &&
            (identical(other.passportDateOfBirthday, passportDateOfBirthday) ||
                other.passportDateOfBirthday == passportDateOfBirthday) &&
            (identical(other.ePassportDateOfBirthday, ePassportDateOfBirthday) ||
                other.ePassportDateOfBirthday == ePassportDateOfBirthday) &&
            (identical(other.passportPlaceOfBirthday, passportPlaceOfBirthday) ||
                other.passportPlaceOfBirthday == passportPlaceOfBirthday) &&
            (identical(other.ePassportPlaceOfBirthday, ePassportPlaceOfBirthday) ||
                other.ePassportPlaceOfBirthday == ePassportPlaceOfBirthday) &&
            (identical(other.passportGender, passportGender) ||
                other.passportGender == passportGender) &&
            (identical(other.ePassportGender, ePassportGender) ||
                other.ePassportGender == ePassportGender) &&
            (identical(other.passportNumberOfPassport, passportNumberOfPassport) ||
                other.passportNumberOfPassport == passportNumberOfPassport) &&
            (identical(other.ePassportNumberOfPassport, ePassportNumberOfPassport) ||
                other.ePassportNumberOfPassport == ePassportNumberOfPassport) &&
            (identical(other.passportReleaseDate, passportReleaseDate) ||
                other.passportReleaseDate == passportReleaseDate) &&
            (identical(other.ePassportReleaseDate, ePassportReleaseDate) ||
                other.ePassportReleaseDate == ePassportReleaseDate) &&
            (identical(other.passportPlaceOfIssue, passportPlaceOfIssue) ||
                other.passportPlaceOfIssue == passportPlaceOfIssue) &&
            (identical(other.ePassportPlaceOfIssue, ePassportPlaceOfIssue) ||
                other.ePassportPlaceOfIssue == ePassportPlaceOfIssue) &&
            (identical(other.passportExpirationDate, passportExpirationDate) ||
                other.passportExpirationDate == passportExpirationDate) &&
            (identical(other.ePassportExpirationDate, ePassportExpirationDate) ||
                other.ePassportExpirationDate == ePassportExpirationDate) &&
            (identical(other.passportNationalNumber, passportNationalNumber) ||
                other.passportNationalNumber == passportNationalNumber) &&
            (identical(other.ePassportNationalNumber, ePassportNationalNumber) ||
                other.ePassportNationalNumber == ePassportNationalNumber) &&
            (identical(other.passportJob, passportJob) ||
                other.passportJob == passportJob) &&
            (identical(other.ePassportJob, ePassportJob) ||
                other.ePassportJob == ePassportJob) &&
            (identical(other.passportFile, passportFile) ||
                other.passportFile == passportFile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        passportName,
        ePassportName,
        passportSurname,
        ePassportSurname,
        passportMotherName,
        ePassportMotherName,
        passportFatherName,
        ePassportFatherName,
        passportDateOfBirthday,
        ePassportDateOfBirthday,
        passportPlaceOfBirthday,
        ePassportPlaceOfBirthday,
        passportGender,
        ePassportGender,
        passportNumberOfPassport,
        ePassportNumberOfPassport,
        passportReleaseDate,
        ePassportReleaseDate,
        passportPlaceOfIssue,
        ePassportPlaceOfIssue,
        passportExpirationDate,
        ePassportExpirationDate,
        passportNationalNumber,
        ePassportNationalNumber,
        passportJob,
        ePassportJob,
        passportFile
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PassportModelImplCopyWith<_$PassportModelImpl> get copyWith =>
      __$$PassportModelImplCopyWithImpl<_$PassportModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PassportModelImplToJson(
      this,
    );
  }
}

abstract class _PassportModel implements PassportModel {
  const factory _PassportModel(
      {@JsonKey(name: "passport_name") final String passportName,
      @JsonKey(name: "e_passport_name") final String ePassportName,
      @JsonKey(name: "passport_surname") final String passportSurname,
      @JsonKey(name: "e_passport_surname") final String ePassportSurname,
      @JsonKey(name: "passport_mother_name") final String passportMotherName,
      @JsonKey(name: "e_passport_mother_name") final String ePassportMotherName,
      @JsonKey(name: "passport_father_name") final String passportFatherName,
      @JsonKey(name: "e_passport_father_name") final String ePassportFatherName,
      @JsonKey(name: "passport_date_of_birthday")
      final String passportDateOfBirthday,
      @JsonKey(name: "e_passport_date_of_birthday")
      final String ePassportDateOfBirthday,
      @JsonKey(name: "passport_place_of_birthday")
      final String passportPlaceOfBirthday,
      @JsonKey(name: "e_passport_place_of_birthday")
      final String ePassportPlaceOfBirthday,
      @JsonKey(name: "passport_gender") final String passportGender,
      @JsonKey(name: "e_passport_gender") final String ePassportGender,
      @JsonKey(name: "passport_number_of_passport")
      final String passportNumberOfPassport,
      @JsonKey(name: "e_passport_number_of_passport")
      final String ePassportNumberOfPassport,
      @JsonKey(name: "passport_release_date") final String passportReleaseDate,
      @JsonKey(name: "e_passport_release_date")
      final String ePassportReleaseDate,
      @JsonKey(name: "passport_place_of_issue")
      final String passportPlaceOfIssue,
      @JsonKey(name: "e_passport_place_of_issue")
      final String ePassportPlaceOfIssue,
      @JsonKey(name: "passport_expiration_date")
      final String passportExpirationDate,
      @JsonKey(name: "e_passport_expiration_date")
      final String ePassportExpirationDate,
      @JsonKey(name: "passport_national_number")
      final String passportNationalNumber,
      @JsonKey(name: "e_passport_national_number")
      final String ePassportNationalNumber,
      @JsonKey(name: "passport_job") final String passportJob,
      @JsonKey(name: "e_passport_job") final String ePassportJob,
      @JsonKey(name: "passport_file")
      final String passportFile}) = _$PassportModelImpl;

  factory _PassportModel.fromJson(Map<String, dynamic> json) =
      _$PassportModelImpl.fromJson;

  @override
  @JsonKey(name: "passport_name")
  String get passportName;
  @override
  @JsonKey(name: "e_passport_name")
  String get ePassportName;
  @override
  @JsonKey(name: "passport_surname")
  String get passportSurname;
  @override
  @JsonKey(name: "e_passport_surname")
  String get ePassportSurname;
  @override
  @JsonKey(name: "passport_mother_name")
  String get passportMotherName;
  @override
  @JsonKey(name: "e_passport_mother_name")
  String get ePassportMotherName;
  @override
  @JsonKey(name: "passport_father_name")
  String get passportFatherName;
  @override
  @JsonKey(name: "e_passport_father_name")
  String get ePassportFatherName;
  @override
  @JsonKey(name: "passport_date_of_birthday")
  String get passportDateOfBirthday;
  @override
  @JsonKey(name: "e_passport_date_of_birthday")
  String get ePassportDateOfBirthday;
  @override
  @JsonKey(name: "passport_place_of_birthday")
  String get passportPlaceOfBirthday;
  @override
  @JsonKey(name: "e_passport_place_of_birthday")
  String get ePassportPlaceOfBirthday;
  @override
  @JsonKey(name: "passport_gender")
  String get passportGender;
  @override
  @JsonKey(name: "e_passport_gender")
  String get ePassportGender;
  @override
  @JsonKey(name: "passport_number_of_passport")
  String get passportNumberOfPassport;
  @override
  @JsonKey(name: "e_passport_number_of_passport")
  String get ePassportNumberOfPassport;
  @override
  @JsonKey(name: "passport_release_date")
  String get passportReleaseDate;
  @override
  @JsonKey(name: "e_passport_release_date")
  String get ePassportReleaseDate;
  @override
  @JsonKey(name: "passport_place_of_issue")
  String get passportPlaceOfIssue;
  @override
  @JsonKey(name: "e_passport_place_of_issue")
  String get ePassportPlaceOfIssue;
  @override
  @JsonKey(name: "passport_expiration_date")
  String get passportExpirationDate;
  @override
  @JsonKey(name: "e_passport_expiration_date")
  String get ePassportExpirationDate;
  @override
  @JsonKey(name: "passport_national_number")
  String get passportNationalNumber;
  @override
  @JsonKey(name: "e_passport_national_number")
  String get ePassportNationalNumber;
  @override
  @JsonKey(name: "passport_job")
  String get passportJob;
  @override
  @JsonKey(name: "e_passport_job")
  String get ePassportJob;
  @override
  @JsonKey(name: "passport_file")
  String get passportFile;
  @override
  @JsonKey(ignore: true)
  _$$PassportModelImplCopyWith<_$PassportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
