// ignore_for_file: constant_identifier_names

class Endpoints {
  static const String API_RES = '/api/res';
  static const String POSTS = "/posts";

//Auth
  static const String Auth = "$API_RES/auth";
  static const String LOGIN = "/login";

  //Services
  static const String SERVICES = "/services";
  static const String SERVICES_DETAILS = "/services/{id}";
  static const String GET_SERVICE_TYPE = "/get_categories";
  static const String CHECK_PRICE = "/check_price";

  //Orders
  static const String CREATE_ORDER = "/order/create";
  static const String ORDERS = "/orders";
  static const String TYPES_ORDERS = "$ORDERS/types";

  //CRM
  static const String CRM = "/crm";
  static const String CREATE_LEAD = "$CRM/lead";

  //Contacts
  static const String CONTACTS = "/contacts";

  //Search
  static const String SEARCH = "/search";

  //Currencies
  static const String CURRENCIES = "/currencies/get";
}
