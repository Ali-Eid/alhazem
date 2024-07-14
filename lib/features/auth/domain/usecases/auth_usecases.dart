import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/usecases/base_usecase.dart';
import 'package:alhazem/features/auth/domain/models/inputs_model/input_model.dart';
import 'package:alhazem/features/auth/domain/repositories/auth_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/bases/models/response_model/response_model.dart';
import '../models/login_model.dart';

class LoginUseCase
    implements BaseUseCase<LoginInputModel, ResponseModel<LoginModel>> {
  final AuthRepository repository;

  LoginUseCase({required this.repository});
  @override
  Future<Result<ResponseModel<LoginModel>, FailureModel>> execute(
      LoginInputModel input) async {
    return await repository.login(input: input);
  }
}
