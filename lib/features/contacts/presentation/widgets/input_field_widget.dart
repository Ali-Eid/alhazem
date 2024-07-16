import 'package:alhazem/core/constants/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final String? hintText;
  final String? labelText;
  final bool? isReadOnly;
  final List<TextInputFormatter>? inputFormatters;
  final Function()? onTap;

  const InputFieldWidget({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.obscureText = false,
    this.hintText,
    this.labelText,
    this.inputFormatters,
    this.isReadOnly,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s8),
      child: SizedBox(
        width: AppSizeW.s250,
        child: TextFormField(
          onTap: isReadOnly ?? false ? onTap : null,
          readOnly: isReadOnly ?? false,
          style: Theme.of(context).textTheme.bodyMedium,
          inputFormatters: inputFormatters,
          controller: controller,
          keyboardType: keyboardType,
          validator: validator,
          obscureText: obscureText,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            labelText: labelText,
            // hintText: hintText, // Set hint text
          ),
        ),
      ),
    );
  }
}
