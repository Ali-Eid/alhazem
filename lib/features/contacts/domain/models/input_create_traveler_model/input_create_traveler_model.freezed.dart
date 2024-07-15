// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_create_traveler_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InputCreateTravelerModel _$InputCreateTravelerModelFromJson(
    Map<String, dynamic> json) {
  return _InputCreateTravelerModel.fromJson(json);
}

/// @nodoc
mixin _$InputCreateTravelerModel {
//first info
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "whatsapp_number")
  String get whatsAppNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "state_id")
  int get stateId => throw _privateConstructorUsedError;
  @JsonKey(name: "country_id")
  int get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: "office_id")
  int get officeId => throw _privateConstructorUsedError;
  bool get vip => throw _privateConstructorUsedError;
  EntityType get type => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get street2 => throw _privateConstructorUsedError; //passport
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
  GenderType get passportGender => throw _privateConstructorUsedError;
  @JsonKey(name: "e_passport_gender")
  GenderType get ePassportGender => throw _privateConstructorUsedError;
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
  String get passportFile => throw _privateConstructorUsedError; //----Identity
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
  GenderType get identityGender => throw _privateConstructorUsedError;
  List<AttachmentsCreateTravelerModel> get attachments =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputCreateTravelerModelCopyWith<InputCreateTravelerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputCreateTravelerModelCopyWith<$Res> {
  factory $InputCreateTravelerModelCopyWith(InputCreateTravelerModel value,
          $Res Function(InputCreateTravelerModel) then) =
      _$InputCreateTravelerModelCopyWithImpl<$Res, InputCreateTravelerModel>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "whatsapp_number") String whatsAppNumber,
      @JsonKey(name: "state_id") int stateId,
      @JsonKey(name: "country_id") int countryId,
      @JsonKey(name: "office_id") int officeId,
      bool vip,
      EntityType type,
      String city,
      String street,
      String street2,
      @JsonKey(name: "passport_name") String passportName,
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
      @JsonKey(name: "passport_gender") GenderType passportGender,
      @JsonKey(name: "e_passport_gender") GenderType ePassportGender,
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
      @JsonKey(name: "passport_file") String passportFile,
      @JsonKey(name: "identity_father") String identityFather,
      @JsonKey(name: "identity_mother") String identityMother,
      @JsonKey(name: "identity_date_of_birthday") String identityDateOfBirthday,
      @JsonKey(name: "identity_place_of_birthday")
      String identityPlaceOfBirthday,
      @JsonKey(name: "identity_national_number") String identityNationalNumber,
      @JsonKey(name: "identity_surname") String identitySurname,
      @JsonKey(name: "identity_gender") GenderType identityGender,
      List<AttachmentsCreateTravelerModel> attachments});
}

