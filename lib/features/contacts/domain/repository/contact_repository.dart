import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/features/contacts/domain/models/contact_model/contact_model.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/bases/enums/entity_type.dart';
import '../models/crate_lead_model/create_lead_model.dart';
import '../models/input_lead_model/input_lead_model.dart';

abstract class ContactRepository {
  Future<Result<ResponsePaginationModel<List<ContactModel>>, FailureModel>>
      getContacts({EntityType? type, required int page});
  Future<Result<ResponseModel<CreateLeadModel>, FailureModel>> createLead(
      {required InputLeadModel input});
  Future<Result<ResponsePaginationModel<List<ContactModel>>, FailureModel>>
      searchContact({required String name, required int page});
}
