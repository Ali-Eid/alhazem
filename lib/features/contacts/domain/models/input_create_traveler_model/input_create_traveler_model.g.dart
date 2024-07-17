// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_create_traveler_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputCreateTravelerModelImpl _$$InputCreateTravelerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputCreateTravelerModelImpl(
      name: json['name'] as String? ?? "",
      phoneNumber: json['phone_number'] as String? ?? "",
      whatsAppNumber: json['whatsapp_number'] as String? ?? "",
      stateId: (json['state_id'] as num?)?.toInt() ?? 0,
      countryId: (json['country_id'] as num?)?.toInt() ?? 0,
      officeId: (json['office_id'] as num?)?.toInt(),
      vip: json['vip'] as bool? ?? false,
      type: json['type'] as String? ?? "",
      city: json['city'] as String? ?? "",
      street: json['street'] as String? ?? "",
      street2: json['street2'] as String? ?? "",
      reference: json['reference'] as String?,
      passportName: json['passport_name'] as String? ?? "",
      ePassportName: json['e_passport_name'] as String? ?? "",
      passportSurname: json['passport_surname'] as String? ?? "",
      ePassportSurname: json['e_passport_surname'] as String? ?? "",
      passportMotherName: json['passport_mother_name'] as String? ?? "",
      ePassportMotherName: json['e_passport_mother_name'] as String? ?? "",
      passportFatherName: json['passport_father_name'] as String? ?? "",
      ePassportFatherName: json['e_passport_father_name'] as String? ?? "",
      passportDateOfBirthday:
          json['passport_date_of_birthday'] as String? ?? "",
      ePassportDateOfBirthday:
          json['e_passport_date_of_birthday'] as String? ?? "",
      passportPlaceOfBirthday:
          json['passport_place_of_birthday'] as String? ?? "",
      ePassportPlaceOfBirthday:
          json['e_passport_place_of_birthday'] as String? ?? "",
      passportGender: json['passport_gender'] as String? ?? "",
      ePassportGender: json['e_passport_gender'] as String? ?? "",
      passportNumberOfPassport:
          json['passport_number_of_passport'] as String? ?? "",
      ePassportNumberOfPassport:
          json['e_passport_number_of_passport'] as String? ?? "",
      passportReleaseDate: json['passport_release_date'] as String? ?? "",
      ePassportReleaseDate: json['e_passport_release_date'] as String? ?? "",
      passportPlaceOfIssue: json['passport_place_of_issue'] as String? ?? "",
      ePassportPlaceOfIssue: json['e_passport_place_of_issue'] as String? ?? "",
      passportExpirationDate: json['passport_expiration_date'] as String? ?? "",
      ePassportExpirationDate:
          json['e_passport_expiration_date'] as String? ?? "",
      passportNationalNumber: json['passport_national_number'] as String? ?? "",
      ePassportNationalNumber:
          json['e_passport_national_number'] as String? ?? "",
      passportJob: json['passport_job'] as String? ?? "",
      ePassportJob: json['e_passport_job'] as String? ?? "",
      passportFile: json['passport_file'] as String? ?? "",
      identityFather: json['identity_father'] as String? ?? "",
      identityMother: json['identity_mother'] as String? ?? "",
      identityDateOfBirthday:
          json['identity_date_of_birthday'] as String? ?? "",
      identityPlaceOfBirthday:
          json['identity_place_of_birthday'] as String? ?? "",
      identityNationalNumber: json['identity_national_number'] as String? ?? "",
      identitySurname: json['identity_surname'] as String? ?? "",
      identityGender: json['identity_gender'] as String? ?? "",
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentsCreateTravelerModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$InputCreateTravelerModelImplToJson(
        _$InputCreateTravelerModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'whatsapp_number': instance.whatsAppNumber,
      'state_id': instance.stateId,
      'country_id': instance.countryId,
      'office_id': instance.officeId,
      'vip': instance.vip,
      'type': instance.type,
      'city': instance.city,
      'street': instance.street,
      'street2': instance.street2,
      'reference': instance.reference,
      'passport_name': instance.passportName,
      'e_passport_name': instance.ePassportName,
      'passport_surname': instance.passportSurname,
      'e_passport_surname': instance.ePassportSurname,
      'passport_mother_name': instance.passportMotherName,
      'e_passport_mother_name': instance.ePassportMotherName,
      'passport_father_name': instance.passportFatherName,
      'e_passport_father_name': instance.ePassportFatherName,
      'passport_date_of_birthday': instance.passportDateOfBirthday,
      'e_passport_date_of_birthday': instance.ePassportDateOfBirthday,
      'passport_place_of_birthday': instance.passportPlaceOfBirthday,
      'e_passport_place_of_birthday': instance.ePassportPlaceOfBirthday,
      'passport_gender': instance.passportGender,
      'e_passport_gender': instance.ePassportGender,
      'passport_number_of_passport': instance.passportNumberOfPassport,
      'e_passport_number_of_passport': instance.ePassportNumberOfPassport,
      'passport_release_date': instance.passportReleaseDate,
      'e_passport_release_date': instance.ePassportReleaseDate,
      'passport_place_of_issue': instance.passportPlaceOfIssue,
      'e_passport_place_of_issue': instance.ePassportPlaceOfIssue,
      'passport_expiration_date': instance.passportExpirationDate,
      'e_passport_expiration_date': instance.ePassportExpirationDate,
      'passport_national_number': instance.passportNationalNumber,
      'e_passport_national_number': instance.ePassportNationalNumber,
      'passport_job': instance.passportJob,
      'e_passport_job': instance.ePassportJob,
      'passport_file': instance.passportFile,
      'identity_father': instance.identityFather,
      'identity_mother': instance.identityMother,
      'identity_date_of_birthday': instance.identityDateOfBirthday,
      'identity_place_of_birthday': instance.identityPlaceOfBirthday,
      'identity_national_number': instance.identityNationalNumber,
      'identity_surname': instance.identitySurname,
      'identity_gender': instance.identityGender,
      'attachments': instance.attachments,
    };

_$AttachmentsCreateTravelerModelImpl
    _$$AttachmentsCreateTravelerModelImplFromJson(Map<String, dynamic> json) =>
        _$AttachmentsCreateTravelerModelImpl(
          name: json['name'] as String? ?? "",
          type: (json['type'] as num?)?.toInt() ?? 0,
          file: (json['file'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$AttachmentsCreateTravelerModelImplToJson(
        _$AttachmentsCreateTravelerModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'file': instance.file,
    };
