import 'package:alhazem/features/services/domain/usecases/service_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/bases/models/response_model/response_model.dart';
import '../../../../../core/bases/models/static_models/static_model.dart';
import '../../../domain/models/service_details_model.dart/service_details_model.dart';
import '../../../domain/models/service_model/service_model.dart';
import '../../../domain/models/type_service_model/type_service_model.dart';

part 'service_event.dart';
part 'service_state.dart';
part 'service_bloc.freezed.dart';

class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  final GetServicesUsecase getServicesUsecase;
  final GetTypeServicesUsecase getTypeServicesUsecase;
  final GetServicesDetailsUsecase getServicesDetailsUsecase;
  int? totalPages;
  int totalCounts = 0;
  ServiceBloc(
      {required this.getServicesUsecase,
      required this.getTypeServicesUsecase,
      required this.getServicesDetailsUsecase})
      : super(const ServiceState.loading()) {
    on<ServiceEvent>((event, emit) async {
      await event.map(
        getTypeServices: (value) async {
          emit(const ServiceState.loading());
          final failureOrSuccess = await getTypeServicesUsecase.execute();
          failureOrSuccess.when(
            (success) {
              emit(ServiceState.loadedServicesTypes(types: success.data));
            },
            (error) {
              emit(ServiceState.error(message: error.message));
            },
          );
        },
        getServices: (value) async {
          emit(const ServiceState.loading());
          final failureOrSuccess = await getServicesUsecase
              .execute((serviceTypeId: value.serviceTypeId, page: value.page));
          failureOrSuccess.when(
            (success) {
              totalPages = success.meta.totalPages;
              totalCounts = success.meta.itemsCount;
              emit(ServiceState.loadedServices(services: success));
            },
            (error) {
              emit(ServiceState.error(message: error.message));
            },
          );
        },
        getServiceDetails: (value) async {
          emit(const ServiceState.loading());
          final failureOrSuccess = await getServicesDetailsUsecase
              .execute((serviceId: value.serviceId, leadId: value.leadId));
          failureOrSuccess.when(
            (success) {
              emit(ServiceState.loadedServiceDetails(services: success));
            },
            (error) {
              emit(ServiceState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
