import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

void showToast({
  required BuildContext context,
  required String message,
  ToastificationType type = ToastificationType.success,
  ToastificationStyle style = ToastificationStyle.fillColored,
  Duration duration = const Duration(seconds: 3),
}) {
  toastification.show(
    context: context,
    title: Text(message),
    style: style,
    type: type,
    autoCloseDuration: duration,
  );
}
