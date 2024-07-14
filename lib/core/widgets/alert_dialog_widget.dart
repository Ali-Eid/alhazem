import 'package:flutter/material.dart';

import '../constants/color_manager.dart';
import '../constants/values_manager.dart';

class AlertDialogWidget extends StatelessWidget {
  final String title;
  final Widget content;
  final EdgeInsets? insetPadding;
  final List<Widget>? actions;
  const AlertDialogWidget(
      {super.key,
      required this.title,
      required this.content,
      this.actions,
      this.insetPadding});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
      insetPadding: insetPadding,
      content: content,
      actions: actions,
    );
  }
}

class DialogWidget extends StatelessWidget {
  final String title;
  final Widget content;
  const DialogWidget({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(AppSizeW.s120),
      shadowColor: ColorManager.shadow,
      backgroundColor: ColorManager.background,
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s15)),
      child: Padding(
        padding: EdgeInsets.all(AppSizeW.s25),
        child: Column(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizeH.s15),
            content
          ],
        ),
      ),
    );
  }
}
