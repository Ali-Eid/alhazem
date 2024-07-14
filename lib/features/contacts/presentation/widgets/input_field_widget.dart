import 'package:alhazem/core/constants/values_manager.dart';
import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final String? hintText;
  final String? labelText;

  const InputFieldWidget({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.obscureText = false,
    this.hintText,
    this.labelText,
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
        contentPadding: EdgeInsets.symmetric(
            vertical: AppSizeW.s4, horizontal: AppSizeW.s12),
        labelText: labelText, // Set label text
        labelStyle: const TextStyle(color: Colors.grey), // Style the label
        hintText: hintText, // Set hint text
        hintStyle: TextStyle(color: Colors.grey.shade400), // Style the hint
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s6),
          borderSide: const BorderSide(color: Colors.grey), // Outline color
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s6),
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor), // Focus color
        ),
      ),
    );
  }
}
   // TextFormField(
    //   controller: controller,
    //   keyboardType: keyboardType,
    //   validator: validator,
    //   obscureText: obscureText,
    //   autovalidateMode: AutovalidateMode.onUserInteraction,
    //   decoration: InputDecoration(
    //       prefixIcon: prefixIcon,
    //       enabledBorder: const OutlineInputBorder(
    //         borderSide: BorderSide(
    //           color: Color.fromRGBO(74, 77, 84, 0.2),
    //         ),
    //       ),
    //       focusedBorder: OutlineInputBorder(
    //         borderSide: BorderSide(
    //           color: Theme.of(context).primaryColor,
    //         ),
    //       ),
    //       errorStyle: const TextStyle(height: 0, color: Colors.black),
    //       errorBorder: OutlineInputBorder(
    //         borderSide: BorderSide(
    //           color: Theme.of(context).colorScheme.error,
    //         ),
    //       ),
    //       focusedErrorBorder: OutlineInputBorder(
    //         //gapPaddings: 16,
    //         borderSide: BorderSide(
    //           color: Theme.of(context).colorScheme.error,
    //         ),
    //       ),
    //       hintText: hintText,
    //       hintStyle: Theme.of(context)
    //           .textTheme
    //           .bodyLarge!
    //           .copyWith(color: Colors.grey),
    //       errorText: errorText),
    // );
 