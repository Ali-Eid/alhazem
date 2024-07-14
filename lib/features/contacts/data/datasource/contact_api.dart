import 'package:alhazem/core/bases/enums/entity_type.dart';
import 'package:alhazem/features/contacts/domain/models/contact_model/contact_model.dart';
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
    @Query("page") required int page,
  });
}
