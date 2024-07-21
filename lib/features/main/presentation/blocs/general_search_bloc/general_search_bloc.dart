import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/features/main/domain/usecases/general_search_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/bases/enums/keys_filter_type.dart';
import '../../../../contacts/domain/models/contact_model/contact_model.dart';
import '../../../../orders/domain/models/order_model/order_model.dart';
import '../../../../services/domain/models/service_model/service_model.dart';

part 'general_search_event.dart';
part 'general_search_state.dart';
part 'general_search_bloc.freezed.dart';

class GeneralSearchBloc extends Bloc<GeneralSearchEvent, GeneralSearchState> {
  final GeneralSearchContactUsecase searchContactUsecase;
  final GeneralSearchOrdersUsecase searchOrdersUsecase;
  final GeneralSearchServicesUsecase searchServicesUsecase;
  int? totalPages;
  int totalCounts = 0;
  GeneralSearchBloc(
      {required this.searchContactUsecase,
      required this.searchOrdersUsecase,
      required this.searchServicesUsecase})
      : super(const _Initial()) {
    on<GeneralSearchEvent>((event, emit) async {
      await event.map(
        generalSearch: (value) async {
          totalPages = null;
          totalCounts = 0;
          emit(const GeneralSearchState.loading());
          if (value.type == KeysFilterType.order.name) {
            final failureOrSuccess = await searchOrdersUsecase.execute(
                (name: value.value, type: value.type, page: value.page));
            failureOrSuccess.when(
              (success) {
                totalPages = success.meta.totalPages;
                totalCounts = success.meta.itemsCount;
                emit(GeneralSearchState.loadedSearchOrders(orders: success));
              },
              (error) {
                emit(GeneralSearchState.error(message: error.message));
              },
            );
          } else if (value.type == KeysFilterType.service.name) {
            totalPages = null;
            totalCounts = 0;
            final failureOrSuccess = await searchServicesUsecase.execute(
                (name: value.value, type: value.type, page: value.page));
            failureOrSuccess.when(
              (success) {
                totalPages = success.meta.totalPages;
                totalCounts = success.meta.itemsCount;
                emit(
                    GeneralSearchState.loadedSearchServices(services: success));
              },
              (error) {
                emit(GeneralSearchState.error(message: error.message));
              },
            );
          } else if (value.type == KeysFilterType.contact.name) {
            totalPages = null;
            totalCounts = 0;
            final failureOrSuccess = await searchContactUsecase.execute(
                (name: value.value, type: value.type, page: value.page));
            failureOrSuccess.when(
              (success) {
                totalPages = success.meta.totalPages;
                totalCounts = success.meta.itemsCount;
                emit(
                    GeneralSearchState.loadedSearchContacts(contacts: success));
              },
              (error) {
                emit(GeneralSearchState.error(message: error.message));
              },
            );
          }
        },
      );
    });
  }
}
