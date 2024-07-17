import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/core/constants/values_manager.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DropDownWidget extends StatefulWidget {
  final List<StaticModel> items;
  final String? labelText;
  final Function(StaticModel?)? onChanged;
  final FormFieldValidator<StaticModel>? validator;

  const DropDownWidget({
    super.key,
    required this.items,
    this.labelText,
    this.validator,
    this.onChanged,
  });

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<StaticModel>(
      isExpanded: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: widget.labelText, // Set label text
      ),
      items: widget.items
          .map((item) => DropdownMenuItem<StaticModel>(
                value: item,
                child: Text(
                  item.name,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ))
          .toList(),
      validator: widget.validator,
      onChanged: widget.onChanged,
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
