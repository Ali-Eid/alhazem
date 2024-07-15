// ignore_for_file: invalid_annotation_target

import 'package:alhazem/core/bases/enums/entity_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/bases/enums/gender_type.dart';

part 'input_create_traveler_model.freezed.dart';
part 'input_create_traveler_model.g.dart';

@freezed
abstract class InputCreateTravelerModel with _$InputCreateTravelerModel {
  factory InputCreateTravelerModel({
    //first info
    @Default("") String name,
    @Default("") @JsonKey(name: "phone_number") String phoneNumber,
    @Default("") @JsonKey(name: "whatsapp_number") String whatsAppNumber,
    @Default(0) @JsonKey(name: "state_id") int stateId,
    @Default(0) @JsonKey(name: "country_id") int countryId,
    @Default(0) @JsonKey(name: "office_id") int officeId,
    @Default(false) bool vip,
    @Default(EntityType.person) EntityType type,
    @Default("") String city,
    @Default("") String street,
    @Default("") String street2,
    //passport
    @Default("") @JsonKey(name: "passport_name") String passportName,
    @Default("") @JsonKey(name: "e_passport_name") String ePassportName,
    @Default("") @JsonKey(name: "passport_surname") String passportSurname,
    @Default("") @JsonKey(name: "e_passport_surname") String ePassportSurname,
    @Default("")
    @JsonKey(name: "passport_mother_name")
    String passportMotherName,
    @Default("")
    @JsonKey(name: "e_passport_mother_name")
    String ePassportMotherName,
    @Default("")
    @JsonKey(name: "passport_father_name")
    String passportFatherName,
    @Default("")
    @JsonKey(name: "e_passport_father_name")
    String ePassportFatherName,
    @Default("")
    @JsonKey(name: "passport_date_of_birthday")
    String passportDateOfBirthday,
    @Default("")
    @JsonKey(name: "e_passport_date_of_birthday")
    String ePassportDateOfBirthday,
    @Default("")
    @JsonKey(name: "passport_place_of_birthday")
    String passportPlaceOfBirthday,
    @Default("")
    @JsonKey(name: "e_passport_place_of_birthday")
    String ePassportPlaceOfBirthday,
    @Default(GenderType.male)
    @JsonKey(name: "passport_gender")
    GenderType passportGender,
    @Default(GenderType.male)
    @JsonKey(name: "e_passport_gender")
    GenderType ePassportGender,
    @Default("")
    @JsonKey(name: "passport_number_of_passport")
    String passportNumberOfPassport,
    @Default("")
    @JsonKey(name: "e_passport_number_of_passport")
    String ePassportNumberOfPassport,
    @Default("")
    @JsonKey(name: "passport_release_date")
    String passportReleaseDate,
    @Default("")
    @JsonKey(name: "e_passport_release_date")
    String ePassportReleaseDate,
    @Default("")
    @JsonKey(name: "passport_place_of_issue")
    String passportPlaceOfIssue,
    @Default("")
    @JsonKey(name: "e_passport_place_of_issue")
    String ePassportPlaceOfIssue,
    @Default("")
    @JsonKey(name: "passport_expiration_date")
    String passportExpirationDate,
    @Default("")
    @JsonKey(name: "e_passport_expiration_date")
    String ePassportExpirationDate,
    @Default("")
    @JsonKey(name: "passport_national_number")
    String passportNationalNumber,
    @Default("")
    @JsonKey(name: "e_passport_national_number")
    String ePassportNationalNumber,
    @Default("") @JsonKey(name: "passport_job") String passportJob,
    @Default("") @JsonKey(name: "e_passport_job") String ePassportJob,
    @Default("") @JsonKey(name: "passport_file") String passportFile,

    //----Identity
    @Default("") @JsonKey(name: "identity_father") String identityFather,
    @Default("") @JsonKey(name: "identity_mother") String identityMother,
    @Default("")
    @JsonKey(name: "identity_date_of_birthday")
    String identityDateOfBirthday,
    @Default("")
    @JsonKey(name: "identity_place_of_birthday")
    String identityPlaceOfBirthday,
    @Default("")
    @JsonKey(name: "identity_national_number")
    String identityNationalNumber,
    @Default("") @JsonKey(name: "identity_surname") String identitySurname,
    @Default(GenderType.male)
    @JsonKey(name: "identity_gender")
    GenderType identityGender,
    @Default([]) List<AttachmentsCreateTravelerModel> attachments,
  }) = _InputCreateTravelerModel;
  factory InputCreateTravelerModel.fromJson(Map<String, dynamic> json) =>
      _$InputCreateTravelerModelFromJson(json);
}

@freezed
abstract class AttachmentsCreateTravelerModel
    with _$AttachmentsCreateTravelerModel {
  const factory AttachmentsCreateTravelerModel({
    @Default("") String name,
    @Default(0) int type,
    @Default([]) List<String> file,
  }) = _AttachmentsCreateTravelerModel;
  factory AttachmentsCreateTravelerModel.fromJson(Map<String, dynamic> json) =>
      _$AttachmentsCreateTravelerModelFromJson(json);
}