/// @nodoc
class _$InputCreateTravelerModelCopyWithImpl<$Res,
        $Val extends InputCreateTravelerModel>
    implements $InputCreateTravelerModelCopyWith<$Res> {
  _$InputCreateTravelerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? whatsAppNumber = null,
    Object? stateId = null,
    Object? countryId = null,
    Object? officeId = null,
    Object? vip = null,
    Object? type = null,
    Object? city = null,
    Object? street = null,
    Object? street2 = null,
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
    Object? identityFather = null,
    Object? identityMother = null,
    Object? identityDateOfBirthday = null,
    Object? identityPlaceOfBirthday = null,
    Object? identityNationalNumber = null,
    Object? identitySurname = null,
    Object? identityGender = null,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      whatsAppNumber: null == whatsAppNumber
          ? _value.whatsAppNumber
          : whatsAppNumber // ignore: cast_nullable_to_non_nullable
              as String,
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as int,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      officeId: null == officeId
          ? _value.officeId
          : officeId // ignore: cast_nullable_to_non_nullable
              as int,
      vip: null == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EntityType,
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
              as GenderType,
      ePassportGender: null == ePassportGender
          ? _value.ePassportGender
          : ePassportGender // ignore: cast_nullable_to_non_nullable
              as GenderType,
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
              as GenderType,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentsCreateTravelerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputCreateTravelerModelImplCopyWith<$Res>
    implements $InputCreateTravelerModelCopyWith<$Res> {
  factory _$$InputCreateTravelerModelImplCopyWith(
          _$InputCreateTravelerModelImpl value,
          $Res Function(_$InputCreateTravelerModelImpl) then) =
      __$$InputCreateTravelerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "whatsapp_number") String whatsAppNumber,
      @JsonKey(name: "state_id") int stateId,
      @JsonKey(name: "country_id") int countryId,
      @JsonKey(name: "office_id") int officeId,
      bool vip,
      EntityType type,
      String city,
      String street,
      String street2,
      @JsonKey(name: "passport_name") String passportName,
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
      @JsonKey(name: "passport_gender") GenderType passportGender,
      @JsonKey(name: "e_passport_gender") GenderType ePassportGender,
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
      @JsonKey(name: "passport_file") String passportFile,
      @JsonKey(name: "identity_father") String identityFather,
      @JsonKey(name: "identity_mother") String identityMother,
      @JsonKey(name: "identity_date_of_birthday") String identityDateOfBirthday,
      @JsonKey(name: "identity_place_of_birthday")
      String identityPlaceOfBirthday,
      @JsonKey(name: "identity_national_number") String identityNationalNumber,
      @JsonKey(name: "identity_surname") String identitySurname,
      @JsonKey(name: "identity_gender") GenderType identityGender,
      List<AttachmentsCreateTravelerModel> attachments});
}

