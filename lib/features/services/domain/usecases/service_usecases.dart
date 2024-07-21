import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/core/bases/usecases/base_usecase.dart';
import 'package:alhazem/features/services/domain/models/service_details_model.dart/service_details_model.dart';
import 'package:alhazem/features/services/domain/models/service_model/service_model.dart';
import 'package:alhazem/features/services/domain/repository/service_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../models/type_service_model/type_service_model.dart';

class GetServicesUsecase
    implements
        BaseUseCase<({int serviceTypeId, int page}),
            ResponsePaginationModel<List<ServiceModel>>> {
  final ServiceRepository repository;

  GetServicesUsecase({required this.repository});
  @override
  Future<Result<ResponsePaginationModel<List<ServiceModel>>, FailureModel>>
      execute(({int page, int serviceTypeId}) input) async {
    return await repository.getServices(
        serviceTypeId: input.serviceTypeId, page: input.page);
  }
}

class GetTypeServicesUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<TypeServiceModel>>> {
  final ServiceRepository repository;

  GetTypeServicesUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<List<TypeServiceModel>>, FailureModel>>
      execute() async {
    return await repository.getTypeServices();
  }
}

class GetServicesDetailsUsecase
    implements
        BaseUseCase<({int serviceId, int leadId}),
            ResponseModel<List<ServiceDetailsModel>>> {
  final ServiceRepository repository;

  GetServicesDetailsUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<ServiceDetailsModel>>, FailureModel>>
      execute(({int serviceId, int leadId}) input) async {
    return await repository.getServiceDetails(
        serviceId: input.serviceId, leadId: input.leadId);
  }
}
