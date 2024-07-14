import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/features/orders/domain/models/input_models/input_create_model/input_create_order_model.dart';
import 'package:alhazem/features/orders/domain/usecases/order_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/create_order_model/create_order_model.dart';

part 'create_order_event.dart';
part 'create_order_state.dart';
part 'create_order_bloc.freezed.dart';

class CreateOrderBloc extends Bloc<CreateOrderEvent, CreateOrderState> {
  final CreateOrderUsecase createOrderUsecase;
  CreateOrderBloc({required this.createOrderUsecase})
      : super(const _Initial()) {
    on<CreateOrderEvent>((event, emit) async {
      await event.map(
        createOrder: (value) async {
          emit(const CreateOrderState.loading());
          final failureOrSuccess =
              await createOrderUsecase.execute(value.input);
          failureOrSuccess.when(
            (success) {
              emit(CreateOrderState.success(success: success));
            },
            (error) {
              emit(CreateOrderState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
