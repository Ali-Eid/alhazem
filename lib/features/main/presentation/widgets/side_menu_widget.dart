import 'package:alhazem/core/app/depndency_injection.dart';
import 'package:alhazem/core/constants/assets_manager.dart';
import 'package:alhazem/core/constants/values_manager.dart';
import 'package:alhazem/core/routers/routes_manager.dart';
import 'package:alhazem/features/contacts/presentation/blocs/lead_contact_bloc/lead_contact_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/color_manager.dart';
import '../../../../core/widgets/alert_dialog_widget.dart';
import '../../../splash/presentations/blocs/app_bloc/app_bloc.dart';

class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        shadowColor: ColorManager.secondary,
        elevation: 15,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(AppSizeR.s10),
                bottomEnd: Radius.circular(AppSizeR.s10)),
            side:
                BorderSide(color: ColorManager.secondary, width: AppSizeW.s1)),
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
                  DrawereExpandableListTile(
                    title: "الزبائن",
                    svgSrc: IconAssets.contactIcon,
                    children: [
                      InkWell(
                        onTap: () {
                          context.goNamed(RoutesNames.createContactRoute);
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: AppSizeH.s15, horizontal: AppSizeW.s35),
                          child: Row(
                            children: [
                              Image.asset(ImageAssets.plane,
                                  height: AppSizeH.s22),
                              SizedBox(width: AppSizeW.s4),
                              Text(
                                "انشاء مسافر",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: AppSizeSp.s16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context.goNamed(RoutesNames.createOfficeRoute);
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: AppSizeH.s15, horizontal: AppSizeW.s35),
                          child: Row(
                            children: [
                              Image.asset(
                                ImageAssets.office,
                                height: AppSizeH.s22,
                              ),
                              SizedBox(width: AppSizeW.s4),
                              Text(
                                "انشاء مكتب",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: AppSizeSp.s16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  DrawerListTile(
                    title: "الطلبات",
                    svgSrc: IconAssets.ordersIcon,
                    press: () {
                      context.goNamed(RoutesNames.ordersRoute);
                    },
                  ),
                  // DrawerListTile(
                  //   title: "الاعدادات",
                  //   svgSrc: IconAssets.settingIcon,
                  //   press: () {
                  //     context.goNamed(RoutesNames.settingsRoute);
                  //   },
                  // ),
                ],
              ),
            ),
            BlocConsumer(
              listener: (context, AppState state) {
                state.mapOrNull(
                  auth: (value) {
                    initAuth();
                    context
                        .read<LeadContactBloc>()
                        .add(const LeadContactEvent.logoutLead());
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
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialogWidget(
                              title: "تسجيل الخروج",
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "هل انت متأكد من تسجيل الخروج ؟",
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                  SizedBox(height: AppSizeH.s15),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                            onPressed: () {
                                              context
                                                  .read<AppBloc>()
                                                  .add(const AppEvent.logout());
                                              context.pop();
                                            },
                                            child: const Text("نعم")),
                                      ),
                                      SizedBox(width: AppSizeW.s6),
                                      Expanded(
                                        child: ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    WidgetStateProperty.all(
                                                        ColorManager.white),
                                                shape: WidgetStateProperty.all(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    AppSizeR
                                                                        .s7),
                                                        side: BorderSide(
                                                            color: ColorManager
                                                                .primary)))),
                                            onPressed: () {
                                              context.pop();
                                            },
                                            child: Text(
                                              "لا",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall,
                                            )),
                                      )
                                    ],
                                  )
                                ],
                              )),
                        );
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
    this.isSvg = true,
  });

  final String title, svgSrc;
  final VoidCallback press;
  final bool isSvg;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppSizeW.s15, vertical: AppSizeH.s20),
        child: Row(
          children: [
            isSvg
                ? SvgPicture.asset(
                    svgSrc,
                    colorFilter:
                        const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    height: AppSizeH.s22,
                  )
                : Image.asset(
                    svgSrc,
                    height: AppSizeH.s22,
                  ),
            SizedBox(width: AppSizeW.s4),
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: AppSizeSp.s16),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawereExpandableListTile extends StatefulWidget {
  final String title, svgSrc;
  final List<Widget> children;
  const DrawereExpandableListTile({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.children,
  });

  @override
  State<DrawereExpandableListTile> createState() =>
      _DrawereExpandableListTileState();
}

class _DrawereExpandableListTileState extends State<DrawereExpandableListTile> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            context.goNamed(RoutesNames.contactsRoute);
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppSizeW.s15, vertical: AppSizeH.s20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      widget.svgSrc,
                      colorFilter:
                          const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                      height: AppSizeH.s22,
                    ),
                    SizedBox(width: AppSizeW.s4),
                    Text(
                      widget.title,
                      style: TextStyle(
                          color: Colors.black, fontSize: AppSizeSp.s16),
                    ),
                  ],
                ),
                Icon(isExpanded
                    ? Icons.arrow_drop_up_outlined
                    : Icons.arrow_drop_down_outlined)
              ],
            ),
          ),
        ),
        isExpanded
            ? Column(
                children: widget.children,
              )
            : const SizedBox()
      ],
    );
  }
}
