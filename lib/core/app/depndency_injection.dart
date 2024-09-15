import 'package:alhazem/features/auth/data/datasource/remote_datasource/auth_api.dart';
import 'package:alhazem/features/auth/data/repositories/auth_repository_implements.dart';
import 'package:alhazem/features/auth/domain/repositories/auth_repository.dart';
import 'package:alhazem/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:alhazem/features/contacts/data/repository/contact_repository_impl.dart';
import 'package:alhazem/features/main/data/datasource/main_api.dart';
import 'package:alhazem/features/main/data/repository/main_repository_impl.dart';
import 'package:alhazem/features/main/domain/repository/main_repository.dart';
import 'package:alhazem/features/main/presentation/blocs/general_search_bloc/general_search_bloc.dart';
import 'package:alhazem/features/main/presentation/blocs/search_bloc/search_bloc.dart';
import 'package:alhazem/features/orders/data/repository/order_repository.dart';
import 'package:alhazem/features/orders/domain/repository/order_repository.dart';
import 'package:alhazem/features/orders/domain/usecases/order_usecases.dart';
import 'package:alhazem/features/orders/presentation/blocs/create_order_bloc/create_order_bloc.dart';
import 'package:alhazem/features/orders/presentation/blocs/orders_bloc/orders_bloc.dart';
import 'package:alhazem/features/services/data/datasource/service_api.dart';
import 'package:alhazem/features/services/data/repository/service_repository_impl.dart';
import 'package:alhazem/features/services/domain/usecases/service_usecases.dart';
import 'package:alhazem/features/services/presentation/blocs/input_value_create_order_cubit/input_value_create_order_cubit.dart';
import 'package:alhazem/features/services/presentation/blocs/service_bloc/service_bloc.dart';
import 'package:alhazem/features/splash/presentations/blocs/app_bloc/app_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/domain/usecases/auth_usecases.dart';
import '../../features/contacts/data/datasource/contact_api.dart';
import '../../features/contacts/domain/repository/contact_repository.dart';
import '../../features/contacts/domain/usecases/contact_usecases.dart';
import '../../features/contacts/presentation/blocs/contact_bloc/contact_bloc.dart';
import '../../features/contacts/presentation/blocs/lead_contact_bloc/lead_contact_bloc.dart';
import '../../features/contacts/presentation/blocs/static_bloc/static_bloc.dart';
import '../../features/contacts/presentation/blocs/traveler_bloc/traveler_bloc.dart';

import '../../features/main/domain/usecases/general_search_usecases.dart';
import '../../features/main/presentation/blocs/type_search_bloc/type_search_bloc.dart';
import '../../features/orders/data/datasource/order_api.dart';
import '../../features/orders/presentation/blocs/confirm_waiting_order_bloc/confirm_waiting_order_bloc.dart';
import '../../features/orders/presentation/blocs/currencies_bloc/currencies_bloc.dart';
import '../../features/orders/presentation/blocs/input_get_orders_cubit/input_get_orders_cubit_cubit.dart';
import '../../features/orders/presentation/blocs/payment_bloc/payment_bloc.dart';
import '../../features/orders/presentation/blocs/update_attachments_bloc/update_attachments_bloc.dart';
import '../../features/services/domain/repository/service_repository.dart';
import '../../features/services/domain/usecases/check_price_usecase.dart';
import '../../features/services/presentation/blocs/check_attachments_bloc/check_attachments_bloc.dart';
import '../../features/services/presentation/blocs/check_price_bloc/check_price_bloc.dart';
import '../cache/app_preferences.dart';
import '../network/dio_factory.dart';
import '../network/general_dio_interceptor.dart';
import '../network/network_info.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  instance.registerFactory<SharedPreferences>(() => sharedPreferences);
  instance.registerFactory<AppPreferences>(() => AppPreferences(instance()));
  instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));
  instance.registerFactory<GeneralInterceptor>(() => GeneralInterceptor(
        instance(),
      ));
  final dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImplementer(Connectivity()));

  //Service Client
  instance.registerLazySingleton(() => AuthServiceClient(dio));
  instance.registerLazySingleton(() => ServicesServiceClient(dio));
  instance.registerLazySingleton(() => OrdersServiceClient(dio));
  instance.registerLazySingleton(() => ContactsServiceClient(dio));
  instance.registerLazySingleton(() => MainServiceClient(dio));

  //Bloc's

  if (!GetIt.I.isRegistered<AppBloc>()) {
    instance.registerFactory(
        () => AppBloc(appPreferences: instance<AppPreferences>()));
  }
  if (!GetIt.I.isRegistered<InputValueCreateOrderCubit>()) {
    instance.registerFactory(
      () => InputValueCreateOrderCubit(0),
    );
  }

  instance.registerFactory(() => GeneralSearchBloc(
      searchContactUsecase: instance<GeneralSearchContactUsecase>(),
      searchOrdersUsecase: instance<GeneralSearchOrdersUsecase>(),
      searchServicesUsecase: instance<GeneralSearchServicesUsecase>()));
  if (!GetIt.I.isRegistered<GeneralSearchBloc>()) {
    instance.registerFactory(() => GeneralSearchBloc(
        searchContactUsecase: instance<GeneralSearchContactUsecase>(),
        searchOrdersUsecase: instance<GeneralSearchOrdersUsecase>(),
        searchServicesUsecase: instance<GeneralSearchServicesUsecase>()));
  }
  if (!GetIt.I.isRegistered<TypeSearchBloc>()) {
    instance.registerFactory(() => TypeSearchBloc(
        getTypesSearchUsecase: instance<GetTypesSearchUsecase>()));
  }
