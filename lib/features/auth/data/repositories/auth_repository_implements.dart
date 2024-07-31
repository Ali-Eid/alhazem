import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/features/auth/domain/models/inputs_model/input_model.dart';
import 'package:alhazem/features/auth/domain/models/login_model.dart';
import 'package:alhazem/features/auth/domain/repositories/auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/network/network_info.dart';
import '../datasource/remote_datasource/auth_api.dart';

class AuthRepositoryImp implements AuthRepository {
  final AuthServiceClient authServiceClient;
  final NetworkInfo networkInfo;

  AuthRepositoryImp(
      {required this.authServiceClient, required this.networkInfo});
  @override
  Future<Result<ResponseModel<LoginModel>, FailureModel>> login(
      {required LoginInputModel input}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await authServiceClient.login(input: input);
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
