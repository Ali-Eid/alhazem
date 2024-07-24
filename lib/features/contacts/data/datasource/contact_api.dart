import 'package:alhazem/core/bases/enums/entity_type.dart';
import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/features/contacts/domain/models/contact_model/contact_model.dart';
import 'package:alhazem/features/contacts/domain/models/input_create_traveler_model/input_create_traveler_model.dart';
import 'package:alhazem/features/contacts/domain/models/input_lead_model/input_lead_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/bases/enums/keys_filter_type.dart';
import '../../../../core/bases/models/response_model/response_model.dart';
import '../../../../core/constants/endpoints.dart';
import '../../../services/domain/models/check_price_model/check_price_model.dart';
import '../../domain/models/crate_lead_model/create_lead_model.dart';

part 'contact_api.g.dart';

@RestApi(baseUrl: Endpoints.API_RES)
abstract class ContactsServiceClient {
  factory ContactsServiceClient(Dio dio, {String baseUrl}) =
      _ContactsServiceClient;

  @POST(Endpoints.CREATE_LEAD)
  Future<HttpResponse<ResponseModel<CreateLeadModel>>> createLead(
      {@Body() required InputLeadModel input});
  @POST(Endpoints.CREATE_TRAVELER)
  Future<HttpResponse<ResponseModel<ContactModel>>> createTraveler(
      {@Body() required InputCreateTravelerModel input});

  @GET(Endpoints.CONTACTS)
  Future<HttpResponse<ResponsePaginationModel<List<ContactModel>>>>
      getContacts({
    @Query("type") EntityType? type,
    @Query("page") required int page,
  });

  @GET(Endpoints.SEARCH)
  Future<HttpResponse<ResponsePaginationModel<List<ContactModel>>>>
      searchContact({
    @Query("key") KeysFilterType type = KeysFilterType.contact,
    @Query("name") required String name,
    @Query("is_traveler") required bool isTraveler,
    @Query("page") required int page,
  });

  //Static
  @GET(Endpoints.TYPE_ATTACHMENTS)
  Future<HttpResponse<ResponseModel<List<StaticModel>>>> getAttachmentsType();
  @GET(Endpoints.OFFICE)
  Future<HttpResponse<ResponseModel<List<StaticModel>>>> getOffices();
  @GET(Endpoints.COUNTRIES)
  Future<HttpResponse<ResponseModel<List<StaticModel>>>> getCountries();
  @GET(Endpoints.STATES)
  Future<HttpResponse<ResponseModel<List<StaticModel>>>> getStates({
    @Query("country_id") required int countryId,
  });
}
