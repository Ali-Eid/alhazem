import 'package:alhazem/features/auth/domain/models/inputs_model/input_model.dart';
import 'package:alhazem/features/auth/domain/models/login_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/bases/models/response_model/response_model.dart';
import '../../../../../core/constants/endpoints.dart';
part 'auth_api.g.dart';

@RestApi(baseUrl: Endpoints.Auth)
abstract class AuthServiceClient {
  factory AuthServiceClient(Dio dio, {String baseUrl}) = _AuthServiceClient;

  @POST(Endpoints.LOGIN)
  Future<HttpResponse<ResponseModel<LoginModel>>> login(
      {@Body() required LoginInputModel input});
}
