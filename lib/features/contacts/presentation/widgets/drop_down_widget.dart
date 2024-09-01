import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/core/constants/values_manager.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DropDownWidget extends StatefulWidget {
  final List<StaticModel> items;
  final String? labelText;
  final StaticModel? selectedValue;
  final String? hintSearchText;
  final bool? notSearch;
  final Function(StaticModel?)? onChanged;
  final FormFieldValidator<StaticModel>? validator;

  const DropDownWidget({
    super.key,
    required this.items,
    this.labelText,
    this.validator,
    this.onChanged,
    this.selectedValue,
    this.hintSearchText,
    this.notSearch,
  });

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<StaticModel>(
      isExpanded: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: widget.labelText, // Set label text

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
        ),
        // Add more decoration..
      ),
      hint: widget.selectedValue != null
          ? Text(
              widget.selectedValue?.name ?? "${widget.labelText}",
            )
          : null,
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
        maxHeight: AppSizeH.s500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizeR.s4),
        ),
      ),
      dropdownSearchData: (widget.notSearch ?? true)
          ? DropdownSearchData(
              searchController: textEditingController,
              searchInnerWidgetHeight: AppSizeH.s50,
              searchInnerWidget: Container(
                height: AppSizeH.s60,
                padding: EdgeInsetsDirectional.only(
                  top: AppSizeH.s8,
                  bottom: AppSizeH.s4,
                  start: AppSizeW.s8,
                  end: AppSizeW.s8,
                ),
                child: TextFormField(
                    // expands: true,
                    maxLines: 1,
                    controller: textEditingController,
                    style: Theme.of(context).textTheme.headlineLarge,
                    decoration: InputDecoration(
                        hintText: widget.hintSearchText,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 0, horizontal: AppSizeW.s6))),
              ),
              searchMatchFn: (item, searchValue) {
                return item.value!.name
                    .toString()
                    .toLowerCase()
                    .contains(searchValue.toLowerCase());
              },
            )
          : null,
      onMenuStateChange: (widget.notSearch ?? true)
          ? (isOpen) {
              if (!isOpen) {
                textEditingController.clear();
              }
            }
          : null,
      menuItemStyleData: MenuItemStyleData(
        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
      ),
    );
  }
}
