part of 'confirm_waiting_order_bloc.dart';

@freezed
class ConfirmWaitingOrderState with _$ConfirmWaitingOrderState {
  const factory ConfirmWaitingOrderState.initial() = _Initial;
  const factory ConfirmWaitingOrderState.loading() = _Loading;
  const factory ConfirmWaitingOrderState.success(
      {required ResponseModel<CreateOrderModel> success}) = _Success;
  const factory ConfirmWaitingOrderState.error({required String message}) =
      _Error;
}