/// @nodoc
class __$$InputCreateTravelerModelImplCopyWithImpl<$Res>
    extends _$InputCreateTravelerModelCopyWithImpl<$Res,
        _$InputCreateTravelerModelImpl>
    implements _$$InputCreateTravelerModelImplCopyWith<$Res> {
  __$$InputCreateTravelerModelImplCopyWithImpl(
      _$InputCreateTravelerModelImpl _value,
      $Res Function(_$InputCreateTravelerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? whatsAppNumber = null,
    Object? stateId = null,
    Object? countryId = null,
    Object? officeId = null,
    Object? vip = null,
    Object? type = null,
    Object? city = null,
    Object? street = null,
    Object? street2 = null,
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
    Object? identityFather = null,
    Object? identityMother = null,
    Object? identityDateOfBirthday = null,
    Object? identityPlaceOfBirthday = null,
    Object? identityNationalNumber = null,
    Object? identitySurname = null,
    Object? identityGender = null,
    Object? attachments = null,
  }) {
    return _then(_$InputCreateTravelerModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      whatsAppNumber: null == whatsAppNumber
          ? _value.whatsAppNumber
          : whatsAppNumber // ignore: cast_nullable_to_non_nullable
              as String,
      stateId: null == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as int,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      officeId: null == officeId
          ? _value.officeId
          : officeId // ignore: cast_nullable_to_non_nullable
              as int,
      vip: null == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EntityType,
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
              as GenderType,
      ePassportGender: null == ePassportGender
          ? _value.ePassportGender
          : ePassportGender // ignore: cast_nullable_to_non_nullable
              as GenderType,
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
              as GenderType,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentsCreateTravelerModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputCreateTravelerModelImpl implements _InputCreateTravelerModel {
  _$InputCreateTravelerModelImpl(
      {this.name = "",
      @JsonKey(name: "phone_number") this.phoneNumber = "",
      @JsonKey(name: "whatsapp_number") this.whatsAppNumber = "",
      @JsonKey(name: "state_id") this.stateId = 0,
      @JsonKey(name: "country_id") this.countryId = 0,
      @JsonKey(name: "office_id") this.officeId = 0,
      this.vip = false,
      this.type = EntityType.person,
      this.city = "",
      this.street = "",
      this.street2 = "",
      @JsonKey(name: "passport_name") this.passportName = "",
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
      @JsonKey(name: "passport_gender") this.passportGender = GenderType.male,
      @JsonKey(name: "e_passport_gender")
      this.ePassportGender = GenderType.male,
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
      @JsonKey(name: "passport_file") this.passportFile = "",
      @JsonKey(name: "identity_father") this.identityFather = "",
      @JsonKey(name: "identity_mother") this.identityMother = "",
      @JsonKey(name: "identity_date_of_birthday")
      this.identityDateOfBirthday = "",
      @JsonKey(name: "identity_place_of_birthday")
      this.identityPlaceOfBirthday = "",
      @JsonKey(name: "identity_national_number")
      this.identityNationalNumber = "",
      @JsonKey(name: "identity_surname") this.identitySurname = "",
      @JsonKey(name: "identity_gender") this.identityGender = GenderType.male,
      final List<AttachmentsCreateTravelerModel> attachments = const []})
      : _attachments = attachments;

  factory _$InputCreateTravelerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputCreateTravelerModelImplFromJson(json);

//first info
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  @JsonKey(name: "whatsapp_number")
  final String whatsAppNumber;
  @override
  @JsonKey(name: "state_id")
  final int stateId;
  @override
  @JsonKey(name: "country_id")
  final int countryId;
  @override
  @JsonKey(name: "office_id")
  final int officeId;
  @override
  @JsonKey()
  final bool vip;
  @override
  @JsonKey()
  final EntityType type;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String street;
  @override
  @JsonKey()
  final String street2;
//passport
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
  final GenderType passportGender;
  @override
  @JsonKey(name: "e_passport_gender")
  final GenderType ePassportGender;
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
//----Identity
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
  final GenderType identityGender;
  final List<AttachmentsCreateTravelerModel> _attachments;
  @override
  @JsonKey()
  List<AttachmentsCreateTravelerModel> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'InputCreateTravelerModel(name: $name, phoneNumber: $phoneNumber, whatsAppNumber: $whatsAppNumber, stateId: $stateId, countryId: $countryId, officeId: $officeId, vip: $vip, type: $type, city: $city, street: $street, street2: $street2, passportName: $passportName, ePassportName: $ePassportName, passportSurname: $passportSurname, ePassportSurname: $ePassportSurname, passportMotherName: $passportMotherName, ePassportMotherName: $ePassportMotherName, passportFatherName: $passportFatherName, ePassportFatherName: $ePassportFatherName, passportDateOfBirthday: $passportDateOfBirthday, ePassportDateOfBirthday: $ePassportDateOfBirthday, passportPlaceOfBirthday: $passportPlaceOfBirthday, ePassportPlaceOfBirthday: $ePassportPlaceOfBirthday, passportGender: $passportGender, ePassportGender: $ePassportGender, passportNumberOfPassport: $passportNumberOfPassport, ePassportNumberOfPassport: $ePassportNumberOfPassport, passportReleaseDate: $passportReleaseDate, ePassportReleaseDate: $ePassportReleaseDate, passportPlaceOfIssue: $passportPlaceOfIssue, ePassportPlaceOfIssue: $ePassportPlaceOfIssue, passportExpirationDate: $passportExpirationDate, ePassportExpirationDate: $ePassportExpirationDate, passportNationalNumber: $passportNationalNumber, ePassportNationalNumber: $ePassportNationalNumber, passportJob: $passportJob, ePassportJob: $ePassportJob, passportFile: $passportFile, identityFather: $identityFather, identityMother: $identityMother, identityDateOfBirthday: $identityDateOfBirthday, identityPlaceOfBirthday: $identityPlaceOfBirthday, identityNationalNumber: $identityNationalNumber, identitySurname: $identitySurname, identityGender: $identityGender, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputCreateTravelerModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.whatsAppNumber, whatsAppNumber) ||
                other.whatsAppNumber == whatsAppNumber) &&
            (identical(other.stateId, stateId) || other.stateId == stateId) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.officeId, officeId) ||
                other.officeId == officeId) &&
            (identical(other.vip, vip) || other.vip == vip) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.street2, street2) || other.street2 == street2) &&
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
            (identical(other.passportFile, passportFile) || other.passportFile == passportFile) &&
            (identical(other.identityFather, identityFather) || other.identityFather == identityFather) &&
            (identical(other.identityMother, identityMother) || other.identityMother == identityMother) &&
            (identical(other.identityDateOfBirthday, identityDateOfBirthday) || other.identityDateOfBirthday == identityDateOfBirthday) &&
            (identical(other.identityPlaceOfBirthday, identityPlaceOfBirthday) || other.identityPlaceOfBirthday == identityPlaceOfBirthday) &&
            (identical(other.identityNationalNumber, identityNationalNumber) || other.identityNationalNumber == identityNationalNumber) &&
            (identical(other.identitySurname, identitySurname) || other.identitySurname == identitySurname) &&
            (identical(other.identityGender, identityGender) || other.identityGender == identityGender) &&
            const DeepCollectionEquality().equals(other._attachments, _attachments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        phoneNumber,
        whatsAppNumber,
        stateId,
        countryId,
        officeId,
        vip,
        type,
        city,
        street,
        street2,
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
        passportFile,
        identityFather,
        identityMother,
        identityDateOfBirthday,
        identityPlaceOfBirthday,
        identityNationalNumber,
        identitySurname,
        identityGender,
        const DeepCollectionEquality().hash(_attachments)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputCreateTravelerModelImplCopyWith<_$InputCreateTravelerModelImpl>
      get copyWith => __$$InputCreateTravelerModelImplCopyWithImpl<
          _$InputCreateTravelerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputCreateTravelerModelImplToJson(
      this,
    );
  }
}

