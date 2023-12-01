import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../core/config/theme/custom_themes/dropdown_button2.dart';
import '../../core/config/theme/style/font_style.dart';

class SearchDropDownTextField<T> extends StatelessWidget {
  const SearchDropDownTextField({
    super.key,
    this.title,
    this.controller,
    required this.items,
    this.selectedValue,
    this.onChanged,
    this.menuItemText,
    this.searchMatchFn,
    this.hint,
    this.searchHint,
  });

  final String? title;
  final TextEditingController? controller;
  final List<T> items;
  final T? selectedValue;
  final Function(T? value)? onChanged;
  final String Function(T item)? menuItemText;
  final bool Function(DropdownMenuItem<T>, String)? searchMatchFn;
  final String? hint;
  final String? searchHint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (title != null)
          Text(
            title!,
            style: TTextStyle.getBodyMedium(fontWeight: TFontWeight.medium),
          ),
        const SizedBox(
          height: 8.0,
        ),
        _buildTextField(context),
      ],
    );
  }

  Widget _buildTextField(BuildContext context) {
    Widget? hint;

    if (this.hint != null) {
      hint = Text(
        this.hint!,
        style: TTextStyle.getBodyMedium(
          fontWeight: TFontWeight.light,
        ),
      );
    }

    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField2<T>(
        isExpanded: true,
        hint: hint,
        items: items.map(_buildMenuItem).toList(),
        value: selectedValue,
        onChanged: onChanged,
        decoration: TDropDownButton2.inputDecoration,
        buttonStyleData: TDropDownButton2.buttonStyleData,
        menuItemStyleData: TDropDownButton2.menuItemStyleData,
        iconStyleData: TDropDownButton2.iconStyleData,
        dropdownStyleData: DropdownStyleData(
          padding: EdgeInsets.zero,
          maxHeight: 304,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        dropdownSearchData: DropdownSearchData<T>(
          searchController: controller,
          searchInnerWidgetHeight: 64.0,
          searchInnerWidget: Container(
            height: 64.0,
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controller,
              style: TTextStyle.getBodyMedium(),
              decoration: InputDecoration(
                hintText: searchHint,
              ),
            ),
          ),
          searchMatchFn: searchMatchFn,
        ),
        //This to clear the search value when you close the menu
        onMenuStateChange: (bool isOpen) {
          if (!isOpen) {
            controller?.clear();
          }
        },
      ),
    );
  }

  DropdownMenuItem<T> _buildMenuItem(T item) {
    return DropdownMenuItem<T>(
      value: item,
      child: Text(
        menuItemText?.call(item) ?? item.toString(),
        style: TTextStyle.getBodyMedium(),
      ),
    );
  }
}
