import 'package:alhazem/core/bases/enums/entity_type.dart';
import 'package:alhazem/core/bases/models/failure_model/failure_model.dart';

import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/features/contacts/data/datasource/contact_api.dart';
import 'package:alhazem/features/contacts/domain/models/contact_model/contact_model.dart';
import 'package:alhazem/features/contacts/domain/models/input_create_traveler_model/input_create_traveler_model.dart';

import 'package:alhazem/features/contacts/domain/models/input_lead_model/input_lead_model.dart';
import 'package:alhazem/features/contacts/domain/models/missed_attachments_model/input_model/input_missed_attachment_model.dart';
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
      searchContact(
          {required String name,
          required bool isTraveller,
          required int page}) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await contactsServiceClient.searchContact(
            name: name, isTraveler: isTraveller, page: page);
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
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>>
      getTypeAttachments() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await contactsServiceClient.getAttachmentsType();
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
  Future<Result<ResponseModel<ContactModel>, FailureModel>> createTraveler(
      {required InputCreateTravelerModel input}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await contactsServiceClient.createTraveler(input: input);
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
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>>
      getCountries() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await contactsServiceClient.getCountries();
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
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>> getStates(
      {required int countryId}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await contactsServiceClient.getStates(countryId: countryId);
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
  Future<Result<ResponseModel<List<StaticModel>>, FailureModel>>
      getOffices() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await contactsServiceClient.getOffices();
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
  Future<Result<ResponseModel, FailureModel>> updateAttachmentsContact(
      {required InputUpdateAttachmentsModel input}) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await contactsServiceClient.updateAttachmentsContact(input: input);
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
