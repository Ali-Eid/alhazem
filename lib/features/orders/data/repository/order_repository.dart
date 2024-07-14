import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/models/order_type_model/order_type_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/features/orders/data/datasource/order_api.dart';
import 'package:alhazem/features/orders/domain/models/create_order_model/create_order_model.dart';
import 'package:alhazem/features/orders/domain/models/input_models/input_create_model/input_create_order_model.dart';
import 'package:alhazem/features/orders/domain/repository/order_repository.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/network/network_info.dart';
import '../../domain/models/order_model/order_model.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrdersServiceClient ordersServiceClient;
  final NetworkInfo networkInfo;

  OrderRepositoryImpl(
      {required this.ordersServiceClient, required this.networkInfo});

  @override
  Future<Result<ResponseModel<CreateOrderModel>, FailureModel>> createOrder(
      {required InputCreateOrderModel input}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await ordersServiceClient.createOrder(input: input);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "noInternetError"));
    }
  }

  @override
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>>
      getCurrencies() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await ordersServiceClient.getCurrencies();
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "noInternetError"));
    }
  }

  @override
  Future<Result<ResponsePaginationModel<List<OrderModel>>, FailureModel>>
      getOrders({required String type, required int page}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await ordersServiceClient.getOrders(type: type, page: page);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "noInternetError"));
    }
  }

  @override
  Future<Result<ResponseModel<List<OrderTypeModel>>, FailureModel>>
      getOrderTypes() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await ordersServiceClient.getTypesOrder();
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "noInternetError"));
    }
  }
}
