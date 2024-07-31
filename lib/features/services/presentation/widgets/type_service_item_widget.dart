import 'package:alhazem/core/constants/assets_manager.dart';
import 'package:alhazem/core/constants/color_manager.dart';
import 'package:alhazem/features/contacts/presentation/blocs/lead_contact_bloc/lead_contact_bloc.dart';
import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/routers/routes_manager.dart';
import '../../../../core/widgets/toast.dart';
import '../../domain/models/type_service_model/type_service_model.dart';

class TypeServiceItemWidget extends StatelessWidget {
  final TypeServiceModel model;
  const TypeServiceItemWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.read<LeadContactBloc>(),
      builder: (context, state) {
        return InkWell(
          borderRadius: BorderRadius.circular(AppSizeR.s15),
          onTap: context.read<LeadContactBloc>().leadId != null
              ? () {
                  context.goNamed(RoutesNames.servicesRoute, pathParameters: {
                    "typeId": model.id.toString(),
                    "typeName": model.name
                  });
                }
              : () {
                  showToast(
                      context: context,
                      message: "الرجاء انشاء عميل اولاً",
                      type: ToastificationType.error);
                },
          child: Padding(
            padding: EdgeInsets.all(AppSizeW.s8),
            child: Container(
              padding: EdgeInsets.all(AppSizeW.s8),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: AppSizeR.s3,
                      spreadRadius: AppSizeR.s3,
                      color: Colors.grey.withOpacity(.3))
                ],
                borderRadius: BorderRadius.circular(AppSizeR.s15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Expanded(
                  //     flex: 3,
                  //     child: Container(
                  //       width: double.infinity,
                  //       decoration: BoxDecoration(
                  //           image: DecorationImage(
                  //             image: FastCachedImageProvider(model.image),
                  //             fit: BoxFit.fill,
                  //           ),
                  //           borderRadius: BorderRadius.circular(AppSizeR.s10)),
                  //     )),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppSizeR.s10)),
                      child: FastCachedImage(
                        url: model.image,
                        fit: BoxFit.cover,
                        fadeInDuration: const Duration(seconds: 1),
                        errorBuilder: (context, exception, stacktrace) {
                          return SvgPicture.asset(ImageAssets.logo,
                              colorFilter: ColorFilter.mode(
                                  Colors.grey.shade500, BlendMode.srcIn));
                        },
                        loadingBuilder: (context, progress) {
                          return Center(
                            child: CircularProgressIndicator(
                                value: progress.progressPercentage.value),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: AppSizeH.s5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: AppSizeH.s5),
                      Text(
                        model.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: AppSizeSp.s14,
                        ),
                        maxLines: 2,
                      ),
                      SizedBox(height: AppSizeH.s6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Tooltip(
                            message: "استعراض",
                            child: IconButton(
                              onPressed: context
                                          .read<LeadContactBloc>()
                                          .leadId !=
                                      null
                                  ? () {
                                      context.goNamed(RoutesNames.servicesRoute,
                                          pathParameters: {
                                            "typeId": model.id.toString(),
                                            "typeName": model.name
                                          });
                                    }
                                  : () {
                                      showToast(
                                          context: context,
                                          message: "الرجاء انشاء عميل اولاً",
                                          type: ToastificationType.error);
                                    },
                              icon: Icon(
                                Icons.arrow_circle_left_outlined,
                                color: Colors.black.withOpacity(.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
