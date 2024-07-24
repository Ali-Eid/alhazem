import 'package:alhazem/core/constants/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/constants/values_manager.dart';
import '../../../../core/widgets/alert_dialog_widget.dart';
import '../../../../core/widgets/toast.dart';
import '../../../contacts/presentation/blocs/lead_contact_bloc/lead_contact_bloc.dart';
import 'content_create_lead_dialog.dart';

class LeadStatusWidget extends StatelessWidget {
  const LeadStatusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      listener: (context, LeadContactState state) {
        state.mapOrNull(
          loaded: (value) {
            showToast(context: context, message: value.success.message);
            context.pop();
          },
          error: (value) {
            showToast(
                context: context,
                message: value.message,
                type: ToastificationType.error);
          },
        );
      },
      bloc: context.read<LeadContactBloc>(),
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppSizeW.s23, vertical: AppSizeH.s15),
          child: context.read<LeadContactBloc>().leadId == null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AlertDialogWidget(
                              title: "إنشاء عميل",
                              content: ContentCreateLeadDialog(),
                            );
                            // return const CreatePersonDialog();
                          },
                        );
                      },
                      label: const Text("انشاء عميل "),
                      icon: const Icon(Icons.add),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppSizeW.s25, vertical: AppSizeH.s8),
                      decoration: BoxDecoration(
                          color: ColorManager.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: AppSizeR.s3,
                                spreadRadius: AppSizeR.s3,
                                color: Colors.grey.withOpacity(.3))
                          ],
                          borderRadius: BorderRadius.circular(AppSizeR.s8)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "العميل الحالي :",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: ColorManager.primary),
                          ),
                          SizedBox(width: AppSizeW.s6),
                          Text(
                            "${context.read<LeadContactBloc>().leadName}",
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(color: ColorManager.secondary),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: AppSizeW.s10),
                    ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(ColorManager.error)),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialogWidget(
                              title: "إلغاء العميل",
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "هل انت متأكد من إلغاء العميل الحالي ؟",
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
                                                  .read<LeadContactBloc>()
                                                  .add(const LeadContactEvent
                                                      .logoutLead());
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
                      label: const Text("الغاء العميل"),
                      icon: Baseline(
                          baseline: AppSizeH.s15,
                          baselineType: TextBaseline.alphabetic,
                          child: const Icon(Icons.minimize)),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
