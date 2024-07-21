import 'package:alhazem/core/bases/models/order_type_model/order_type_model.dart';
import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/features/orders/domain/models/create_order_model/create_order_model.dart';
import 'package:alhazem/features/orders/domain/models/create_payment_model/create_payment_model.dart';
import 'package:alhazem/features/orders/domain/models/create_payment_model/input_create_payment_model/input_create_payment_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/constants/endpoints.dart';
import '../../domain/models/input_models/input_create_model/input_create_order_model.dart';
import '../../domain/models/order_details_model/order_details_model.dart';
import '../../domain/models/order_model/order_model.dart';
part 'order_api.g.dart';

@RestApi(baseUrl: Endpoints.API_RES)
abstract class OrdersServiceClient {
  factory OrdersServiceClient(Dio dio, {String baseUrl}) = _OrdersServiceClient;

  @POST(Endpoints.CREATE_ORDER)
  Future<HttpResponse<ResponseModel<CreateOrderModel>>> createOrder(
      {@Body() required InputCreateOrderModel input});

  @GET(Endpoints.CURRENCIES)
  Future<HttpResponse<ResponseModel<List<StaticModel>>>> getCurrencies();

  @GET(Endpoints.TYPES_ORDERS)
  Future<HttpResponse<ResponseModel<List<TypeModel>>>> getTypesOrder();

  @GET(Endpoints.ORDERS)
  Future<HttpResponse<ResponsePaginationModel<List<OrderModel>>>> getOrders({
    @Query("type") required String type,
    @Query("page") required int page,
  });
  @GET(Endpoints.ORDER_DETAILS)
  Future<HttpResponse<ResponseModel<List<OrderDetailsModel>>>> getOrderDetails(
      {@Path("id") required int orderId});

  //Payment
  @POST(Endpoints.CREATE_PAYMENT)
  Future<HttpResponse<ResponseModel<CreatePaymentModel>>> createPayment(
      {@Body() required InputCreatePaymentModel input});
}
