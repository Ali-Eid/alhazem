part of 'service_bloc.dart';

@freezed
class ServiceState with _$ServiceState {
  const factory ServiceState.loading() = _Loading;
  //type services
  const factory ServiceState.loadedServicesTypes({
    required List<TypeServiceModel> types,
  }) = _LoadedServicesTypes;
  //services
  const factory ServiceState.loadedServices({
    required ResponsePaginationModel<List<ServiceModel>> services,
  }) = _LoadedServices;
  //service details
  const factory ServiceState.loadedServiceDetails({
    required ResponseModel<List<ServiceDetailsModel>> services,
  }) = _LoadedServiceDetails;
  //error
  const factory ServiceState.error({required String message}) = _Error;
}
