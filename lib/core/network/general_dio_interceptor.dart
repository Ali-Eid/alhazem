import 'package:dio/dio.dart';

import '../cache/app_preferences.dart';

class GeneralInterceptor extends Interceptor {
  final AppPreferences appPreferences;

  GeneralInterceptor(this.appPreferences);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String token = await appPreferences.getUserToken();
    // if (token.isNotEmpty) options.headers["authorization"] = "Bearer $token";
    if (token.isNotEmpty) options.headers["login-token"] = token;
    super.onRequest(options, handler);
  }
}
