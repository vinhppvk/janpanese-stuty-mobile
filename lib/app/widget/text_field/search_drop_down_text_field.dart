import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asset/icon_asset.dart';
import '../../theme/style/color.dart';
import '../../theme/style/font_style.dart';


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
    this.menuItemBuilder,
    this.height = 56.0,
    this.width,
  });

  final String? title;
  final String? hint;
  final String? searchHint;
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

  final bool Function(DropdownMenuItem<T>, String)? searchMatchFn;

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
        items: List<DropdownMenuItem<T>>.generate(items.length,
            (int index) => _buildDropdownMenuItem(context, index)),
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
            )),
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
          maxHeight: 304,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        iconStyleData: IconStyleData(
          icon: SvgPicture.asset(IconAsset.caretDown),
          openMenuIcon: SvgPicture.asset(IconAsset.caretUp),
        ),
        dropdownSearchData: DropdownSearchData<T>(
          searchController: controller,
          searchInnerWidgetHeight: 64.0,
          searchInnerWidget: _buildSearchTextField(context),
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
              : const Border(
                  bottom: BorderSide(
                    width: 1.5,
                    color: TColor.grey200,
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

  Widget _buildSearchTextField(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final OutlineInputBorder defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(
        width: 1.5,
        color: theme.dividerColor,
      ),
    );

    final OutlineInputBorder focusBorder = defaultBorder.copyWith(
        borderSide: defaultBorder.borderSide.copyWith(
      color: theme.colorScheme.primary,
    ));

    final OutlineInputBorder errorBorder = defaultBorder.copyWith(
        borderSide: defaultBorder.borderSide.copyWith(
      color: theme.colorScheme.error,
    ));

    return Container(
      height: 64.0,
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        style: TTextStyle.getBodyMedium(),
        decoration: InputDecoration(
          hintText: searchHint,
          enabledBorder: defaultBorder,
          focusedBorder: focusBorder,
          disabledBorder: defaultBorder,
          focusedErrorBorder: errorBorder,
          errorBorder: errorBorder,
        ),
      ),
    );
  }
}
