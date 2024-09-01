// ignore_for_file: invalid_annotation_target

import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_details_model.freezed.dart';
part 'contact_details_model.g.dart';

@freezed
abstract class ContactDetailsModel with _$ContactDetailsModel {
  factory ContactDetailsModel(
      {@Default(0) int id,
      @Default("") String name,
      @Default("") String type,
      @Default("") String phone,
      @Default(false) @JsonKey(name: "is_lead") bool isLead,
      @Default("") @JsonKey(name: "whatsapp_number") String whatsappNumber,
      @Default(false) bool vip,
      @Default("") String city,
      @Default("") String street,
      @Default("") String street2,
      @Default("") String reference,
      @Default(StaticModel()) @JsonKey(name: "office") StaticModel office,
      @Default(StaticModel()) @JsonKey(name: "state_id") StaticModel state,
      @Default(StaticModel()) @JsonKey(name: "country_id") StaticModel country,
      //Basic info
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
      @Default("") @JsonKey(name: "identity_gender") String identityGender,

      //Passport
      @Default([])
      @JsonKey(name: "passport")
      List<PassportModel> passport}) = _ContactDetailsModel;
  factory ContactDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ContactDetailsModelFromJson(json);
}

@freezed
abstract class PassportModel with _$PassportModel {
  const factory PassportModel({
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
    @Default("") @JsonKey(name: "passport_gender") String passportGender,
    @Default("") @JsonKey(name: "e_passport_gender") String ePassportGender,
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
  }) = _PassportModel;
  factory PassportModel.fromJson(Map<String, dynamic> json) =>
      _$PassportModelFromJson(json);
}
