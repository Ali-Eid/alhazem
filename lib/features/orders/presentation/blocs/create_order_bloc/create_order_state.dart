part of 'create_order_bloc.dart';

@freezed
class CreateOrderState with _$CreateOrderState {
  const factory CreateOrderState.initial() = _Initial;
  const factory CreateOrderState.loading() = _Loading;
  const factory CreateOrderState.success(
      {required ResponseModel<CreateOrderModel> success}) = _Success;
  const factory CreateOrderState.error({required String message}) = _Error;
}
