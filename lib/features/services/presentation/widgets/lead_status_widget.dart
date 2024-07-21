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
        return Row(children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppSizeW.s23, vertical: AppSizeH.s15),
            child: context.read<LeadContactBloc>().leadId == null
                ? ElevatedButton.icon(
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
                  )
                : ElevatedButton.icon(
                    onPressed: () {
                      print(context.read<LeadContactBloc>().leadId);
                      context
                          .read<LeadContactBloc>()
                          .add(const LeadContactEvent.logoutLead());
                    },
                    label: const Text("الغاء العميل"),
                    icon: const Icon(Icons.add),
                  ),
          ),
        ]);
      },
    );
  }
}
