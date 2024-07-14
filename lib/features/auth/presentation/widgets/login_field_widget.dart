import 'package:flutter/material.dart';

class LoginFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final Widget? prefixIcon;
  final String? hintText;
  final String? errorText;

  const LoginFieldWidget({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.obscureText = false,
    this.prefixIcon,
    this.hintText,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      obscureText: obscureText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(74, 77, 84, 0.2),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            //gapPadding: 16,
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
          errorStyle: const TextStyle(height: 0, color: Colors.black),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            //gapPaddings: 16,
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
          hintText: hintText,
          hintStyle: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.grey),
          errorText: errorText),
    );
  }
}
