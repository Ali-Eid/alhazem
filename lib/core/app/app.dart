import 'package:alhazem/core/themes/theme_manager.dart';
import 'package:alhazem/features/main/presentation/blocs/search_bloc/search_bloc.dart';
import 'package:alhazem/features/orders/presentation/blocs/currencies_bloc/currencies_bloc.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';
import '../../features/contacts/presentation/blocs/lead_contact_bloc/lead_contact_bloc.dart';
import '../../features/contacts/presentation/blocs/static_bloc/static_bloc.dart';
import '../../features/splash/presentations/blocs/app_bloc/app_bloc.dart';
import '../cache/app_preferences.dart';
import '../routers/routes_manager.dart';
import 'depndency_injection.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppPreferences _appPreferences = instance<AppPreferences>();
  @override
  void didChangeDependencies() {
    _appPreferences.getLocal().then((local) => {context.setLocale(local)});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => instance<AppBloc>(),
        ),
        BlocProvider(
          create: (context) => instance<LeadContactBloc>(),
        ),
        BlocProvider(
          create: (context) => instance<SearchBloc>(),
        ),
        BlocProvider(
          create: (context) => instance<StaticBloc>()
            ..add(const StaticEvent.getAttachmentsType())
            ..add(const StaticEvent.getCountries())
            ..add(const StaticEvent.getOffices()),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => instance<CurrenciesBloc>()
            ..add(const CurrenciesEvent.getCurrencies())
            ..add(const CurrenciesEvent.getOrderTypes()),
          lazy: false,
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(1440, 1024),
        builder: (context, child) => ThemeProvider(
          initTheme: instance<AppPreferences>().getTheme(),
          builder: (p0, theme) => ToastificationWrapper(
            child: MaterialApp.router(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              title: 'Al-Hazem',
              themeMode: theme.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
              theme: theme,
              routerConfig: AppRouter.router,
            ),
          ),
        ),
      ),
    );
  }
}
