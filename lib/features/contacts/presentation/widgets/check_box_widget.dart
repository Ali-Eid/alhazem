import 'package:alhazem/core/constants/values_manager.dart';
import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  final String label;
  const CheckBoxWidget({super.key, required this.label});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.label,
          style:
              TextStyle(fontSize: AppSizeSp.s14, fontWeight: FontWeight.w500),
        ),
        Checkbox(
          value: _isChecked, // Current selection state
          onChanged: (newValue) {
            setState(() {
              // Update state if using in a Stateful Widget
              _isChecked = newValue;
            });
          },
        ),
      ],
    );
  }
}
