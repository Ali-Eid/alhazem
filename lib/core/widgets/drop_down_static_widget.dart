import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../bases/models/static_models/static_model.dart';
import '../constants/color_manager.dart';
import '../constants/values_manager.dart';

class DropDownStaticWidget extends StatefulWidget {
  final List<StaticModel> values;
  final String hintText;
  final StaticModel? selectedValue;
  final void Function(StaticModel?)? onChanged;
  const DropDownStaticWidget(
      {super.key,
      required this.values,
      required this.hintText,
      this.onChanged,
      this.selectedValue});

  @override
  State<DropDownStaticWidget> createState() => _DropDownStaticWidgetState();
}

class _DropDownStaticWidgetState extends State<DropDownStaticWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<StaticModel>(
        isExpanded: true,
        // isDense: true,
        hint: Text(
          widget.hintText,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        items: widget.values
            .map((item) => DropdownMenuItem<StaticModel>(
                  value: item,
                  child: Text(
                    item.name,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ))
            .toList(),
        value: widget.selectedValue,
        onChanged: widget.onChanged,
        buttonStyleData: ButtonStyleData(
          decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.circular(AppSizeR.s12)),
          padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
          height: AppSizeH.s40,
          width: AppSizeW.s140,
        ),
        dropdownStyleData: DropdownStyleData(
            decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(AppSizeR.s12),
        )),
        menuItemStyleData: MenuItemStyleData(
          height: AppSizeH.s50,
        ),
      ),
    );
  }
}
