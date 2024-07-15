import 'package:alhazem/core/app/depndency_injection.dart';
import 'package:alhazem/core/constants/assets_manager.dart';
import 'package:alhazem/core/constants/values_manager.dart';
import 'package:alhazem/core/routers/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../splash/presentations/blocs/app_bloc/app_bloc.dart';

class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        shape: const RoundedRectangleBorder(),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  DrawerHeader(
                    padding: EdgeInsets.zero,
                    child: SvgPicture.asset(
                      ImageAssets.logo,
                      fit: BoxFit.fill,
                    ),
                  ),
                  DrawerListTile(
                    title: "خدماتنا",
                    svgSrc: IconAssets.serviceIcon,
                    press: () {
                      context.goNamed(RoutesNames.typeServicesRoute);
                    },
                  ),
                  DrawerListTile(
                    title: "الزبائن",
                    svgSrc: IconAssets.contactIcon,
                    press: () {
                      context.goNamed(RoutesNames.contactsRoute);
                    },
                  ),
                  DrawerListTile(
                    title: "الطلبات",
                    svgSrc: IconAssets.ordersIcon,
                    press: () {
                      context.goNamed(RoutesNames.ordersRoute);
                    },
                  ),
                  DrawerListTile(
                    title: "الاعدادات",
                    svgSrc: IconAssets.settingIcon,
                    press: () {
                      context.goNamed(RoutesNames.settingsRoute);
                    },
                  ),
                ],
              ),
            ),
            BlocConsumer(
              listener: (context, AppState state) {
                state.mapOrNull(
                  auth: (value) {
                    initAuth();
                    context.goNamed(RoutesNames.loginRoute);
                  },
                );
              },
              bloc: context.read<AppBloc>(),
              builder: (context, AppState state) {
                return state.maybeMap(
                  loading: (value) {
                    return const LinearProgressIndicator();
                  },
                  orElse: () {
                    return DrawerListTile(
                      title: "تسجيل الخروج",
                      svgSrc: IconAssets.settingIcon,
                      press: () {
                        context.read<AppBloc>().add(const AppEvent.logout());
                      },
                    );
                  },
                );
              },
            ),
          ],
        ));
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  });

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
        height: AppSizeH.s22,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontSize: AppSizeSp.s16),
      ),
    );
  }
}