//repository

  if (!GetIt.I.isRegistered<MainRepository>()) {
    instance.registerLazySingleton<MainRepository>(() => MainRepositoryImpl(
        mainServiceClient: instance<MainServiceClient>(),
        networkInfo: instance<NetworkInfo>()));
  }
//Usecases
  if (!GetIt.I.isRegistered<GeneralSearchContactUsecase>()) {
    instance.registerLazySingleton(() =>
        GeneralSearchContactUsecase(repository: instance<MainRepository>()));
  }
  if (!GetIt.I.isRegistered<GeneralSearchOrdersUsecase>()) {
    instance.registerLazySingleton(() =>
        GeneralSearchOrdersUsecase(repository: instance<MainRepository>()));
  }
  if (!GetIt.I.isRegistered<GeneralSearchServicesUsecase>()) {
    instance.registerLazySingleton(() =>
        GeneralSearchServicesUsecase(repository: instance<MainRepository>()));
  }
  if (!GetIt.I.isRegistered<GetTypesSearchUsecase>()) {
    instance.registerLazySingleton(
        () => GetTypesSearchUsecase(repository: instance<MainRepository>()));
  }
}

//Auth Init
Future<void> initAuth() async {
  //blocs

  if (!GetIt.I.isRegistered<AuthBloc>()) {
    instance.registerFactory(
      () => AuthBloc(
          loginUseCase: instance<LoginUseCase>(),
          appPreferences: instance<AppPreferences>()),
    );
  }
  //repositories

  if (!GetIt.I.isRegistered<AuthRepository>()) {
    instance.registerLazySingleton<AuthRepository>(() => AuthRepositoryImp(
        authServiceClient: instance<AuthServiceClient>(),
        networkInfo: instance<NetworkInfo>()));
  }
  //usecases

  if (!GetIt.I.isRegistered<LoginUseCase>()) {
    instance.registerLazySingleton(
        () => LoginUseCase(repository: instance<AuthRepository>()));
  }
}

//Services Init

Future<void> initServices() async {
  //blocs

  if (!GetIt.I.isRegistered<ServiceBloc>()) {
    instance.registerFactory(
      () => ServiceBloc(
        getServicesUsecase: instance<GetServicesUsecase>(),
        getTypeServicesUsecase: instance<GetTypeServicesUsecase>(),
        getServicesDetailsUsecase: instance<GetServicesDetailsUsecase>(),
      ),
    );
  }
  if (!GetIt.I.isRegistered<CheckPriceBloc>()) {
    instance.registerFactory(
      () => CheckPriceBloc(checkPriceUsecase: instance<CheckPriceUsecase>()),
    );
  }

  if (!GetIt.I.isRegistered<CheckAttachmentsBloc>()) {
    instance.registerFactory(
      () => CheckAttachmentsBloc(
          checkAttachmentsUsecase: instance<CheckAttachmentsUsecase>()),
    );
  }

  //repositories

  if (!GetIt.I.isRegistered<ServiceRepository>()) {
    instance.registerLazySingleton<ServiceRepository>(() =>
        ServiceRepositoryImpl(
            servicesServiceClient: instance<ServicesServiceClient>(),
            networkInfo: instance<NetworkInfo>()));
  }
  //usecases
  if (!GetIt.I.isRegistered<GetServicesUsecase>()) {
    instance.registerLazySingleton(
        () => GetServicesUsecase(repository: instance<ServiceRepository>()));
  }
  if (!GetIt.I.isRegistered<GetTypeServicesUsecase>()) {
    instance.registerLazySingleton(() =>
        GetTypeServicesUsecase(repository: instance<ServiceRepository>()));
  }
  if (!GetIt.I.isRegistered<GetServicesDetailsUsecase>()) {
    instance.registerLazySingleton(() =>
        GetServicesDetailsUsecase(repository: instance<ServiceRepository>()));
  }
  if (!GetIt.I.isRegistered<CheckPriceUsecase>()) {
    instance.registerLazySingleton(
        () => CheckPriceUsecase(repository: instance<ServiceRepository>()));
  }

  if (!GetIt.I.isRegistered<CheckAttachmentsUsecase>()) {
    instance.registerLazySingleton(() =>
        CheckAttachmentsUsecase(repository: instance<ServiceRepository>()));
  }
}

