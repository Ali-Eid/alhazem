part of 'service_bloc.dart';

@freezed
class ServiceEvent with _$ServiceEvent {
  const factory ServiceEvent.getTypeServices() = _GetTypeServices;
  const factory ServiceEvent.getServices(
      {required int serviceTypeId, required int page}) = _GetServices;
  const factory ServiceEvent.getServiceDetails(
      {required int serviceId, required int leadId}) = _GetServiceDetails;
}
