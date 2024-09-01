// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactDetailsModelImpl _$$ContactDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactDetailsModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      type: json['type'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      isLead: json['is_lead'] as bool? ?? false,
      whatsappNumber: json['whatsapp_number'] as String? ?? "",
      vip: json['vip'] as bool? ?? false,
      city: json['city'] as String? ?? "",
      street: json['street'] as String? ?? "",
      street2: json['street2'] as String? ?? "",
      reference: json['reference'] as String? ?? "",
      office: json['office'] == null
          ? const StaticModel()
          : StaticModel.fromJson(json['office'] as Map<String, dynamic>),
      state: json['state_id'] == null
          ? const StaticModel()
          : StaticModel.fromJson(json['state_id'] as Map<String, dynamic>),
      country: json['country_id'] == null
          ? const StaticModel()
          : StaticModel.fromJson(json['country_id'] as Map<String, dynamic>),
      identityFather: json['identity_father'] as String? ?? "",
      identityMother: json['identity_mother'] as String? ?? "",
      identityDateOfBirthday:
          json['identity_date_of_birthday'] as String? ?? "",
      identityPlaceOfBirthday:
          json['identity_place_of_birthday'] as String? ?? "",
      identityNationalNumber: json['identity_national_number'] as String? ?? "",
      identitySurname: json['identity_surname'] as String? ?? "",
      identityGender: json['identity_gender'] as String? ?? "",
      passport: (json['passport'] as List<dynamic>?)
              ?.map((e) => PassportModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ContactDetailsModelImplToJson(
        _$ContactDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'phone': instance.phone,
      'is_lead': instance.isLead,
      'whatsapp_number': instance.whatsappNumber,
      'vip': instance.vip,
      'city': instance.city,
      'street': instance.street,
      'street2': instance.street2,
      'reference': instance.reference,
      'office': instance.office,
      'state_id': instance.state,
      'country_id': instance.country,
      'identity_father': instance.identityFather,
      'identity_mother': instance.identityMother,
      'identity_date_of_birthday': instance.identityDateOfBirthday,
      'identity_place_of_birthday': instance.identityPlaceOfBirthday,
      'identity_national_number': instance.identityNationalNumber,
      'identity_surname': instance.identitySurname,
      'identity_gender': instance.identityGender,
      'passport': instance.passport,
    };

_$PassportModelImpl _$$PassportModelImplFromJson(Map<String, dynamic> json) =>
    _$PassportModelImpl(
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
    );

Map<String, dynamic> _$$PassportModelImplToJson(_$PassportModelImpl instance) =>
    <String, dynamic>{
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
    };
