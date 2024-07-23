part of 'check_attachments_bloc.dart';

@freezed
class CheckAttachmentsEvent with _$CheckAttachmentsEvent {
  const factory CheckAttachmentsEvent.checkAttachments(
      {required int serviceId, required List<int> travelerIds}) = _Started;
}
