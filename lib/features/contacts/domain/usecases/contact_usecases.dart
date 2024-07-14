import 'package:alhazem/core/bases/enums/entity_type.dart';
import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/core/bases/usecases/base_usecase.dart';
import 'package:alhazem/features/contacts/domain/models/contact_model/contact_model.dart';
import 'package:alhazem/features/contacts/domain/models/input_lead_model/input_lead_model.dart';
import 'package:alhazem/features/contacts/domain/repository/contact_repository.dart';
import 'package:multiple_result/src/result.dart';

import '../models/crate_lead_model/create_lead_model.dart';

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
        BaseUseCase<({String name, int page}),
            ResponsePaginationModel<List<ContactModel>>> {
  final ContactRepository repository;

  SearchContactsUsecase({required this.repository});

  @override
  Future<Result<ResponsePaginationModel<List<ContactModel>>, FailureModel>>
      execute(({String name, int page}) input) async {
    return await repository.searchContact(name: input.name, page: input.page);
  }
}
