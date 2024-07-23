import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/features/services/domain/models/check_price_model/check_price_model.dart';
import 'package:alhazem/features/services/domain/models/service_details_model.dart/service_details_model.dart';
import 'package:alhazem/features/services/domain/models/service_model/service_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/bases/models/response_model/response_model.dart';
import '../models/attachments_required_model/attachments_required_model.dart';
import '../models/type_service_model/type_service_model.dart';

abstract class ServiceRepository {
  Future<Result<ResponseModel<List<TypeServiceModel>>, FailureModel>>
      getTypeServices();
  Future<Result<ResponsePaginationModel<List<ServiceModel>>, FailureModel>>
      getServices({required int serviceTypeId, required int page});
  Future<Result<ResponseModel<List<ServiceDetailsModel>>, FailureModel>>
      getServiceDetails({required int serviceId, required int leadId});

  Future<Result<ResponseModel<CheckPriceModel>, FailureModel>> checkPrice(
      {required int serviceId, required List<int> variantIds});

  //check attachments
  Future<Result<ResponseModel<List<AttachmentsRequiredModel>>, FailureModel>>
      checkAttachments(
          {required int serviceId, required List<int> travelerIds});
}
