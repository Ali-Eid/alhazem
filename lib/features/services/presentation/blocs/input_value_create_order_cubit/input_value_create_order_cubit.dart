import 'package:alhazem/features/orders/domain/models/input_models/input_create_model/input_create_order_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../../contacts/domain/models/contact_model/contact_model.dart';

class InputValueCreateOrderCubit extends Cubit<int> {
  InputValueCreateOrderCubit(super.initialState);

  InputCreateOrderModel model = InputCreateOrderModel();

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
}
