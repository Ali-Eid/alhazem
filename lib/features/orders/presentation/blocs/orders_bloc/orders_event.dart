part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.getOrders(
      {required String type, required int page}) = _GetOrders;
  const factory OrdersEvent.getOrderDetails({required int orderId}) =
      _GetOrderDetails;
}
