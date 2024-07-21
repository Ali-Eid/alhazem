import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/app/app.dart';
import 'core/app/bloc_observer.dart';
import 'core/app/depndency_injection.dart';
import 'core/localization/language_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  await EasyLocalization.ensureInitialized();
  await FastCachedImageConfig.init(clearCacheAfter: const Duration(days: 1));
  EasyLocalization.logger.enableBuildModes = [];
  await initAppModule();
  await initContact();
  await InitOrder();
  await initAuth();
  Bloc.observer = MyBlocObserver();
  runApp(EasyLocalization(
      supportedLocales: supportedLocales,
      path: ASSETS_PATH_LOCALIZATION,
      child: const MyApp()));
}
