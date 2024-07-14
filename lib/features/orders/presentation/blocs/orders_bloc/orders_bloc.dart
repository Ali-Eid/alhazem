import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/features/orders/domain/usecases/order_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/order_model/order_model.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final GetOrdersUsecase getOrdersUsecase;
  String? typeOrder;
  OrdersBloc({required this.getOrdersUsecase}) : super(const _Initial()) {
    on<OrdersEvent>((event, emit) async {
      await event.map(
        getOrders: (value) async {
          typeOrder = value.type;
          emit(const OrdersState.loading());
          final failureOrOrders = await getOrdersUsecase
              .execute((type: value.type, page: value.page));
          failureOrOrders.when(
            (success) {
              emit(OrdersState.loaded(orders: success));
            },
            (error) {
              emit(OrdersState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
