import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/bases/models/static_models/static_model.dart';

class InputValueCreateCubit extends Cubit<int> {
  InputValueCreateCubit(super.initialState);

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController whatsAppController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController street2Controller = TextEditingController();
  StaticModel? countrySelected;
  void setCountry(StaticModel? country) {
    countrySelected = country;
    emit(countrySelected.hashCode);
  }

  StaticModel? stateSelected;
  void setState(StaticModel? state) {
    stateSelected = state;
    emit(stateSelected.hashCode);
  }
}