Future<void> initContact() async {
  //Bloc's
  if (!GetIt.I.isRegistered<LeadContactBloc>()) {
    instance.registerFactory(() =>
        LeadContactBloc(createLeadUsecase: instance<CreateLeadUsecase>()));
  }
  if (!GetIt.I.isRegistered<SearchBloc>()) {
    instance.registerFactory(() =>
        SearchBloc(searchContactsUsecase: instance<SearchContactsUsecase>()));
  }

  if (!GetIt.I.isRegistered<ContactBloc>()) {
    instance.registerFactory(() => ContactBloc(
        getContactsUsecase: instance<GetContactsUsecase>(),
        getContactByIdUsecase: instance<GetContactByIdUsecase>()));
  }
  if (!GetIt.I.isRegistered<StaticBloc>()) {
    instance.registerFactory(() => StaticBloc(
          getCountriesUsecase: instance<GetCountriesUsecase>(),
          getStatesUsecase: instance<GetStatesUsecase>(),
          getAttachmentsTypeUsecase: instance<GetAttachmentsTypeUsecase>(),
          getOfficesUsecase: instance<GetOfficesUsecase>(),
        ));
  }
  if (!GetIt.I.isRegistered<TravelerBloc>()) {
    instance.registerFactory(() => TravelerBloc(
        createTravelerUsecase: instance<CreateTravelerUsecase>(),
        updateTravelerUsecase: instance<UpdateTravelerUsecase>()));
  }

  //repositories

  if (!GetIt.I.isRegistered<ContactRepository>()) {
    instance.registerLazySingleton<ContactRepository>(() =>
        ContactRepositoryImpl(
            contactsServiceClient: instance<ContactsServiceClient>(),
            networkInfo: instance<NetworkInfo>()));
  }

  //usecases
  if (!GetIt.I.isRegistered<CreateLeadUsecase>()) {
    instance.registerLazySingleton(
        () => CreateLeadUsecase(repository: instance<ContactRepository>()));
  }
  if (!GetIt.I.isRegistered<SearchContactsUsecase>()) {
    instance.registerLazySingleton(
        () => SearchContactsUsecase(repository: instance<ContactRepository>()));
  }
  if (!GetIt.I.isRegistered<GetContactsUsecase>()) {
    instance.registerLazySingleton(
        () => GetContactsUsecase(repository: instance<ContactRepository>()));
  }
  if (!GetIt.I.isRegistered<GetAttachmentsTypeUsecase>()) {
    instance.registerLazySingleton(() =>
        GetAttachmentsTypeUsecase(repository: instance<ContactRepository>()));
  }
  if (!GetIt.I.isRegistered<CreateTravelerUsecase>()) {
    instance.registerLazySingleton(
        () => CreateTravelerUsecase(repository: instance<ContactRepository>()));
  }
  if (!GetIt.I.isRegistered<UpdateTravelerUsecase>()) {
    instance.registerLazySingleton(
        () => UpdateTravelerUsecase(repository: instance<ContactRepository>()));
  }

  if (!GetIt.I.isRegistered<GetCountriesUsecase>()) {
    instance.registerLazySingleton(
        () => GetCountriesUsecase(repository: instance<ContactRepository>()));
  }
  if (!GetIt.I.isRegistered<GetStatesUsecase>()) {
    instance.registerLazySingleton(
        () => GetStatesUsecase(repository: instance<ContactRepository>()));
  }
  if (!GetIt.I.isRegistered<GetOfficesUsecase>()) {
    instance.registerLazySingleton(
        () => GetOfficesUsecase(repository: instance<ContactRepository>()));
  }
  if (!GetIt.I.isRegistered<GetContactByIdUsecase>()) {
    instance.registerLazySingleton(
        () => GetContactByIdUsecase(repository: instance<ContactRepository>()));
  }
}

