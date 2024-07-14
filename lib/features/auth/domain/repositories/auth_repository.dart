import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/features/auth/domain/models/login_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/bases/models/response_model/response_model.dart';
import '../models/inputs_model/input_model.dart';

abstract class AuthRepository {
  Future<Result<ResponseModel<LoginModel>, FailureModel>> login(
      {required LoginInputModel input});
}
