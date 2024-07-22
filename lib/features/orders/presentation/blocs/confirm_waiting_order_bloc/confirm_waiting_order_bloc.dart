import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/create_order_model/create_order_model.dart';
import '../../../domain/models/input_models/input_confirm_waiting_model/input_confirm_waiting_model.dart';
import '../../../domain/usecases/order_usecases.dart';

part 'confirm_waiting_order_event.dart';
part 'confirm_waiting_order_state.dart';
part 'confirm_waiting_order_bloc.freezed.dart';

class ConfirmWaitingOrderBloc
    extends Bloc<ConfirmWaitingOrderEvent, ConfirmWaitingOrderState> {
  final ConfirmWaitingOrderUsecase confirmWaitingOrderUsecase;
  ConfirmWaitingOrderBloc({required this.confirmWaitingOrderUsecase})
      : super(const _Initial()) {
    on<ConfirmWaitingOrderEvent>((event, emit) async {
      await event.map(
        confirmWaiting: (value) async {
          emit(const ConfirmWaitingOrderState.loading());
          final failureOrSuccess =
              await confirmWaitingOrderUsecase.execute(value.input);
          failureOrSuccess.when(
            (success) {
              emit(ConfirmWaitingOrderState.success(success: success));
            },
            (error) {
              emit(ConfirmWaitingOrderState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
