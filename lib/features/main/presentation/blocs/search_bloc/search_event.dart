part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchContract(
      {required String name,
      required int page,
      required bool isTraveler}) = _SearchContract;
  const factory SearchEvent.searchContractPagination(
      {required String name,
      required bool isTraveler}) = _SearchContractPagination;
}
