import 'dart:convert';
import 'dart:math';

import 'package:alhazem/core/utils/extensions/extensions.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/bases/models/static_models/static_model.dart';
import '../../../domain/models/input_create_traveler_model/input_create_traveler_model.dart';

class InputValueCreateCubit extends Cubit<int> {
  InputValueCreateCubit(super.initialState);

// Basic Info
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController whatsAppController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController street2Controller = TextEditingController();

// Passport Info
  TextEditingController namePassportController = TextEditingController();
  TextEditingController eNamePassportController = TextEditingController();
  TextEditingController surnamePassportController = TextEditingController();
  TextEditingController eSurnamePassportController = TextEditingController();
  TextEditingController fatherNamePassportController = TextEditingController();
  TextEditingController eFatherNamePassportController = TextEditingController();
  TextEditingController motherNamePassportController = TextEditingController();
  TextEditingController eMotherNamePassportController = TextEditingController();
  TextEditingController dobPassportController = TextEditingController();
  TextEditingController birthPlacePassportController = TextEditingController();
  TextEditingController eBirthPlacePassportController = TextEditingController();

  TextEditingController numberPassportController = TextEditingController();
  TextEditingController placeIssuePassportController = TextEditingController();
  TextEditingController nationalNumberPassportController =
      TextEditingController();
  TextEditingController jobPassportController = TextEditingController();

  TextEditingController issuedDatePassportController = TextEditingController();
  TextEditingController expirationDatePassportController =
      TextEditingController();

//Identity
  TextEditingController nameIdentityController = TextEditingController();
  TextEditingController surnameIdentityController = TextEditingController();
  TextEditingController fatherNameIdentityController = TextEditingController();
  TextEditingController motherNameIdentityController = TextEditingController();
  TextEditingController dobIdentityController = TextEditingController();
  TextEditingController birthPlaceIdentityController = TextEditingController();
  TextEditingController nationalNumberIdentityController =
      TextEditingController();

//select type Attachments
  List<StaticModel> attachmentsTypes = [];
  List<StaticModel> attachmentsTypesTemp = [];

//upload attachments
  List<AttachmentsCreateTravelerModel> attachmentsUpload = [];

  StaticModel? countrySelected;
  StaticModel? genderSelected;
  void setCountry(StaticModel? country) {
    countrySelected = country;
    emit(countrySelected.hashCode);
  }

  StaticModel? stateSelected;
  void setState(StaticModel? state) {
    stateSelected = state;
    emit(stateSelected.hashCode);
  }

  //public info

  void setDob(DateTime? dateTime) {
    if (dateTime != null) {
      dobPassportController.text = dateTime.toFormattedString();
    }
    emit(dobPassportController.text.hashCode);
  }

  void setGender(StaticModel? gender) {
    genderSelected = gender;
    emit(genderSelected.hashCode);
  }

  void setIssuedDate(DateTime? dateTime) {
    if (dateTime != null) {
      issuedDatePassportController.text = dateTime.toFormattedString();
    }
    emit(issuedDatePassportController.text.hashCode);
  }

  void setExpirationDate(DateTime? dateTime) {
    if (dateTime != null) {
      expirationDatePassportController.text = dateTime.toFormattedString();
    }
    emit(expirationDatePassportController.text.hashCode);
  }

  //Identity
  void setDobIdentity(DateTime? dateTime) {
    if (dateTime != null) {
      dobIdentityController.text = dateTime.toFormattedString();
    }
    emit(dobIdentityController.text.hashCode);
  }

  //attachments
  void setAttachmentsTypeTemp() {
    attachmentsTypesTemp.clear();
    attachmentsTypesTemp.addAll(attachmentsTypes);
    emit(Random().nextInt(100));
  }

  void addAttachmentType(StaticModel attachment) {
    attachmentsTypesTemp.add(attachment);
    emit(Random().nextInt(100));
  }

  void removeAttachmentType(StaticModel attachment) {
    attachmentsTypesTemp.remove(attachment);
    emit(Random().nextInt(100));
  }

  void setAttachmentsType() {
    attachmentsTypes.clear();
    attachmentsTypes.addAll(attachmentsTypesTemp);
    emit(Random().nextInt(100));
  }

//Upload attachments
  void addUploadAttachments(AttachmentsCreateTravelerModel attachment) {
    attachmentsUpload.add(attachment);
    emit(Random().nextInt(100));
  }
}
