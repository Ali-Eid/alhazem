import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/features/services/domain/models/check_price_model/check_price_model.dart';
import 'package:alhazem/features/services/domain/models/service_details_model.dart/service_details_model.dart';
import 'package:alhazem/features/services/domain/models/service_model/service_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/constants/endpoints.dart';
import '../../domain/models/attachments_required_model/attachments_required_model.dart';
import '../../domain/models/type_service_model/type_service_model.dart';

part 'service_api.g.dart';

@RestApi(baseUrl: Endpoints.API_RES)
abstract class ServicesServiceClient {
  factory ServicesServiceClient(Dio dio, {String baseUrl}) =
      _ServicesServiceClient;

  @GET(Endpoints.SERVICES)
  Future<HttpResponse<ResponsePaginationModel<List<ServiceModel>>>>
      getServices({
    @Query("type") required int type,
    @Query("page") required int page,
  });
  @GET(Endpoints.GET_SERVICE_TYPE)
  Future<HttpResponse<ResponseModel<List<TypeServiceModel>>>> getTypeServices();

  @GET(Endpoints.SERVICES_DETAILS)
  Future<HttpResponse<ResponseModel<List<ServiceDetailsModel>>>>
      getServiceDetails({
    @Path("id") required int serviceId,
    @Query("lead_id") required int leadId,
  });

  @POST(Endpoints.CHECK_PRICE)
  Future<HttpResponse<ResponseModel<CheckPriceModel>>> checkPrice({
    @Field("service_id") required int serviceId,
    @Field("variant_ids") required List<int> variantIds,
  });

  @POST(Endpoints.CHECK_ATTACHMENTS)
  Future<HttpResponse<ResponseModel<List<AttachmentsRequiredModel>>>>
      checkAttachments({
    @Field("service_id") required int serviceId,
    @Field("travelers") required List<int> travelerIds,
  });
}
