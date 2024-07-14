import 'package:alhazem/core/bases/enums/entity_type.dart';
import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';

import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/features/contacts/data/datasource/contact_api.dart';
import 'package:alhazem/features/contacts/domain/models/contact_model/contact_model.dart';

import 'package:alhazem/features/contacts/domain/models/input_lead_model/input_lead_model.dart';
import 'package:dio/dio.dart';

import 'package:multiple_result/src/result.dart';

import '../../../../core/network/network_info.dart';
import '../../domain/models/crate_lead_model/create_lead_model.dart';
import '../../domain/repository/contact_repository.dart';

class ContactRepositoryImpl implements ContactRepository {
  final ContactsServiceClient contactsServiceClient;
  final NetworkInfo networkInfo;

  ContactRepositoryImpl(
      {required this.contactsServiceClient, required this.networkInfo});
  @override
  Future<Result<ResponseModel<CreateLeadModel>, FailureModel>> createLead(
      {required InputLeadModel input}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await contactsServiceClient.createLead(input: input);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "noInternetError"));
    }
  }

  @override
  Future<Result<ResponsePaginationModel<List<ContactModel>>, FailureModel>>
      getContacts({EntityType? type, required int page}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await contactsServiceClient.getContacts(type: type, page: page);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "noInternetError"));
    }
  }

  @override
  Future<Result<ResponsePaginationModel<List<ContactModel>>, FailureModel>>
      searchContact({required String name, required int page}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await contactsServiceClient.searchContact(name: name, page: page);
        if (response.response.statusCode == 200) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        return Error(FailureModel.fromJson(e.response?.data ?? defaultError));
      }
    } else {
      return Error(FailureModel(message: "noInternetError"));
    }
  }
}
