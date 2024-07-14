import 'package:alhazem/core/constants/values_manager.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DropDownWidget extends StatefulWidget {
  final List<String> items;
  final String hintText;
  final String? labelText;
  final FormFieldValidator<String>? validator;

  const DropDownWidget({
    super.key,
    required this.items,
    required this.hintText,
    this.labelText,
    this.validator,
  });

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      isExpanded: true,
      decoration: InputDecoration(
        labelText: widget.labelText, // Set label text
        labelStyle: const TextStyle(color: Colors.grey), // Style the label
        hintText: widget.hintText, // Set hint text
        hintStyle: TextStyle(color: Colors.grey.shade400),
        contentPadding: EdgeInsets.symmetric(
            vertical: AppSizeW.s4, horizontal: AppSizeW.s12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s6),
          borderSide: const BorderSide(color: Colors.grey), // Outline color
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s6),
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor), // Focus color
        ),
        // Add more decoration..
      ),
      // hint: Text(
      //   widget.hintText,
      //   style: TextStyle(fontSize: AppSizeSp.s14),
      // ),
      items: widget.items
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: TextStyle(
                    fontSize: AppSizeSp.s14,
                  ),
                ),
              ))
          .toList(),
      validator: widget.validator,
      onChanged: (value) {
        //Do something when selected item is changed.
      },
      onSaved: (value) {
        selectedValue = value.toString();
      },
      iconStyleData: IconStyleData(
        icon: const Icon(
          Icons.arrow_drop_down,
          color: Colors.black45,
        ),
        iconSize: AppSizeSp.s24,
      ),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizeR.s6),
        ),
      ),
      menuItemStyleData: MenuItemStyleData(
        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
      ),
    );
  }
}
