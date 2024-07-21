import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/values_manager.dart';
import '../../../contacts/domain/models/input_lead_model/input_lead_model.dart';
import '../../../contacts/presentation/blocs/lead_contact_bloc/lead_contact_bloc.dart';
import '../../../contacts/presentation/widgets/input_field_widget.dart';

class ContentCreateLeadDialog extends StatefulWidget {
  const ContentCreateLeadDialog({
    super.key,
  });

  @override
  State<ContentCreateLeadDialog> createState() =>
      _ContentCreateLeadDialogState();
}

class _ContentCreateLeadDialogState extends State<ContentCreateLeadDialog> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InputFieldWidget(
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return "الأسم لا يمكن ان يكون فارغ";
                }
                return null;
              },
              labelText: "الأسم",
              controller: nameController),
          SizedBox(height: AppSizeH.s15),
          InputFieldWidget(
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return "رقم الهاتف لا يمكن ان يكون فارغ";
                }
                return null;
              },
              labelText: "رقم الهاتف",
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: phoneController),
          SizedBox(height: AppSizeH.s15),
          BlocBuilder(
            bloc: context.read<LeadContactBloc>(),
            builder: (context, LeadContactState state) {
              return state.maybeMap(
                loading: (value) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                orElse: () {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          // context.pop();
                        },
                        child: const Text('الغاء'),
                      ),
                      SizedBox(width: AppSizeW.s15),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<LeadContactBloc>().add(
                                  LeadContactEvent.createLead(
                                    input: InputLeadModel(
                                        name: nameController.text,
                                        phoneNumber: phoneController.text),
                                  ),
                                );
                          }
                        },
                        child: const Text('انشاء'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
