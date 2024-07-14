import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/models/order_type_model/order_type_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/features/orders/domain/models/create_order_model/create_order_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../models/input_models/input_create_model/input_create_order_model.dart';
import '../models/order_model/order_model.dart';

abstract class OrderRepository {
  Future<Result<ResponseModel<CreateOrderModel>, FailureModel>> createOrder(
      {required InputCreateOrderModel input});

  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>>
      getCurrencies();
  Future<Result<ResponseModel<List<OrderTypeModel>>, FailureModel>>
      getOrderTypes();

  Future<Result<ResponsePaginationModel<List<OrderModel>>, FailureModel>>
      getOrders({required String type, required int page});
}
