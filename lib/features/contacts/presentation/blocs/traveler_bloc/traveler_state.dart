part of 'traveler_bloc.dart';

@freezed
class TravelerState with _$TravelerState {
  const factory TravelerState.initial() = _Initial;
  const factory TravelerState.loading() = _Loading;
  const factory TravelerState.loaded(
      {required ResponseModel<ContactModel> contact}) = _Loaded;
  const factory TravelerState.error({required String message}) = _Error;
}
