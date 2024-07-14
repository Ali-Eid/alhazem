part of 'lead_contact_bloc.dart';

@freezed
class LeadContactEvent with _$LeadContactEvent {
  const factory LeadContactEvent.createLead({required InputLeadModel input}) =
      _CreateLead;
  const factory LeadContactEvent.logoutLead() = _LogoutLead;
}
