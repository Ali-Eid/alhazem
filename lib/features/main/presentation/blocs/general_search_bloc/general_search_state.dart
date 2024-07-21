part of 'general_search_bloc.dart';

@freezed
class GeneralSearchState with _$GeneralSearchState {
  const factory GeneralSearchState.initial() = _Initial;
  const factory GeneralSearchState.loading() = _Loading;
  const factory GeneralSearchState.loadedSearchOrders(
          {required ResponsePaginationModel<List<OrderModel>> orders}) =
      _LoadedSearchOrders;

  const factory GeneralSearchState.loadedSearchServices(
          {required ResponsePaginationModel<List<ServiceModel>> services}) =
      _LoadedSearchServices;

  const factory GeneralSearchState.loadedSearchContacts(
          {required ResponsePaginationModel<List<ContactModel>> contacts}) =
      _LoadedSearchContacts;

  const factory GeneralSearchState.error({required String message}) = _Error;
}
