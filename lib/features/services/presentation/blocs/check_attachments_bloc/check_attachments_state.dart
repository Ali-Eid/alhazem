part of 'check_attachments_bloc.dart';

@freezed
class CheckAttachmentsState with _$CheckAttachmentsState {
  const factory CheckAttachmentsState.initial() = _Initial;
  const factory CheckAttachmentsState.loading() = _Loading;
  const factory CheckAttachmentsState.success(
      {required ResponseModel<List<AttachmentsRequiredModel>>
          attachments}) = _Success;
  const factory CheckAttachmentsState.error({required String message}) = _Error;
}
