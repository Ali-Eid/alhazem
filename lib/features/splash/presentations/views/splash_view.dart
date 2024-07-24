import 'package:alhazem/core/constants/assets_manager.dart';
import 'package:alhazem/core/constants/color_manager.dart';
import 'package:alhazem/core/constants/values_manager.dart';
import 'package:alhazem/core/routers/routes_manager.dart';
import 'package:alhazem/features/splash/presentations/blocs/app_bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app/depndency_injection.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    context.read<AppBloc>().add(const AppEvent.appHome());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: context.read<AppBloc>(),
      listener: (context, AppState state) {
        state.mapOrNull(
          auth: (value) async {
            await initAuth();
            await Future.delayed(
              const Duration(seconds: 1),
              () {
                context.goNamed(RoutesNames.loginRoute);
              },
            );
          },
          home: (value) async {
            await initServices();
            await Future.delayed(
              const Duration(seconds: 1),
              () {
                context.goNamed(RoutesNames.typeServicesRoute);
              },
            );
          },
        );
      },
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(ImageAssets.logo,
                  height: AppSizeH.s400,
                  width: AppSizeH.s400,
                  fit: BoxFit.fill),
              SizedBox(height: AppSizeH.s10),
              Text(
                "الحازم",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: ColorManager.shipGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: AppSizeSp.s22),
              )
            ],
          ),
        ),
      ),
    );
  }
}
