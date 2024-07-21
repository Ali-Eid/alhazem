import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/constants/values_manager.dart';

class LoginFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final String? hintText;
  final String? labelText;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefixIcon;

  const LoginFieldWidget({
    super.key,
    required this.controller,
    required this.keyboardType,
    this.validator,
    required this.obscureText,
    this.hintText,
    this.labelText,
    this.inputFormatters,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyMedium,
      inputFormatters: inputFormatters,
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      obscureText: obscureText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: labelText,
        // hintText: hintText, // Set hint text
      ),
    );
  }
}
