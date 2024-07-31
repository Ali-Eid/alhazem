import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/features/services/data/datasource/service_api.dart';
import 'package:alhazem/features/services/domain/models/attachments_required_model/attachments_required_model.dart';
import 'package:alhazem/features/services/domain/models/check_price_model/check_price_model.dart';
import 'package:alhazem/features/services/domain/models/service_details_model.dart/service_details_model.dart';
import 'package:alhazem/features/services/domain/models/service_model/service_model.dart';
import 'package:alhazem/features/services/domain/repository/service_repository.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/network/network_info.dart';
import '../../domain/models/type_service_model/type_service_model.dart';

class ServiceRepositoryImpl implements ServiceRepository {
  final ServicesServiceClient servicesServiceClient;
  final NetworkInfo networkInfo;

  ServiceRepositoryImpl(
      {required this.servicesServiceClient, required this.networkInfo});
  @override
  Future<Result<ResponsePaginationModel<List<ServiceModel>>, FailureModel>>
      getServices({required int serviceTypeId, required int page}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await servicesServiceClient.getServices(
            type: serviceTypeId, page: page);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "لا يوجد اتصال انترنت"));
    }
  }

  @override
  Future<Result<ResponseModel<List<TypeServiceModel>>, FailureModel>>
      getTypeServices() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await servicesServiceClient.getTypeServices();
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "لا يوجد اتصال انترنت"));
    }
  }

  @override
  Future<Result<ResponseModel<List<ServiceDetailsModel>>, FailureModel>>
      getServiceDetails({required int serviceId, required int leadId}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await servicesServiceClient.getServiceDetails(
            serviceId: serviceId, leadId: leadId);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "لا يوجد اتصال انترنت"));
    }
  }

  @override
  Future<Result<ResponseModel<CheckPriceModel>, FailureModel>> checkPrice(
      {required int serviceId, required List<int> variantIds}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await servicesServiceClient.checkPrice(
            serviceId: serviceId, variantIds: variantIds);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "لا يوجد اتصال انترنت"));
    }
  }

  @override
  Future<Result<ResponseModel<List<AttachmentsRequiredModel>>, FailureModel>>
      checkAttachments(
          {required int serviceId, required List<int> travelerIds}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await servicesServiceClient.checkAttachments(
            serviceId: serviceId, travelerIds: travelerIds);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "لا يوجد اتصال انترنت"));
    }
  }
}
