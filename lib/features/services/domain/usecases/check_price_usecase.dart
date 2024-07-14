import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/core/bases/usecases/base_usecase.dart';
import 'package:alhazem/features/services/domain/models/check_price_model/check_price_model.dart';
import 'package:alhazem/features/services/domain/repository/service_repository.dart';
import 'package:multiple_result/src/result.dart';

class CheckPriceUsecase
    implements
        BaseUseCase<({int serviceId, List<int> variantIds}),
            ResponseModel<CheckPriceModel>> {
  final ServiceRepository repository;

  CheckPriceUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<CheckPriceModel>, FailureModel>> execute(
      ({int serviceId, List<int> variantIds}) input) async {
    return await repository.checkPrice(
        serviceId: input.serviceId, variantIds: input.variantIds);
  }
}
