part of 'traveler_bloc.dart';

@freezed
class TravelerEvent with _$TravelerEvent {
  const factory TravelerEvent.createTraveler(
      {required InputCreateTravelerModel input}) = _CreateTraveler;
}
