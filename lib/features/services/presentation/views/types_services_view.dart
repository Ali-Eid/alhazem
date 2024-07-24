import 'package:alhazem/core/constants/color_manager.dart';
import 'package:alhazem/core/constants/values_manager.dart';
import 'package:alhazem/core/widgets/alert_dialog_widget.dart';
import 'package:alhazem/core/widgets/toast.dart';
import 'package:alhazem/features/contacts/domain/models/input_lead_model/input_lead_model.dart';
import 'package:alhazem/features/services/presentation/blocs/service_bloc/service_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';
import '../../../../core/app/depndency_injection.dart';
import '../../../../core/constants/assets_manager.dart';
import '../widgets/content_create_lead_dialog.dart';
import '../widgets/lead_status_widget.dart';
import '../widgets/type_service_item_widget.dart';

class TypesServicesView extends StatefulWidget {
  const TypesServicesView({super.key});

  @override
  State<TypesServicesView> createState() => _TypesServicesViewState();
}

class _TypesServicesViewState extends State<TypesServicesView> {
  late ServiceBloc serviceBloc;

  @override
  void initState() {
    serviceBloc = instance<ServiceBloc>()
      ..add(const ServiceEvent.getTypeServices());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: serviceBloc,
      builder: (context, ServiceState state) {
        return state.maybeMap(
          orElse: () {
            return const SizedBox();
          },
          loading: (value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          loadedServicesTypes: (value) {
            return value.types.isEmpty
                ? Center(
                    child: EmptyWidget(
                      title: "لا يوجد فئات مدخلة",
                      onPressed: () {
                        serviceBloc.add(const ServiceEvent.getTypeServices());
                      },
                    ),
                  )
                : Column(
                    children: [
                      ///section for add lead before explore the services
                      const LeadStatusWidget(),
                      Expanded(
                        child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: value.types.length,
                          padding:
                              EdgeInsets.symmetric(horizontal: AppSizeW.s15),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            return TypeServiceItemWidget(
                              model: value.types[index],
                            );
                          },
                        ),
                      ),
                    ],
                  );
          },
          error: (value) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(value.message),
                  IconButton(
                      onPressed: () {
                        serviceBloc.add(const ServiceEvent.getTypeServices());
                      },
                      icon: const Icon(Icons.refresh))
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class EmptyWidget extends StatelessWidget {
  final String title;
  final String? subTitle;
  final IconData? iconData;
  final void Function()? onPressed;
  const EmptyWidget({
    super.key,
    required this.title,
    this.onPressed,
    this.subTitle,
    this.iconData,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SvgPicture.asset(ImageAssets.logo,
            height: AppSizeW.s330,
            width: AppSizeW.s330,
            fit: BoxFit.fill,
            colorFilter:
                ColorFilter.mode(Colors.grey.shade500, BlendMode.srcIn)),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                // Visibility(
                //     visible: subTitle != null,
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisSize: MainAxisSize.min,
                //       children: [
                //         SizedBox(height: AppSizeH.s10),
                //         Text(
                //           "$subTitle",
                //           style: Theme.of(context).textTheme.bodyMedium,
                //         ),
                //       ],
                //     ))
              ],
            ),
            Tooltip(
              message: subTitle ?? "إعادة تحميل",
              child: IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    iconData ?? Icons.refresh,
                    color: ColorManager.primary,
                    size: AppSizeSp.s25,
                  )),
            )
          ],
        )
      ],
    );
  }
}
