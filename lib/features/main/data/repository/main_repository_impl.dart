import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/models/order_type_model/order_type_model.dart';

import 'package:alhazem/core/bases/models/response_model/response_model.dart';

import 'package:alhazem/features/contacts/domain/models/contact_model/contact_model.dart';

import 'package:alhazem/features/orders/domain/models/order_model/order_model.dart';

import 'package:alhazem/features/services/domain/models/service_model/service_model.dart';
import 'package:dio/dio.dart';

import 'package:multiple_result/src/result.dart';

import '../../../../core/network/network_info.dart';
import '../../domain/repository/main_repository.dart';
import '../datasource/main_api.dart';

class MainRepositoryImpl implements MainRepository {
  final MainServiceClient mainServiceClient;
  final NetworkInfo networkInfo;

  MainRepositoryImpl(
      {required this.mainServiceClient, required this.networkInfo});

  @override
  Future<Result<ResponsePaginationModel<List<ContactModel>>, FailureModel>>
      searchContacts(
          {required String type,
          required String name,
          required int page}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await mainServiceClient.searchContacts(
            type: type, name: name, page: page);
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
      searchOrders(
          {required String type,
          required String name,
          required int page}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await mainServiceClient.searchOrders(
            type: type, name: name, page: page);
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
  Future<Result<ResponsePaginationModel<List<ServiceModel>>, FailureModel>>
      searchServices(
          {required String type,
          required String name,
          required int page}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await mainServiceClient.searchServices(
            type: type, name: name, page: page);
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
  Future<Result<ResponseModel<List<TypeModel>>, FailureModel>>
      typesSearch() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await mainServiceClient.typesSearch();
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
