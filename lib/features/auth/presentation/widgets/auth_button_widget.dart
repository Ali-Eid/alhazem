import 'package:alhazem/core/constants/values_manager.dart';
import 'package:flutter/material.dart';

class AuthButtonWidget extends StatefulWidget {
  final Color? backgroundColor;
  final void Function() onPressed;
  final String title;

  const AuthButtonWidget(
      {super.key,
      this.backgroundColor = Colors.black,
      required this.onPressed,
      required this.title});

  @override
  State<AuthButtonWidget> createState() => _AuthButtonWidgetState();
}

class _AuthButtonWidgetState extends State<AuthButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
          padding: WidgetStatePropertyAll(EdgeInsets.all(AppSizeW.s4)),
          backgroundColor: WidgetStatePropertyAll(widget.backgroundColor),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizeR.s8)))),
      child: Text(
        widget.title,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
