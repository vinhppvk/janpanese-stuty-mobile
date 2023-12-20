import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset/icon_asset.dart';
import '../../theme/style/font_style.dart';
import '../../utils/extension/build_context.dart';

class DropDownTextField<T> extends StatelessWidget {
  const DropDownTextField({
    super.key,
    this.title,
    this.controller,
    required this.items,
    this.selectedValue,
    this.onChanged,
    this.menuItemText,
    this.menuItemBuilder,
    this.hint,
    this.height = 56.0,
    this.width,
  });

  final String? title;
  final String? hint;
  final double? height;
  final double? width;
  final TextEditingController? controller;
  final List<T> items;
  final T? selectedValue;
  final Function(T? value)? onChanged;

  /// Map item to DropdownMenuItem display text
  final String Function(T item)? menuItemText;

  /// Custom DropdownMenuItem child, will ignore menuItemText
  final Widget Function(BuildContext, T item)? menuItemBuilder;

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
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField2<T>(
        isExpanded: true,
        hint: hint != null
            ? Text(
                this.hint!,
                style: TTextStyle.getBodyMedium(
                  fontWeight: TFontWeight.light,
                ),
              )
            : null,
        items: List<DropdownMenuItem<T>>.generate(
          items.length,
          (int index) => _buildDropdownMenuItem(context, index),
        ),
        selectedItemBuilder: (BuildContext context) => items
            .map(
              (T item) =>
                  menuItemBuilder?.call(context, item) ?? _buildMenuItem(item),
            )
            .toList(),
        value: selectedValue,
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          constraints: BoxConstraints(
            maxHeight: height ?? 56.0,
            maxWidth: width ?? double.infinity,
          ),
        ),
        buttonStyleData: ButtonStyleData(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          padding: EdgeInsets.zero,
        ),
        dropdownStyleData: DropdownStyleData(
          padding: EdgeInsets.zero,
          maxHeight: 240.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        iconStyleData: IconStyleData(
          icon: SvgPicture.asset(IconAsset.caretDown),
          openMenuIcon: SvgPicture.asset(IconAsset.caretUp),
        ),
      ),
    );
  }

  DropdownMenuItem<T> _buildDropdownMenuItem(BuildContext context, int index) {
    final T item = items[index];
    final bool isLast = index == items.length - 1;

    return DropdownMenuItem<T>(
      value: item,
      child: Container(
        width: double.infinity,
        height: 48.0,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: isLast
              ? null
              : Border(
                  bottom: BorderSide(
                    width: 1.5,
                    color: context.colorScheme.outline,
                  ),
                ),
        ),
        child: menuItemBuilder?.call(context, item) ?? _buildMenuItem(item),
      ),
    );
  }

  Widget _buildMenuItem(T item) {
    return Text(
      menuItemText?.call(item) ?? item.toString(),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TTextStyle.getBodyMedium(),
    );
  }
}
