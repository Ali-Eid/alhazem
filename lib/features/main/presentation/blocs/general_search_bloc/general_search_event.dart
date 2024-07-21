part of 'general_search_bloc.dart';

@freezed
class GeneralSearchEvent with _$GeneralSearchEvent {
  const factory GeneralSearchEvent.generalSearch(
      {required String type,
      required String value,
      required int page}) = _GeneralSearch;
}