Future<void> InitOrder() async {
  //Blocs

  if (!GetIt.I.isRegistered<CreateOrderBloc>()) {
    instance.registerFactory(
      () => CreateOrderBloc(createOrderUsecase: instance<CreateOrderUsecase>()),
    );
  }

  if (!GetIt.I.isRegistered<CurrenciesBloc>()) {
    instance.registerFactory(
      () => CurrenciesBloc(
          getCurrenciesUsecase: instance<GetCurrenciesUsecase>(),
          getTypeOrdersUsecase: instance<GetTypeOrdersUsecase>()),
    );
  }
  if (!GetIt.I.isRegistered<OrdersBloc>()) {
    instance.registerFactory(
      () => OrdersBloc(
          getOrdersUsecase: instance<GetOrdersUsecase>(),
          getOrderDetailsUsecase: instance<GetOrderDetailsUsecase>()),
    );
  }
  if (!GetIt.I.isRegistered<PaymentBloc>()) {
    instance.registerFactory(
      () => PaymentBloc(createPaymentUsecase: instance<CreatePaymentUsecase>()),
    );
  }
  if (!GetIt.I.isRegistered<ConfirmWaitingOrderBloc>()) {
    instance.registerFactory(
      () => ConfirmWaitingOrderBloc(
          confirmWaitingOrderUsecase: instance<ConfirmWaitingOrderUsecase>()),
    );
  }
  if (!GetIt.I.isRegistered<UpdateAttachmentsBloc>()) {
    instance.registerFactory(
      () => UpdateAttachmentsBloc(
          confirmWaitingOrderUsecase: instance<ConfirmWaitingOrderUsecase>(),
          updateAttachmentsUsecase: instance<UpdateAttachmentsUsecase>()),
    );
  }

  if (!GetIt.I.isRegistered<InputGetOrdersCubitCubit>()) {
    instance.registerFactory(
      () => InputGetOrdersCubitCubit(0),
    );
  }

  //repository

  if (!GetIt.I.isRegistered<OrderRepository>()) {
    instance.registerLazySingleton<OrderRepository>(() => OrderRepositoryImpl(
        ordersServiceClient: instance<OrdersServiceClient>(),
        networkInfo: instance<NetworkInfo>()));
  }
  //usecases
  if (!GetIt.I.isRegistered<CreateOrderUsecase>()) {
    instance.registerLazySingleton(
        () => CreateOrderUsecase(repository: instance<OrderRepository>()));
  }

  if (!GetIt.I.isRegistered<GetCurrenciesUsecase>()) {
    instance.registerLazySingleton(
        () => GetCurrenciesUsecase(repository: instance<OrderRepository>()));
  }
  if (!GetIt.I.isRegistered<GetTypeOrdersUsecase>()) {
    instance.registerLazySingleton(
        () => GetTypeOrdersUsecase(repository: instance<OrderRepository>()));
  }
  if (!GetIt.I.isRegistered<GetOrdersUsecase>()) {
    instance.registerLazySingleton(
        () => GetOrdersUsecase(repository: instance<OrderRepository>()));
  }

  if (!GetIt.I.isRegistered<GetOrderDetailsUsecase>()) {
    instance.registerLazySingleton(
        () => GetOrderDetailsUsecase(repository: instance<OrderRepository>()));
  }

  if (!GetIt.I.isRegistered<CreatePaymentUsecase>()) {
    instance.registerLazySingleton(
        () => CreatePaymentUsecase(repository: instance<OrderRepository>()));
  }

  if (!GetIt.I.isRegistered<ConfirmWaitingOrderUsecase>()) {
    instance.registerLazySingleton(() =>
        ConfirmWaitingOrderUsecase(repository: instance<OrderRepository>()));
  }
  if (!GetIt.I.isRegistered<UpdateAttachmentsUsecase>()) {
    instance.registerLazySingleton(() =>
        UpdateAttachmentsUsecase(repository: instance<OrderRepository>()));
  }
}
