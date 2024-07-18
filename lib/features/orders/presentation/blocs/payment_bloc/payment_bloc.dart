import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/features/orders/domain/models/create_payment_model/input_create_payment_model/input_create_payment_model.dart';
import 'package:alhazem/features/orders/domain/usecases/order_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/create_payment_model/create_payment_model.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final CreatePaymentUsecase createPaymentUsecase;
  PaymentBloc({required this.createPaymentUsecase}) : super(const _Initial()) {
    on<PaymentEvent>((event, emit) async {
      await event.map(
        createPayment: (value) async {
          emit(const PaymentState.loading());
          final failureOrSuccess =
              await createPaymentUsecase.execute(value.input);
          failureOrSuccess.when(
            (success) {
              emit(PaymentState.success(success: success));
            },
            (error) {
              emit(PaymentState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
