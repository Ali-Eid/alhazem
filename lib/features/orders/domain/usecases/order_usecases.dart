import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/models/order_type_model/order_type_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/core/bases/usecases/base_usecase.dart';
import 'package:alhazem/features/orders/domain/models/create_order_model/create_order_model.dart';
import 'package:alhazem/features/orders/domain/models/create_payment_model/create_payment_model.dart';
import 'package:alhazem/features/orders/domain/models/create_payment_model/input_create_payment_model/input_create_payment_model.dart';
import 'package:alhazem/features/orders/domain/models/input_models/input_create_model/input_create_order_model.dart';
import 'package:alhazem/features/orders/domain/repository/order_repository.dart';
import 'package:multiple_result/src/result.dart';
import '../../../../core/bases/models/static_models/static_model.dart';
import '../models/input_models/input_confirm_waiting_model/input_confirm_waiting_model.dart';
import '../models/missed_attachments_model/input_model/input_missed_attachment_model.dart';
import '../models/order_details_model/order_details_model.dart';
import '../models/order_model/order_model.dart';

class CreateOrderUsecase
    implements
        BaseUseCase<InputCreateOrderModel, ResponseModel<CreateOrderModel>> {
  final OrderRepository repository;

  CreateOrderUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<CreateOrderModel>, FailureModel>> execute(
      InputCreateOrderModel input) async {
    return await repository.createOrder(input: input);
  }
}

class GetCurrenciesUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<StaticModel>>> {
  final OrderRepository repository;

  GetCurrenciesUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>>
      execute() async {
    return await repository.getCurrencies();
  }
}

class GetOrdersUsecase
    implements
        BaseUseCase<({String type, int page}),
            ResponsePaginationModel<List<OrderModel>>> {
  final OrderRepository repository;

  GetOrdersUsecase({required this.repository});

  @override
  Future<Result<ResponsePaginationModel<List<OrderModel>>, FailureModel>>
      execute(({int page, String type}) input) async {
    return await repository.getOrders(type: input.type, page: input.page);
  }
}

class GetTypeOrdersUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<TypeModel>>> {
  final OrderRepository repository;

  GetTypeOrdersUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<TypeModel>>, FailureModel>> execute() async {
    return await repository.getOrderTypes();
  }
}

class GetOrderDetailsUsecase
    implements BaseUseCase<int, ResponseModel<List<OrderDetailsModel>>> {
  final OrderRepository repository;

  GetOrderDetailsUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<List<OrderDetailsModel>>, FailureModel>> execute(
      int input) async {
    return await repository.getOrderDetails(orderId: input);
  }
}

class CreatePaymentUsecase
    implements
        BaseUseCase<InputCreatePaymentModel,
            ResponseModel<CreatePaymentModel>> {
  final OrderRepository repository;

  CreatePaymentUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<CreatePaymentModel>, FailureModel>> execute(
      InputCreatePaymentModel input) async {
    return await repository.createPayment(input: input);
  }
}

class ConfirmWaitingOrderUsecase
    implements
        BaseUseCase<InputConfirmWaitingModel, ResponseModel<CreateOrderModel>> {
  final OrderRepository repository;

  ConfirmWaitingOrderUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<CreateOrderModel>, FailureModel>> execute(
      InputConfirmWaitingModel input) async {
    return await repository.confirmWaiting(input: input);
  }
}

class UpdateAttachmentsUsecase
    implements BaseUseCase<InputUpdateAttachmentsModel, ResponseModel> {
  final OrderRepository repository;

  UpdateAttachmentsUsecase({required this.repository});

  @override
  Future<Result<ResponseModel, FailureModel>> execute(
      InputUpdateAttachmentsModel input) async {
    return await repository.updateAttachmentsContact(input: input);
  }
}
