part of 'contact_bloc.dart';

@freezed
class ContactEvent with _$ContactEvent {
  const factory ContactEvent.getContact({EntityType? type}) = _GetContact;
  const factory ContactEvent.getContactPagination(
      {EntityType? type, required int page}) = _GetContactPagination;
}
