part of 'create_order_bloc.dart';

@freezed
class CreateOrderEvent with _$CreateOrderEvent {
  const factory CreateOrderEvent.createOrder(
      {required InputCreateOrderModel input}) = _CreateOrder;
}
