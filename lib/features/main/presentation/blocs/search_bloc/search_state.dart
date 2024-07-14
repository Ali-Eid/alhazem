part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.laoding() = _Loading;
  const factory SearchState.loaded(
      {ResponsePaginationModel<List<ContactModel>>? contacts,
      @Default(false) bool isLoading}) = _Loaded;

  const factory SearchState.error({required String message}) = _Error;
}
