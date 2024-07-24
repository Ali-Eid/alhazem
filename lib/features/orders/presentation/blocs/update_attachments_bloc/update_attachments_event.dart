part of 'update_attachments_bloc.dart';

@freezed
class UpdateAttachmentsEvent with _$UpdateAttachmentsEvent {
  const factory UpdateAttachmentsEvent.updateAttachments(
      {required InputUpdateAttachmentsModel input}) = _UpdateAttachments;
  const factory UpdateAttachmentsEvent.confirmWaiting(
      {required InputConfirmWaitingModel input}) = _ConfirmWaitingOrder;
}
