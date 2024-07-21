import 'package:alhazem/core/bases/models/order_type_model/order_type_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/features/contacts/domain/models/contact_model/contact_model.dart';
import 'package:alhazem/features/orders/domain/models/order_model/order_model.dart';
import 'package:alhazem/features/services/domain/models/service_model/service_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/bases/enums/keys_filter_type.dart';
import '../../../../core/constants/endpoints.dart';

part 'main_api.g.dart';

@RestApi(baseUrl: Endpoints.API_RES)
abstract class MainServiceClient {
  factory MainServiceClient(Dio dio, {String baseUrl}) = _MainServiceClient;

  @GET(Endpoints.SEARCH)
  Future<HttpResponse<ResponsePaginationModel<List<ContactModel>>>>
      searchContacts({
    @Query("key") required String type,
    @Query("name") required String name,
    @Query("page") required int page,
  });
  @GET(Endpoints.SEARCH)
  Future<HttpResponse<ResponsePaginationModel<List<OrderModel>>>> searchOrders({
    @Query("key") required String type,
    @Query("name") required String name,
    @Query("page") required int page,
  });
  @GET(Endpoints.SEARCH)
  Future<HttpResponse<ResponsePaginationModel<List<ServiceModel>>>>
      searchServices({
    @Query("key") required String type,
    @Query("name") required String name,
    @Query("page") required int page,
  });

  @GET(Endpoints.TYPES_SEARCH)
  Future<HttpResponse<ResponseModel<List<TypeModel>>>> typesSearch();
}
