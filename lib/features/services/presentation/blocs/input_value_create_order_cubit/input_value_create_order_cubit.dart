import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:alhazem/features/orders/domain/models/input_models/input_create_model/input_create_order_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../contacts/domain/models/contact_model/contact_model.dart';
import '../../../../contacts/domain/models/input_create_traveler_model/input_create_traveler_model.dart';
import '../../../../contacts/domain/models/missed_attachments_model/input_model/input_missed_attachment_model.dart';
import '../../../../orders/domain/models/create_order_model/create_order_model.dart';

class InputValueCreateOrderCubit extends Cubit<int> {
  InputValueCreateOrderCubit(super.initialState);

  InputCreateOrderModel model = InputCreateOrderModel();

  int serviceId = 0;
  void setServiceId(int id) {
    serviceId = id;
    emit(id.hashCode);
  }

//-----Tabs------
  int currentIndex = 0;
  void nextIndex(int index) {
    if (index > 2) {
      currentIndex = 2;
      emit(index.hashCode);
    } else {
      currentIndex++;
      emit(index.hashCode);
    }
  }

  void previousIndex(int index) {
    if (index > 0) {
      currentIndex--;
      emit(index.hashCode);
    } else {
      currentIndex = 0;
      emit(index.hashCode);
    }
  }

//---Partner-----
  TextEditingController partnerController = TextEditingController();
  bool isShowPartner = false;
  ContactModel? partnerContact;

  //---Traveler-----
  Set<TravelerInputOrderModel> travelers = {};
  TextEditingController travelerController = TextEditingController();
  bool isShowTraveler = false;
  Set<ContactModel> travelersContact = {};

  //------payment------------
  TextEditingController amountReceived = TextEditingController();
  bool notPaid = false;

  void setPartnerId(ContactModel contact) {
    travelersContact.clear();
    travelers.clear();
    partnerContact = contact;
    model = model.copyWith(partnerId: contact.id);
    emit(model.partnerId);
  }

  void setShowPartner(bool isShow) {
    isShowPartner = isShow;
    emit(isShow.hashCode);
  }
//------------------

//---Traveler-----
  void addTravelersId(ContactModel traveler) {
    travelersContact.add(traveler);
    travelers.add(TravelerInputOrderModel(travelId: traveler.id));
    emit(traveler.id);
  }

  void removeTravelers(ContactModel traveler) {
    travelersContact.remove(traveler);
    travelers.remove(TravelerInputOrderModel(travelId: traveler.id));
    emit(traveler.hashCode);
  }

  void setShowTraveler(bool isShow) {
    isShowTraveler = isShow;
    emit(isShow.hashCode);
  }

  void setTravelersId() {
    model = model.copyWith(travelers: travelers.toList());
    emit(model.partnerId);
  }
  //-----------------

  //------payment--------
  void changeIsPaid(bool? isPaid) {
    amountReceived.clear();
    notPaid = isPaid ?? false;
    emit(isPaid.hashCode);
  }

  //update attachments
  int? orderId;
  void setOrderId(int id) {
    orderId = id;
    emit(Random().nextInt(100));
  }

  List<InputMissedAttachmentModel> updateAttachmentsUpload = List.from([]);

  void addUploadAttachments(
      int travelerId, int id, String name, List<XFile> files) {
    if (files.isNotEmpty) {
      var temp = updateAttachmentsUpload
          .firstWhere(
            (element) => element.travelerId == travelerId,
            orElse: () {
              return InputMissedAttachmentModel();
            },
          )
          .attachments
          .any(
            (element) => element.type == id,
          );
      if (!temp) {
        List<AttachmentsCreateTravelerModel> attachmentsUpload = [];
        attachmentsUpload.add(AttachmentsCreateTravelerModel(
            type: id,
            name: name,
            file: files.map(
              (e) {
                return base64Encode(File(e.path).readAsBytesSync());
              },
            ).toList()));
        if (updateAttachmentsUpload
            .any((element) => element.travelerId == travelerId)) {
          var travelTemp = updateAttachmentsUpload
              .firstWhere((element) => element.travelerId == travelerId);
          List<AttachmentsCreateTravelerModel> unmodifiable = [];
          unmodifiable.addAll(travelTemp.attachments);
          unmodifiable.addAll(attachmentsUpload);
          travelTemp = travelTemp.copyWith(attachments: unmodifiable);
          var index = updateAttachmentsUpload
              .indexWhere((element) => element.travelerId == travelerId);
          if (index != -1) {
            updateAttachmentsUpload[index] = travelTemp;
          }
        } else {
          updateAttachmentsUpload.add(InputMissedAttachmentModel(
              travelerId: travelerId, attachments: attachmentsUpload));
        }
      } else {
        var travelerList = updateAttachmentsUpload.firstWhere(
          (element) => element.travelerId == travelerId,
          orElse: () {
            return InputMissedAttachmentModel();
          },
        );
        List<AttachmentsCreateTravelerModel> listTemp = [];
        listTemp.addAll(travelerList.attachments);
        listTemp.remove(travelerList.attachments.firstWhere(
          (element) => element.type == id,
        ));
        List<AttachmentsCreateTravelerModel> attachmentsUpload = [];
        attachmentsUpload.add(AttachmentsCreateTravelerModel(
            type: id,
            name: name,
            file: files.map(
              (e) {
                return base64Encode(File(e.path).readAsBytesSync());
              },
            ).toList()));
        List<AttachmentsCreateTravelerModel> unmodifiable = [];
        unmodifiable.addAll(listTemp);
        unmodifiable.addAll(attachmentsUpload);
        travelerList = travelerList.copyWith(attachments: unmodifiable);
        var index = updateAttachmentsUpload
            .indexWhere((element) => element.travelerId == travelerId);
        if (index != -1) {
          updateAttachmentsUpload[index] = travelerList;
        }
        // updateAttachmentsUpload.add(InputMissedAttachmentModel(
        //     travelerId: travelerId, attachments: attachmentsUpload));
      }
    }

    emit(Random().nextInt(100));
  }
}
