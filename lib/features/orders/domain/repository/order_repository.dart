import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/models/order_type_model/order_type_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/features/orders/domain/models/create_order_model/create_order_model.dart';
import 'package:alhazem/features/orders/domain/models/create_payment_model/create_payment_model.dart';
import 'package:alhazem/features/orders/domain/models/create_payment_model/input_create_payment_model/input_create_payment_model.dart';
import 'package:alhazem/features/orders/domain/models/order_details_model/order_details_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../models/input_models/input_create_model/input_create_order_model.dart';
import '../models/order_model/order_model.dart';

abstract class OrderRepository {
  Future<Result<ResponseModel<CreateOrderModel>, FailureModel>> createOrder(
      {required InputCreateOrderModel input});

  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>>
      getCurrencies();
  Future<Result<ResponseModel<List<TypeModel>>, FailureModel>> getOrderTypes();

  Future<Result<ResponsePaginationModel<List<OrderModel>>, FailureModel>>
      getOrders({required String type, required int page});

  Future<Result<ResponseModel<List<OrderDetailsModel>>, FailureModel>>
      getOrderDetails({required int orderId});

  Future<Result<ResponseModel<CreatePaymentModel>, FailureModel>> createPayment(
      {required InputCreatePaymentModel input});
}
