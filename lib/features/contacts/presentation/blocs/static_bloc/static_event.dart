part of 'static_bloc.dart';

@freezed
class StaticEvent with _$StaticEvent {
  const factory StaticEvent.getAttachmentsType() = _GetAttachmentsType;
  const factory StaticEvent.getCountries() = _GetCountries;
  const factory StaticEvent.getStates({required int countryId}) = _GetStates;
}
