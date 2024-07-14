import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/features/services/domain/models/service_details_model.dart/service_details_model.dart';
import 'package:alhazem/features/services/domain/usecases/check_price_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/check_price_model/check_price_model.dart';

part 'check_price_event.dart';
part 'check_price_state.dart';
part 'check_price_bloc.freezed.dart';

class CheckPriceBloc extends Bloc<CheckPriceEvent, CheckPriceState> {
  final CheckPriceUsecase checkPriceUsecase;
  List<VariantValueModel> variantsValue = [];
  double price = 0;
  double newPrice = 0;
  CheckPriceBloc({required this.checkPriceUsecase}) : super(const _Initial()) {
    on<CheckPriceEvent>((event, emit) async {
      await event.map(
        checkPrice: (value) async {
          newPrice = price;
          emit(const CheckPriceState.loading());
          for (int i = 0; i < variantsValue.length; i++) {
            if (variantsValue[i].attributeId == value.variant.attributeId) {
              variantsValue[i] = value.variant;
            }
          }
          for (var element in variantsValue) {
            newPrice += element.price;
          }
          emit(CheckPriceState.loaded(price: newPrice));
        },
        checkPriceInitial: (value) async {
          // variantsValue.clear();
          newPrice = price;
          emit(const CheckPriceState.loading());
          for (var element in variantsValue) {
            newPrice += element.price;
          }
          emit(CheckPriceState.loaded(price: newPrice));
        },
      );
    });
  }
}
