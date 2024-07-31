import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:alhazem/core/utils/extensions/extensions.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/bases/models/static_models/static_model.dart';
import '../../../domain/models/input_create_traveler_model/input_create_traveler_model.dart';

class InputValueCreateCubit extends Cubit<int> {
  InputValueCreateCubit(super.initialState);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

// Basic Info
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController whatsAppController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController street2Controller = TextEditingController();
  TextEditingController noteController = TextEditingController();
  bool? isVip = false;

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

  bool fromBarcode = true;
  bool resetInfoBarcode = false;
  void setFromBarcode(bool scan) {
    resetInfoBarcode = false;
    fromBarcode = scan;
    emit(Random().nextInt(100));
  }

  void parseBarcode(String barcode) {
    List<String> parts = barcode.split('#');
    if (parts.length >= 6) {
      resetInfoBarcode = true;
      nameIdentityController.text = parts[0];
      surnameIdentityController.text = parts[1];
      fatherNameIdentityController.text = parts[2];
      motherNameIdentityController.text = parts[3];
      dobIdentityController.text = parts[4].dateOfBirth;
      birthPlaceIdentityController.text = parts[4].placeOfBirth;
      nationalNumberIdentityController.text = parts[5];
      emit(Random().nextInt(100));
    } else {
      resetInfoBarcode = false;
      nameIdentityController.text = "";
      surnameIdentityController.text = "";
      fatherNameIdentityController.text = "";
      motherNameIdentityController.text = "";
      dobIdentityController.text = "".dateOfBirth;
      birthPlaceIdentityController.text = "".placeOfBirth;
      nationalNumberIdentityController.text = "";
      emit(Random().nextInt(100));
    }
  }

  void resetBarcode() {
    resetInfoBarcode = false;
    nameIdentityController.text = "";
    surnameIdentityController.text = "";
    fatherNameIdentityController.text = "";
    motherNameIdentityController.text = "";
    dobIdentityController.text = "";
    birthPlaceIdentityController.text = "";
    nationalNumberIdentityController.text = "";
    emit(Random().nextInt(100));
  }

//select type Attachments
  List<StaticModel> attachmentsTypes = [];
  List<StaticModel> attachmentsTypesTemp = [];

//upload attachments
  List<AttachmentsCreateTravelerModel> attachmentsUpload = [];

  StaticModel? countrySelected;
  StaticModel? genderSelected;

  void setVip(bool? vip) {
    isVip = vip;
    emit(isVip.hashCode);
  }

  void setCountry(StaticModel? country) {
    countrySelected = country;
    emit(countrySelected.hashCode);
  }

  StaticModel? stateSelected;
  StaticModel? officeSelected;
  void setState(StaticModel? state) {
    stateSelected = state;
    emit(stateSelected.hashCode);
  }

  void setOffice(StaticModel? office) {
    officeSelected = office;
    emit(officeSelected.hashCode);
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
    attachmentsUpload
        .removeWhere((att) => !attachmentsTypes.contains(att.type));
    emit(Random().nextInt(100));
  }

//Upload attachments
  // void addUploadAttachments(AttachmentsCreateTravelerModel attachment) {
  //   attachmentsUpload.add(attachment);
  //   emit(Random().nextInt(100));
  // }
  void addUploadAttachments(int id, String name, List<XFile> files) {
    if (files.isNotEmpty) {
      var temp = attachmentsUpload.firstWhere(
        (element) => element.type == id,
        orElse: () {
          return const AttachmentsCreateTravelerModel();
        },
      );
      if (temp == const AttachmentsCreateTravelerModel()) {
        attachmentsUpload.add(AttachmentsCreateTravelerModel(
            type: id,
            name: name,
            file: files.map(
              (e) {
                return base64Encode(File(e.path).readAsBytesSync());
              },
            ).toList()));
      } else {
        attachmentsUpload.remove(temp);
        attachmentsUpload.add(AttachmentsCreateTravelerModel(
            type: id,
            name: name,
            file: files.map(
              (e) {
                return base64Encode(File(e.path).readAsBytesSync());
              },
            ).toList()));
      }
    }

    emit(Random().nextInt(100));
  }

  //------Reset--------
  void resetValues() {
    // Basic Info
    nameController.clear();
    phoneController.clear();
    whatsAppController.clear();
    cityController.clear();
    streetController.clear();
    street2Controller.clear();
    noteController.clear();

    //passport
    namePassportController.clear();
    eNamePassportController.clear();
    surnamePassportController.clear();
    eSurnamePassportController.clear();
    fatherNamePassportController.clear();
    eFatherNamePassportController.clear();
    motherNamePassportController.clear();
    eMotherNamePassportController.clear();
    dobPassportController.clear();
    birthPlacePassportController.clear();
    eBirthPlacePassportController.clear();
    numberPassportController.clear();
    placeIssuePassportController.clear();
    nationalNumberPassportController.clear();
    jobPassportController.clear();
    issuedDatePassportController.clear();
    expirationDatePassportController.clear();

    //Identity
    nameIdentityController.clear();
    surnameIdentityController.clear();
    fatherNameIdentityController.clear();
    motherNameIdentityController.clear();
    dobIdentityController.clear();
    birthPlaceIdentityController.clear();
    nationalNumberIdentityController.clear();
//select type Attachments
    attachmentsTypes.clear();
    attachmentsTypesTemp.clear();

//upload attachments
    attachmentsUpload.clear();
    countrySelected = null;
    genderSelected = null;
    officeSelected = null;
    isVip = false;
    emit(Random().nextInt(100));
  }
}
