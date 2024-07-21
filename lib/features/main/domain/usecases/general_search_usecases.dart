import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/models/order_type_model/order_type_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/core/bases/usecases/base_usecase.dart';
import 'package:alhazem/features/contacts/domain/models/contact_model/contact_model.dart';
import 'package:alhazem/features/main/domain/repository/main_repository.dart';
import 'package:alhazem/features/orders/domain/models/order_model/order_model.dart';
import 'package:alhazem/features/services/domain/models/service_model/service_model.dart';
import 'package:multiple_result/src/result.dart';

class GeneralSearchContactUsecase
    implements
        BaseUseCase<({String type, String name, int page}),
            ResponsePaginationModel<List<ContactModel>>> {
  final MainRepository repository;

  GeneralSearchContactUsecase({required this.repository});
  @override
  Future<Result<ResponsePaginationModel<List<ContactModel>>, FailureModel>>
      execute(({String name, int page, String type}) input) async {
    return await repository.searchContacts(
        type: input.type, name: input.name, page: input.page);
  }
}

class GeneralSearchOrdersUsecase
    implements
        BaseUseCase<({String type, String name, int page}),
            ResponsePaginationModel<List<OrderModel>>> {
  final MainRepository repository;

  GeneralSearchOrdersUsecase({required this.repository});
  @override
  Future<Result<ResponsePaginationModel<List<OrderModel>>, FailureModel>>
      execute(({String name, int page, String type}) input) async {
    return await repository.searchOrders(
        type: input.type, name: input.name, page: input.page);
  }
}

class GeneralSearchServicesUsecase
    implements
        BaseUseCase<({String type, String name, int page}),
            ResponsePaginationModel<List<ServiceModel>>> {
  final MainRepository repository;

  GeneralSearchServicesUsecase({required this.repository});
  @override
  Future<Result<ResponsePaginationModel<List<ServiceModel>>, FailureModel>>
      execute(({String name, int page, String type}) input) async {
    return await repository.searchServices(
        type: input.type, name: input.name, page: input.page);
  }
}

class GetTypesSearchUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<TypeModel>>> {
  final MainRepository repository;

  GetTypesSearchUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<List<TypeModel>>, FailureModel>> execute() async {
    return await repository.typesSearch();
  }
}
