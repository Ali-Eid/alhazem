part of 'contact_bloc.dart';

@freezed
class ContactEvent with _$ContactEvent {
  const factory ContactEvent.getContact(
      {required EntityType type, required int page}) = _GetContact;
  const factory ContactEvent.getContactById({required int contactId}) =
      _GetContactById;
  const factory ContactEvent.editContact({required ContactModel model}) =
      _EditContact;
}