abstract class _InputCreateTravelerModel implements InputCreateTravelerModel {
  factory _InputCreateTravelerModel(
      {final String name,
      @JsonKey(name: "phone_number") final String phoneNumber,
      @JsonKey(name: "whatsapp_number") final String whatsAppNumber,
      @JsonKey(name: "state_id") final int stateId,
      @JsonKey(name: "country_id") final int countryId,
      @JsonKey(name: "office_id") final int officeId,
      final bool vip,
      final EntityType type,
      final String city,
      final String street,
      final String street2,
      @JsonKey(name: "passport_name") final String passportName,
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
      @JsonKey(name: "passport_gender") final GenderType passportGender,
      @JsonKey(name: "e_passport_gender") final GenderType ePassportGender,
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
      @JsonKey(name: "passport_file") final String passportFile,
      @JsonKey(name: "identity_father") final String identityFather,
      @JsonKey(name: "identity_mother") final String identityMother,
      @JsonKey(name: "identity_date_of_birthday")
      final String identityDateOfBirthday,
      @JsonKey(name: "identity_place_of_birthday")
      final String identityPlaceOfBirthday,
      @JsonKey(name: "identity_national_number")
      final String identityNationalNumber,
      @JsonKey(name: "identity_surname") final String identitySurname,
      @JsonKey(name: "identity_gender") final GenderType identityGender,
      final List<AttachmentsCreateTravelerModel>
          attachments}) = _$InputCreateTravelerModelImpl;

  factory _InputCreateTravelerModel.fromJson(Map<String, dynamic> json) =
      _$InputCreateTravelerModelImpl.fromJson;

