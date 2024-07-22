part of 'confirm_waiting_order_bloc.dart';

@freezed
class ConfirmWaitingOrderEvent with _$ConfirmWaitingOrderEvent {
  const factory ConfirmWaitingOrderEvent.confirmWaiting(
      {required InputConfirmWaitingModel input}) = _ConfirmWaitingOrder;
}
