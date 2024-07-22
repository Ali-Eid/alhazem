import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';
import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/features/contacts/domain/models/contact_model/contact_model.dart';
import 'package:alhazem/features/contacts/domain/models/input_create_traveler_model/input_create_traveler_model.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/bases/enums/entity_type.dart';
import '../models/crate_lead_model/create_lead_model.dart';
import '../models/input_lead_model/input_lead_model.dart';
import '../models/missed_attachments_model/input_model/input_missed_attachment_model.dart';

abstract class ContactRepository {
  Future<Result<ResponsePaginationModel<List<ContactModel>>, FailureModel>>
      getContacts({EntityType? type, required int page});
  Future<Result<ResponseModel<CreateLeadModel>, FailureModel>> createLead(
      {required InputLeadModel input});
  Future<Result<ResponsePaginationModel<List<ContactModel>>, FailureModel>>
      searchContact(
          {required String name, required bool isTraveller, required int page});
  Future<Result<ResponseModel<ContactModel>, FailureModel>> createTraveler(
      {required InputCreateTravelerModel input});

  //Static
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>>
      getTypeAttachments();
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>> getOffices();
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>> getCountries();
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>> getStates(
      {required int countryId});

  //update attachments
  Future<Result<ResponseModel, FailureModel>> updateAttachmentsContact(
      {required InputUpdateAttachmentsModel input});
}
