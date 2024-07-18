import 'package:alhazem/features/contacts/presentation/views/contacts_view.dart';
import 'package:alhazem/features/contacts/presentation/views/create_contract_view.dart';
import 'package:alhazem/features/main/presentation/views/main_view.dart';
import 'package:alhazem/features/orders/presentation/views/order_details_view.dart';
import 'package:alhazem/features/orders/presentation/views/orders_view.dart';
import 'package:alhazem/features/services/presentation/views/service_details_view.dart';
import 'package:alhazem/features/services/presentation/views/service_view.dart';
import 'package:alhazem/features/settings/presentation/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/login_view.dart';
import '../../features/contacts/presentation/views/create_office_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/services/presentation/views/types_services_view.dart';
import '../../features/splash/presentations/views/splash_view.dart';

class RoutesNames {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String typeServicesRoute = '/type-services';
  static const String servicesRoute = '/services';
  static const String servicesDetailsRoute = 'services-details';
  static const String contactsRoute = '/contacts';
  static const String createContactRoute = 'create-contact';
  static const String createOfficeRoute = 'create-office';
  static const String ordersRoute = '/orders';
  static const String orderDetailsRoute = 'order-details';
  static const String settingsRoute = '/settings';
}

class RoutesPaths {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String typeServicesRoute = '/type-services';

  static const String servicesRoute = 'services/:typeId/:typeName';
  static const String servicesDetailsRoute = 'services-details/:serviceId';
  static const String contactsRoute = '/contacts';
  static const String createContactRoute = '/create-contact';
  static const String createOfficeRoute = '/create-office';

  static const String ordersRoute = '/orders';
  static const String orderDetailsRoute = 'order-details/:id';
  static const String settingsRoute = '/settings';
}

class NavigationKeys {
  static final shellNavigatorKey = GlobalKey<NavigatorState>();
  static final rootNavigatorKey = GlobalKey<NavigatorState>();
}

class AppRouter {
  static final router = GoRouter(
      // navigatorKey: NavigationKeys.rootNavigatorKey,
      debugLogDiagnostics: true,
      initialLocation: RoutesPaths.splashRoute,
      routes: [
        GoRoute(
          name: RoutesNames.splashRoute,
          path: RoutesPaths.splashRoute,
          builder: (context, state) => const SplashView(),
        ),
        GoRoute(
          name: RoutesNames.loginRoute,
          path: RoutesPaths.loginRoute,
          builder: (context, state) => const LoginView(),
        ),
        ShellRoute(
          navigatorKey: NavigationKeys.shellNavigatorKey,
          pageBuilder: (context, state, child) {
            return CustomTransitionPage(
              transitionDuration: const Duration(milliseconds: 1140),
              child: MainView(child: child),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, -1.0),
                    end: const Offset(0.0, 0.0),
                  ).animate(
                    CurvedAnimation(
                      parent: animation,
                      curve: const Cubic(0.74, 0.01, 0.01, 0.98),
                    ),
                  ),
                  child: child,
                );
              },
            );
          },
          routes: [
            GoRoute(
                name: RoutesNames.typeServicesRoute,
                path: RoutesPaths.typeServicesRoute,
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                    key: state.pageKey,
                    child: const TypesServicesView(),
                  );
                },
                routes: [
                  GoRoute(
                    name: RoutesNames.servicesRoute,
                    path: RoutesPaths.servicesRoute,
                    pageBuilder: (context, state) {
                      return NoTransitionPage(
                        key: state.pageKey,
                        child: ServicesView(
                          typeService: state.pathParameters["typeName"] ?? "",
                          typeServiceId:
                              int.parse(state.pathParameters["typeId"] ?? "0"),
                        ),
                      );
                    },
                  ),
                  GoRoute(
                    name: RoutesNames.servicesDetailsRoute,
                    path: RoutesPaths.servicesDetailsRoute,
                    pageBuilder: (context, state) {
                      return NoTransitionPage(
                          key: state.pageKey,
                          child: ServiceDetailsView(
                            serviceId: int.parse(
                                state.pathParameters["serviceId"] ?? "0"),
                          ));
                    },
                  ),
                ]),
            GoRoute(
              name: RoutesNames.contactsRoute,
              path: RoutesPaths.contactsRoute,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  key: state.pageKey,
                  child: const ContactsView(),
                );
              },
            ),
            GoRoute(
              name: RoutesNames.createContactRoute,
              path: RoutesPaths.createContactRoute,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    key: state.pageKey, child: const CreateContractView());
              },
            ),
            GoRoute(
              name: RoutesNames.createOfficeRoute,
              path: RoutesPaths.createOfficeRoute,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    key: state.pageKey, child: const CreateOfficeView());
              },
            ),
            GoRoute(
                name: RoutesNames.ordersRoute,
                path: RoutesPaths.ordersRoute,
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                    key: state.pageKey,
                    child: const OrdersView(),
                  );
                },
                routes: [
                  GoRoute(
                    name: RoutesNames.orderDetailsRoute,
                    path: RoutesPaths.orderDetailsRoute,
                    pageBuilder: (context, state) {
                      return NoTransitionPage(
                        key: state.pageKey,
                        child: OrderDetailsView(
                          orderId: int.parse(state.pathParameters["id"] ?? "0"),
                        ),
                      );
                    },
                  )
                ]),
            GoRoute(
              name: RoutesNames.settingsRoute,
              path: RoutesPaths.settingsRoute,
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  key: state.pageKey,
                  child: const SettingsView(),
                );
              },
            )
          ],
        )
      ]);
}
