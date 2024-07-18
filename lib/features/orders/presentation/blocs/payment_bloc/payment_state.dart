part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.loading() = _Loading;
  const factory PaymentState.success(
      {required ResponseModel<CreatePaymentModel> success}) = _Success;
  const factory PaymentState.error({required String message}) = _Error;
}
