part of 'update_attachments_bloc.dart';

@freezed
class UpdateAttachmentsState with _$UpdateAttachmentsState {
  const factory UpdateAttachmentsState.initial() = _Initial;
  const factory UpdateAttachmentsState.loading() = _Loading;
  const factory UpdateAttachmentsState.success(
      {required ResponseModel success}) = _Success;
  const factory UpdateAttachmentsState.confirmed(
      {required ResponseModel<CreateOrderModel> confirmed}) = _ConfirmedOrder;
  const factory UpdateAttachmentsState.error({required String message}) =
      _Error;
}
