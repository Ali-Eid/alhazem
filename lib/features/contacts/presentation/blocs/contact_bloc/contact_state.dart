part of 'contact_bloc.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState.initial() = _Initial;
  const factory ContactState.loading() = _Loading;
  const factory ContactState.loaded(
      {required ResponsePaginationModel<List<ContactModel>> contacts,
      @Default(false) bool? isLoading}) = _Loaded;
  const factory ContactState.loadedContactDetails(
          {required ResponseModel<List<ContactDetailsModel>> contact}) =
      _LoadedContactDetails;
  const factory ContactState.error({required String message}) = _Error;
}
