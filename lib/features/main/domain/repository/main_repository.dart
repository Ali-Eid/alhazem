import 'package:alhazem/core/bases/models/order_type_model/order_type_model.dart';
import 'package:alhazem/features/orders/domain/models/order_model/order_model.dart';
import 'package:alhazem/features/services/domain/models/service_model/service_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/bases/enums/keys_filter_type.dart';
import '../../../../core/bases/models/failure_model/failure_model.dart';
import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../contacts/domain/models/contact_model/contact_model.dart';

abstract class MainRepository {
  Future<Result<ResponsePaginationModel<List<ContactModel>>, FailureModel>>
      searchContacts(
          {required String type, required String name, required int page});
  Future<Result<ResponsePaginationModel<List<ServiceModel>>, FailureModel>>
      searchServices(
          {required String type, required String name, required int page});
  Future<Result<ResponsePaginationModel<List<OrderModel>>, FailureModel>>
      searchOrders(
          {required String type, required String name, required int page});

  Future<Result<ResponseModel<List<TypeModel>>, FailureModel>> typesSearch();
}
