part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.createPayment(
      {required InputCreatePaymentModel input}) = _Started;
}