  @override //first info
  String get name;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  @JsonKey(name: "whatsapp_number")
  String get whatsAppNumber;
  @override
  @JsonKey(name: "state_id")
  int get stateId;
  @override
  @JsonKey(name: "country_id")
  int get countryId;
  @override
  @JsonKey(name: "office_id")
  int get officeId;
  @override
  bool get vip;
  @override
  EntityType get type;
  @override
  String get city;
  @override
  String get street;
  @override
  String get street2;
  @override //passport
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
  GenderType get passportGender;
  @override
  @JsonKey(name: "e_passport_gender")
  GenderType get ePassportGender;
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
  @override //----Identity
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
  GenderType get identityGender;
  @override
  List<AttachmentsCreateTravelerModel> get attachments;
  @override
  @JsonKey(ignore: true)
  _$$InputCreateTravelerModelImplCopyWith<_$InputCreateTravelerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttachmentsCreateTravelerModel _$AttachmentsCreateTravelerModelFromJson(
    Map<String, dynamic> json) {
  return _AttachmentsCreateTravelerModel.fromJson(json);
}

/// @nodoc
mixin _$AttachmentsCreateTravelerModel {
  String get name => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  List<String> get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentsCreateTravelerModelCopyWith<AttachmentsCreateTravelerModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentsCreateTravelerModelCopyWith<$Res> {
  factory $AttachmentsCreateTravelerModelCopyWith(
          AttachmentsCreateTravelerModel value,
          $Res Function(AttachmentsCreateTravelerModel) then) =
      _$AttachmentsCreateTravelerModelCopyWithImpl<$Res,
          AttachmentsCreateTravelerModel>;
  @useResult
  $Res call({String name, int type, List<String> file});
}

/// @nodoc
class _$AttachmentsCreateTravelerModelCopyWithImpl<$Res,
        $Val extends AttachmentsCreateTravelerModel>
    implements $AttachmentsCreateTravelerModelCopyWith<$Res> {
  _$AttachmentsCreateTravelerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmentsCreateTravelerModelImplCopyWith<$Res>
    implements $AttachmentsCreateTravelerModelCopyWith<$Res> {
  factory _$$AttachmentsCreateTravelerModelImplCopyWith(
          _$AttachmentsCreateTravelerModelImpl value,
          $Res Function(_$AttachmentsCreateTravelerModelImpl) then) =
      __$$AttachmentsCreateTravelerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int type, List<String> file});
}

/// @nodoc
class __$$AttachmentsCreateTravelerModelImplCopyWithImpl<$Res>
    extends _$AttachmentsCreateTravelerModelCopyWithImpl<$Res,
        _$AttachmentsCreateTravelerModelImpl>
    implements _$$AttachmentsCreateTravelerModelImplCopyWith<$Res> {
  __$$AttachmentsCreateTravelerModelImplCopyWithImpl(
      _$AttachmentsCreateTravelerModelImpl _value,
      $Res Function(_$AttachmentsCreateTravelerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? file = null,
  }) {
    return _then(_$AttachmentsCreateTravelerModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      file: null == file
          ? _value._file
          : file // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachmentsCreateTravelerModelImpl
    implements _AttachmentsCreateTravelerModel {
  const _$AttachmentsCreateTravelerModelImpl(
      {this.name = "", this.type = 0, final List<String> file = const []})
      : _file = file;

  factory _$AttachmentsCreateTravelerModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AttachmentsCreateTravelerModelImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int type;
  final List<String> _file;
  @override
  @JsonKey()
  List<String> get file {
    if (_file is EqualUnmodifiableListView) return _file;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_file);
  }

  @override
  String toString() {
    return 'AttachmentsCreateTravelerModel(name: $name, type: $type, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentsCreateTravelerModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._file, _file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, type, const DeepCollectionEquality().hash(_file));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentsCreateTravelerModelImplCopyWith<
          _$AttachmentsCreateTravelerModelImpl>
      get copyWith => __$$AttachmentsCreateTravelerModelImplCopyWithImpl<
          _$AttachmentsCreateTravelerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentsCreateTravelerModelImplToJson(
      this,
    );
  }
}

abstract class _AttachmentsCreateTravelerModel
    implements AttachmentsCreateTravelerModel {
  const factory _AttachmentsCreateTravelerModel(
      {final String name,
      final int type,
      final List<String> file}) = _$AttachmentsCreateTravelerModelImpl;

  factory _AttachmentsCreateTravelerModel.fromJson(Map<String, dynamic> json) =
      _$AttachmentsCreateTravelerModelImpl.fromJson;

  @override
  String get name;
  @override
  int get type;
  @override
  List<String> get file;
  @override
  @JsonKey(ignore: true)
  _$$AttachmentsCreateTravelerModelImplCopyWith<
          _$AttachmentsCreateTravelerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
