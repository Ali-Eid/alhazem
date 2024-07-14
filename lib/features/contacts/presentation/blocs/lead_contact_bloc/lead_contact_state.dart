part of 'lead_contact_bloc.dart';

@freezed
class LeadContactState with _$LeadContactState {
  const factory LeadContactState.initial() = _Initial;
  const factory LeadContactState.loading() = _Loading;
  const factory LeadContactState.loaded(
      {required ResponseModel<CreateLeadModel> success}) = _Loaded;
  const factory LeadContactState.error({required String message}) = _Error;
}
