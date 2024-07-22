import 'package:alhazem/core/bases/enums/entity_type.dart';
import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/core/bases/usecases/base_usecase.dart';
import 'package:alhazem/features/contacts/domain/models/contact_model/contact_model.dart';
import 'package:alhazem/features/contacts/domain/models/input_create_traveler_model/input_create_traveler_model.dart';
import 'package:alhazem/features/contacts/domain/models/input_lead_model/input_lead_model.dart';
import 'package:alhazem/features/contacts/domain/repository/contact_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../models/crate_lead_model/create_lead_model.dart';
import '../models/missed_attachments_model/input_model/input_missed_attachment_model.dart';

class CreateLeadUsecase
    implements BaseUseCase<InputLeadModel, ResponseModel<CreateLeadModel>> {
  final ContactRepository repository;

  CreateLeadUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<CreateLeadModel>, FailureModel>> execute(
      InputLeadModel input) async {
    return await repository.createLead(input: input);
  }
}

class GetContactsUsecase
    implements
        BaseUseCase<({EntityType? type, int page}),
            ResponsePaginationModel<List<ContactModel>>> {
  final ContactRepository repository;

  GetContactsUsecase({required this.repository});

  @override
  Future<Result<ResponsePaginationModel<List<ContactModel>>, FailureModel>>
      execute(({int page, EntityType? type}) input) async {
    return await repository.getContacts(type: input.type, page: input.page);
  }
}

class SearchContactsUsecase
    implements
        BaseUseCase<({String name, int page, bool isTraveler}),
            ResponsePaginationModel<List<ContactModel>>> {
  final ContactRepository repository;

  SearchContactsUsecase({required this.repository});

  @override
  Future<Result<ResponsePaginationModel<List<ContactModel>>, FailureModel>>
      execute(({String name, int page, bool isTraveler}) input) async {
    return await repository.searchContact(
        name: input.name, page: input.page, isTraveller: input.isTraveler);
  }
}

class CreateTravelerUsecase
    implements
        BaseUseCase<InputCreateTravelerModel, ResponseModel<ContactModel>> {
  final ContactRepository repository;

  CreateTravelerUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<ContactModel>, FailureModel>> execute(
      InputCreateTravelerModel input) async {
    return await repository.createTraveler(input: input);
  }
}

//Static
class GetAttachmentsTypeUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<StaticModel>>> {
  final ContactRepository repository;

  GetAttachmentsTypeUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>>
      execute() async {
    return await repository.getTypeAttachments();
  }
}

class GetOfficesUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<StaticModel>>> {
  final ContactRepository repository;

  GetOfficesUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>>
      execute() async {
    return await repository.getOffices();
  }
}

class GetCountriesUsecase
    implements BaseUseCaseEmptyInput<ResponseModel<List<StaticModel>>> {
  final ContactRepository repository;

  GetCountriesUsecase({required this.repository});
  @override
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>>
      execute() async {
    return await repository.getCountries();
  }
}

class GetStatesUsecase
    implements BaseUseCase<int, ResponseModel<List<StaticModel>>> {
  final ContactRepository repository;

  GetStatesUsecase({required this.repository});

  @override
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>> execute(
      int countryId) async {
    return await repository.getStates(countryId: countryId);
  }
}

class UpdateAttachmentsUsecase
    implements BaseUseCase<InputUpdateAttachmentsModel, ResponseModel> {
  final ContactRepository repository;

  UpdateAttachmentsUsecase({required this.repository});

  @override
  Future<Result<ResponseModel, FailureModel>> execute(
      InputUpdateAttachmentsModel input) async {
    return await repository.updateAttachmentsContact(input: input);
  }
}
